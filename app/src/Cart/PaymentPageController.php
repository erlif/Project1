<?php

use SilverStripe\Assets\File;
use SilverStripe\Assets\Image;
use SilverStripe\Assets\Upload;
use SilverStripe\Control\Director;
use SilverStripe\Control\HTTPRequest;
use SilverStripe\Dev\Debug;
use SilverStripe\Security\Security;


class PaymentPageController extends PageController
{

    private static $allowed_actions = [
        'Bank',
        'getStatus',
        'method',
        'transaksi',
        'callback',
        'status'

    ];



    public function Bank(HTTPRequest $request)
    {
        $member = Security::getCurrentUser();
        if ($member) {
            $data = $request->postVars();
            // Debug::show($data);

            $order = Order::get()->sort('ID')->last();
            $cod = DataCod::create();
            $cod->MemberID = $member->ID;
            $cod->Nama = $data['Nama'];
            $cod->Number = $data['Number'];
            $cod->Alamat = $data['Alamat'];

            $cod->write();

            $order->DataCodID = $cod->ID;
            $order->MemberID = $member->ID;
            $order->write();


            return $this->customise([
                'Cod' => $cod
            ])->renderWith(["PaymentPage", "Page"]);

            // Debug::show($data);




        } else {
            return $this->redirect(Director::absoluteBaseURL() . '/member');
        }



    }

    public function getStatus(HTTPRequest $request)
    {
        // $payment = PaymentData::get()->last();
        $cod = DataCod::get()->last();

        if ($cod) {
            return json_encode([
                // 'payment' => $payment->Status,
                'cod' => $cod->Status
            ]);
        } else {
            return json_encode(['Status' => 'Error']);
        }
        ;

    }
    public function method(HTTPRequest $request)
    {

        // Set kode merchant anda 
        $merchantCode = "DS20042";
        // Set merchant key anda 
        $apiKey = "7cc9a5871d632c074319fbb5ef4bb60e";
        // catatan: environtment untuk sandbox dan passport berbeda 

        $datetime = "2025-01-25 16:23:08";
        $paymentAmount = 10000;
        $signature = hash('sha256', $merchantCode . $paymentAmount . $datetime . $apiKey);

        $params = array(
            'merchantcode' => $merchantCode,
            'amount' => $paymentAmount,
            'datetime' => $datetime,
            'signature' => $signature
        );

        $params_string = json_encode($params);

        $url = 'https://sandbox.duitku.com/webapi/api/merchant/paymentmethod/getpaymentmethod';

        $ch = curl_init();

        curl_setopt($ch, CURLOPT_URL, $url);
        curl_setopt($ch, CURLOPT_CUSTOMREQUEST, "POST");
        curl_setopt($ch, CURLOPT_POSTFIELDS, $params_string);
        curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
        curl_setopt(
            $ch,
            CURLOPT_HTTPHEADER,
            array(
                'Content-Type: application/json',
                'Content-Length: ' . strlen($params_string)
            )
        );
        curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, FALSE);

        //execute post
        $request = curl_exec($ch);
        $httpCode = curl_getinfo($ch, CURLINFO_HTTP_CODE);

        if ($httpCode == 200) {
            $results = json_decode($request, true);
            // Debug::show($results);
            // die();
            $array = [
                'Data' => $results['paymentFee']
            ];
            return json_encode($array);
        } else {
            $request = json_decode($request);
            $error_message = "Server Error " . $httpCode . " " . $request->Message;
            echo $error_message;
        }
    }
    public function transaksi(HTTPRequest $request)
    {
        $member = Security::getCurrentUser();
        if ($member) {
            $data = $request->postVars();
            $omah = MemberIdentity::get()->last();
            $order = Order::get()->last();
            $cartitems = CartItem::get()->filter(['OrderID' => $order->ID]);



            $Quantity = [];
            foreach ($cartitems as $cartItem) {
                if (!isset($Quantity[$cartItem->Title])) {
                    $Quantity[$cartItem->Title] = 0;
                }
                $Quantity[$cartItem->Title] += $cartItem->Quantity;
            }
            
            $cartTitle = array_keys($Quantity);


            if ($shopObjects = ShopObject::get()->filter(['Title' => $cartTitle])) {
                foreach ($shopObjects as $shopObject) {
                    $title = $shopObject->Title;
                    if (isset($Quantity[$title])) {
                        $shopObject->Stok -= $Quantity[$title];
                        $shopObject->write();
                    }
                }
            }
            if ($shopTitle2 = ShopObject::get()->filter(['Title2' => $cartTitle])) {
                foreach ($shopTitle2 as $shopObject) {
                    $title2 = $shopObject->Title2;
                    if (isset($Quantity[$title2])) {
                        $shopObject->SubStok -= $Quantity[$title2];
                        $shopObject->write();
                    }
                }
            }
            if ($shopTitle3 = ShopObject::get()->filter(['Title3' => $cartTitle])) {
                foreach ($shopTitle3 as $shopObject) {
                    $title3 = $shopObject->Title3;
                    if (isset($Quantity[$title3])) {
                        $shopObject->SubStok2 -= $Quantity[$title3];
                        $shopObject->write();
                    }
                }
            }

            $payment = $data['Payment'];
            // $detail = $omah['AddressDetail'];
            $emails = $data['email'];
            $phone = $data['phone'];
            $total = $data['price'];
            Debug::show($data);

            $merchantCode = 'DS20042'; // dari duitku
            $apiKey = '7cc9a5871d632c074319fbb5ef4bb60e'; // dari duitku
            $paymentAmount = $total;
            $paymentMethod = $payment; // VC = Credit Card
            $merchantOrderId = time() . ''; // dari merchant, unik
            $productDetails = $omah->FullName;
            $email = $emails; // email pelanggan anda
            $phoneNumber = $phone; // nomor telepon pelanggan anda (opsional)
            $additionalParam = ''; // opsional
            $merchantUserInfo = ''; // opsional
            $customerVaName = $omah->FullName; // tampilan nama pada tampilan konfirmasi bank
            $callbackUrl = Director::absoluteBaseURL() . '/callback'; // url untuk callback
            $returnUrl = Director::absoluteBaseURL() . '/payment/status'; // url untuk redirect
            $expiryPeriod = 10; // atur waktu kadaluarsa dalam hitungan menit
            $signature = md5($merchantCode . $merchantOrderId . $paymentAmount . $apiKey);

            // Customer Detail
            $firstName = "John";
            $lastName = "Doe";

            // Address
            $alamat = $omah->AddressDetail;
            $city = $omah->Kota;
            $postalCode = "11530";
            $countryCode = "ID";

            $address = array(
                'firstName' => $firstName,
                'lastName' => $lastName,
                'address' => $alamat,
                'city' => $city,
                'postalCode' => $postalCode,
                'phone' => $phoneNumber,
                'countryCode' => $countryCode
            );

            $customerDetail = array(
                'firstName' => $firstName,
                'lastName' => $lastName,
                'email' => $email,
                'phoneNumber' => $phoneNumber,
                'billingAddress' => $address,
                'shippingAddress' => $address
            );

            foreach ($cartitems as $cartitem) {

                $item1 = array(
                    'name' => $cartitem->Title,
                    'price' => $cartitem->Harga,
                    'quantity' => $cartitem->Quantity
                );
                // Debug::show($item1);
            }


            $params = array(
                'merchantCode' => $merchantCode,
                'paymentAmount' => $paymentAmount,
                'paymentMethod' => $paymentMethod,
                'merchantOrderId' => $merchantOrderId,
                'productDetails' => $productDetails,
                'additionalParam' => $additionalParam,
                'merchantUserInfo' => $merchantUserInfo,
                'customerVaName' => $customerVaName,
                'email' => $email,
                'phoneNumber' => $phoneNumber,
                //'accountLink' => $accountLink,
                //'creditCardDetail' => $creditCardDetail,
                // 'itemDetails' => $itemDetails,
                'item' => $item1,
                'customerDetail' => $customerDetail,
                'callbackUrl' => $callbackUrl,
                'returnUrl' => $returnUrl,
                'signature' => $signature,
                'expiryPeriod' => $expiryPeriod
            );



            $params_string = json_encode($params);
            //echo $params_string;
            $url = 'https://sandbox.duitku.com/webapi/api/merchant/v2/inquiry'; // Sandbox
            // $url = 'https://passport.duitku.com/webapi/api/merchant/v2/inquiry'; // Production
            $ch = curl_init();

            curl_setopt($ch, CURLOPT_URL, $url);
            curl_setopt($ch, CURLOPT_CUSTOMREQUEST, "POST");
            curl_setopt($ch, CURLOPT_POSTFIELDS, $params_string);
            curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
            curl_setopt(
                $ch,
                CURLOPT_HTTPHEADER,
                array(
                    'Content-Type: application/json',
                    'Content-Length: ' . strlen($params_string)
                )
            );
            curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, FALSE);

            //execute post
            $requests = curl_exec($ch);
            $httpCode = curl_getinfo($ch, CURLINFO_HTTP_CODE);

            if ($httpCode == 200) {
                // Debug::show($params);
                $lastorder = LastOrder::create();
                $lastorder->MemberID = $member->ID;
                $lastorder->Invoice = $merchantOrderId;
                $lastorder->CostumerName = $customerVaName;
                $lastorder->Email = $email;
                $lastorder->Phone = $phoneNumber;
                $lastorder->Signature = $signature;
                $lastorder->Total = $total;
                $lastorder->write();
                $order = Order::get()->last();
                $order->LastOrderID = $lastorder->ID;
                $order->write();
                Debug::show($lastorder);
                Debug::show($order);
                // Debug::show($result);
                //header('location: '. $result['paymentUrl']);
                // echo "paymentUrl :". $result['paymentUrl'] . "<br />";
                // echo "merchantCode :". $result['merchantCode'] . "<br />";
                // echo "reference :". $result['reference'] . "<br />";
                // // echo "vaNumber :". $result['vaNumber'] . "<br />";
                // // echo "amount :". $result['amount'] . "<br />";
                // echo "statusCode :". $result['statusCode'] . "<br />";
                // echo "statusMessage :". $result['statusMessage'] . "<br />";
                // return $this->redirect($result['paymentUrl']);
            } else {
                $request = json_decode($requests);
                $error_message = "Server Error " . $httpCode . " " . $request->Message;
                echo $error_message;
            }





            //check
            $lastOrders = LastOrder::get()->filter('MemberID', $member->ID)->last();
            foreach ($lastOrders as $lastOrder) {
                $merchantCode = 'DS20042'; // dari duitku
                $apiKey = '7cc9a5871d632c074319fbb5ef4bb60e'; // dari duitku
                $merchantOrderId = $lastOrder->Invoice; // dari anda (merchant), bersifat unik

                $signature = md5($merchantCode . $merchantOrderId . $apiKey);

                $params = array(
                    'merchantCode' => $merchantCode,
                    'merchantOrderId' => $merchantOrderId,
                    'signature' => $signature
                );

                $params_string = json_encode($params);
                $url = 'https://sandbox.duitku.com/webapi/api/merchant/transactionStatus';
                $ch = curl_init();

                curl_setopt($ch, CURLOPT_URL, $url);
                curl_setopt($ch, CURLOPT_CUSTOMREQUEST, "POST");
                curl_setopt($ch, CURLOPT_POSTFIELDS, $params_string);
                curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
                curl_setopt(
                    $ch,
                    CURLOPT_HTTPHEADER,
                    array(
                        'Content-Type: application/json',
                        'Content-Length: ' . strlen($params_string)
                    )
                );
                curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, FALSE);

                //execute post
                $request = curl_exec($ch);
                $httpCode = curl_getinfo($ch, CURLINFO_HTTP_CODE);

                if ($httpCode == 200) {
                    $results = json_decode($request, true);
                    // print_r($results, false);
                    $getStatus = GetStatus::create();
                    $getStatus->StatusMessage = $results['statusMessage'];
                    $getStatus->LastOrderID = $lastOrder->ID;
                    $getStatus->write();
                    Debug::show($getStatus);

                    // echo "merchantOrderId :" . $results['merchantOrderId'] . "<br />";
                    // echo "reference :" . $results['reference'] . "<br />";
                    // echo "amount :" . $results['amount'] . "<br />";
                    // // echo "fee :" . $results['fee'] . "<br />";
                    // echo "statusCode :" . $results['statusCode'] . "<br />";
                    // echo "statusMessage :" . $results['statusMessage'] . "<br />";
                    // return $this->redirect('http://localhost/pindah/');
                    $result = json_decode($requests, true);
                    return $this->redirect($result['paymentUrl']);

                } else {
                    $request = json_decode($request);
                    $error_message = "Server Error " . $httpCode . " " . $request->Message;
                    echo $error_message;
                }
            }

        } else {
            return $this->redirect(Director::absoluteBaseURL() . '/member');
        }
    }





    public function status(HTTPRequest $request)
    {
        $member = Security::getCurrentUser();
        if ($member) {
            $lastOrders = LastOrder::get()->filter('MemberID', $member->ID)->last();
            foreach ($lastOrders as $lastOrder) {
                $merchantCode = 'DS20042'; // dari duitku
                $apiKey = '7cc9a5871d632c074319fbb5ef4bb60e'; // dari duitku
                $merchantOrderId = $lastOrder->Invoice; // dari anda (merchant), bersifat unik

                $signature = md5($merchantCode . $merchantOrderId . $apiKey);

                $params = array(
                    'merchantCode' => $merchantCode,
                    'merchantOrderId' => $merchantOrderId,
                    'signature' => $signature
                );

                $params_string = json_encode($params);
                $url = 'https://sandbox.duitku.com/webapi/api/merchant/transactionStatus';
                $ch = curl_init();

                curl_setopt($ch, CURLOPT_URL, $url);
                curl_setopt($ch, CURLOPT_CUSTOMREQUEST, "POST");
                curl_setopt($ch, CURLOPT_POSTFIELDS, $params_string);
                curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
                curl_setopt(
                    $ch,
                    CURLOPT_HTTPHEADER,
                    array(
                        'Content-Type: application/json',
                        'Content-Length: ' . strlen($params_string)
                    )
                );
                curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, FALSE);

                //execute post
                $request = curl_exec($ch);
                $httpCode = curl_getinfo($ch, CURLINFO_HTTP_CODE);

                if ($httpCode == 200) {
                    $results = json_decode($request, true);
                    // print_r($results, false);
                    $getStatus = GetStatus::get()->last();
                    $getStatus->StatusMessage = $results['statusMessage'];
                    $getStatus->LastOrderID = $lastOrder->ID;
                    $getStatus->write();
                    Debug::show($getStatus);


                    // echo "merchantOrderId :" . $results['merchantOrderId'] . "<br />";
                    // echo "reference :" . $results['reference'] . "<br />";
                    // echo "amount :" . $results['amount'] . "<br />";
                    // // echo "fee :" . $results['fee'] . "<br />";
                    // echo "statusCode :" . $results['statusCode'] . "<br />";
                    // echo "statusMessage :" . $results['statusMessage'] . "<br />";
                    return $this->redirect(Director::absoluteBaseURL() . '/history-bank');


                } else {
                    $request = json_decode($request);
                    $error_message = "Server Error " . $httpCode . " " . $request->Message;
                    echo $error_message;
                }

            }
        } else {
            return $this->redirect($this->link('http://localhost/pindah/member'));
        }
    }


}