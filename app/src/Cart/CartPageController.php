<?php
use SilverStripe\Assets\File;
use SilverStripe\Assets\Image;
use SilverStripe\Control\Director;
use SilverStripe\Dev\Debug;
use SilverStripe\Control\HTTPRequest;
use SilverStripe\Control\HTTPResponse;
use SilverStripe\ORM\ValidationException;
use SilverStripe\Security\Member;
use SilverStripe\Security\Security;

class CartPageController extends PageController 
{
    private static $allowed_actions = ['handleAddressForm','Province', 'City'];



    // public function Province(HTTPRequest $request){
       
    //     $curl = curl_init();

    //     curl_setopt_array($curl, array(
    //     CURLOPT_URL => "http://api.rajaongkir.com/starter/province",
    //     CURLOPT_RETURNTRANSFER => true,
    //     CURLOPT_ENCODING => "",
    //     CURLOPT_MAXREDIRS => 10,
    //     CURLOPT_TIMEOUT => 30,
    //     CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
    //     CURLOPT_CUSTOMREQUEST => "GET",
    //     CURLOPT_HTTPHEADER => array(
    //         "key: c9ba6f9ee619e3eae6b2b65d64fac437"
    //     ),
    //     ));

    //     $response = curl_exec($curl);
    //     $err = curl_error($curl);

    //     curl_close($curl);

    //     if ($err) {
    //     echo "cURL Error #:" . $err;
    //     } else {
    //      $array_response = json_decode($response,TRUE);
    //      $data_provinsi = $array_response["rajaongkir"]["results"];
    //      echo"<option value=''>Pilih Provinsi</option>";
    //      foreach($data_provinsi as $key => $tiap_provinsi)
    //      {
    //         echo"<option value='".$tiap_provinsi["province_id"]."'>";
    //         echo $tiap_provinsi["province"];
    //         echo "</option>";
    //      }
         
    //     }
    // }

    // public function City (HTTPRequest $request){
    //     $id_provinsi = $request->getVar('value');
    //     $curl = curl_init();

    //     curl_setopt_array($curl, array(
    //     CURLOPT_URL => "https://api.rajaongkir.com/starter/city?&province=" . $id_provinsi,
    //     CURLOPT_RETURNTRANSFER => true,
    //     CURLOPT_ENCODING => "",
    //     CURLOPT_MAXREDIRS => 10,
    //     CURLOPT_TIMEOUT => 30,
    //     CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
    //     CURLOPT_CUSTOMREQUEST => "GET",
    //     CURLOPT_HTTPHEADER => array(
    //         "key: c9ba6f9ee619e3eae6b2b65d64fac437"
    //     ),
    //     ));

    //     $response = curl_exec($curl);
    //     $err = curl_error($curl);

    //     curl_close($curl);

    //     if ($err) {
    //     echo "cURL Error #:" . $err;
    //     } else {
    //         $array_response = json_decode($response, true);
    //         $data_city = $array_response["rajaongkir"]["results"];
    //         echo"<option value=''>Pilih City</option>";


    //         foreach($data_city as $key => $tiap_city){
    //             echo"<option value=''
    //              nama_provinsi='".$tiap_city["province"]."'
    //              nama_city='".$tiap_city["city_name"]."' 
    //              tipe_distrik='".$tiap_city["type"]."' 
    //              kodepos='".$tiap_city["postal_code"]."'  >";
    //             echo $tiap_city["type"] . " ";
    //             echo $tiap_city["city_name"];
    //             echo "</option>";
    //         }
    //     }
    // }

    public function handleAddressForm(HTTPRequest $request) {

        $data = $request->postVars();
        $items = $request->postVar('item');
        // Debug::show($items); 

        $requiredFields = ['FullName', 'PhoneNumber', 'Provinsi', 'Kota', 'Kecamatan','Kelurahan', 'AddressDetail','item'];
        foreach ($requiredFields as $field) {
            if (empty($data[$field])) {
                return $this->httpError(400, 'Data alamat tidak lengkap.');
            }
        }
        
        
        
        
        $member = Security::getCurrentUser();
        if (!$member) {
            return $this->redirect(Director::absoluteBaseURL() . '/member');
        } 
        
        try {
            
            // $item = $data['item'];
            $address = MemberIdentity::create(); 
            $address->MemberID = $member->ID;
            $address->FullName = $data['FullName'];
            $address->PhoneNumber = $data['PhoneNumber'];
            $address->Provinsi = $data['Provinsi'];
            $address->Kota = $data['Kota'];
            $address->Kecamatan = $data['Kecamatan'];
            $address->Kelurahan = $data['Kelurahan'];  
            $address->AddressDetail = $data['AddressDetail'];
            $address->write();
            // Debug::show($address);
            
            
            
            
            
            // $object = CartItem::create();
            $order = Order::create();
            $order->MemberIdentityID = $address->ID;
            $invoicenumber = mt_rand();
            $order->Invoice = $invoicenumber;
            $order->write();
            // $object->MemberID = $member->ID;
            // $object->Title = $items["title"];
            // $object->Harga = $items["price"];
            // $object->Quantity = $items["quantity"];
            // $object->write();
            
            
            
            
            
            
            foreach ($items["title"]  as $index => $title) {
                // $itemData = $request->postVar('item');
                $item = CartItem::create();
                $item->Title = $title;


                $imagepath = $items["image"][$index];
                $relativePath = str_replace(['/pindah/assets/', '\\'], '', $imagepath);
                $image = File::get()->filter('FileFilename', ltrim($relativePath, '/'))->first();
                // Debug::show($relativePath);
                if ($image && $image->exists()) {
                    $item->ImageID = $image->ID;
                } else {
                    return json_encode([
                        'message' => "Error: Image not found for path " 
                    ]);
                }
                
                $item->MemberID = $member->ID;
                $item->Harga = $items["price"][$index];
                $item->Quantity = $items["quantity"][$index];
                $item->OrderID = $order->ID;
                $item->write();
           
            }





            // return false;
            return $this->redirect('regisbank');
        } catch (ValidationException $e) {
            return $this->httpError(400, $e->getMessage());
        }
    }



}
