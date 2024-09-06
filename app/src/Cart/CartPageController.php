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
    private static $allowed_actions = ['handleAddressForm','Province', 'City','cost','filter'];


    public function index() {
        
            $member = Security::getCurrentUser();
            if (!$member) {
                return $this->redirect(Director::absoluteBaseURL() . '/member');
            }else{
                // Debug::show('kdskadkak');
                $Product = ShopObject::get()->sort('Title', 'DESC');
                return [
                    'Product' => $Product,
                    'Member' => $member,
                ];
            }
    }
    public function Province(HTTPRequest $request){
       
        $curl = curl_init();

        curl_setopt_array($curl, array(
        CURLOPT_URL => "http://api.rajaongkir.com/starter/province",
        CURLOPT_RETURNTRANSFER => true,
        CURLOPT_ENCODING => "",
        CURLOPT_MAXREDIRS => 10,
        CURLOPT_TIMEOUT => 30,
        CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
        CURLOPT_CUSTOMREQUEST => "GET",
        CURLOPT_HTTPHEADER => array(
            "key: c9ba6f9ee619e3eae6b2b65d64fac437"
        ),
        ));

        $response = curl_exec($curl);
        $err = curl_error($curl);

        curl_close($curl);

        if ($err) {
        echo "cURL Error #:" . $err;
        } else {
         $array_response = json_decode($response,TRUE);
         $data_provinsi = $array_response["rajaongkir"]["results"];
        //  Debug::show($data_provinsi);
         echo"<option value=''>Pilih Provinsi</option>";
         foreach($data_provinsi as $key => $tiap_provinsi)
         {
            echo"<option value='".$tiap_provinsi["province"]."' province_id='".$tiap_provinsi["province_id"]."'>";
            echo $tiap_provinsi["province"];
            echo "</option>";
         }
         
        }
    }
    public function filter()
    {

        $cartItems = CartItem::get();

        // Initialize an array to store counts
        $quantityCounts = [];

        // Iterate over each CartItem to calculate total quantity per title
        foreach ($cartItems as $cartItem) {
            $itemTitle = $cartItem->Title; // Assuming you have a Title field in CartItem
            if (!isset($quantityCounts[$itemTitle])) {
                $quantityCounts[$itemTitle] = 0;
            }
            $quantityCounts[$itemTitle] += $cartItem->Quantity;
        }

        // Sort quantity counts in descending order
        arsort($quantityCounts);
        // Debug::show($quantityCounts);
        $limitedResult = array_slice($quantityCounts, 0, 6);


        // Debug::show($quantityCounts);
        // die();

        // Retrieve ShopObject details for each title in sorted quantity counts
        $shopObjectsByTitle = [];
        foreach ($limitedResult as $title => $quantity) {
            // $shopObject = ShopObject::get()->filterAny(['Title' => $title, 'Title2' => $title, 'Title3' => $title])->first();
            // Debug::show($shopObject);
            
            if($shoptitle1 = ShopObject::get()->filter(['Title' => $title ])->first())
            {
                echo '
                 <div class="col mt-2 d-flex justify-content-center">
                     <div class="card text-center" style="width: 18rem;">
                         <a href="/pindah/shop-page/detailobject/' . $shoptitle1->ID . '" style="text-decoration:none;">
                             <img class="my-custom-class card-img-top" src="' . $shoptitle1->ImageThumbnail()->URL . '" alt="' . $shoptitle1->Title . '">
                             <div class="card-body text-center">
                                <h5 class="fw-bold">' . $shoptitle1->Title . '</h5>
                                 <p class="card-text">Rp. ' . number_format($shoptitle1->Harga, 0, ',', '.') . '</p>
                             </div>
                         </a>
                     </div>
                 </div>';
            }
            if($shoptitle2 = ShopObject::get()->filter(['Title2' => $title ])->first())
            {
                echo '
                 <div class="col mt-2 d-flex justify-content-center">
                     <div class="card text-center" style="width: 18rem;">
                         <a href="/pindah/shop-page/detailobject/' . $shoptitle2->ID . '" style="text-decoration:none;">
                             <img class="my-custom-class card-img-top" src="' . $shoptitle2->ImageThumbnail()->URL . '" alt="' . $shoptitle2->Title2 . '">
                             <div class="card-body text-center">
                                <h5 class="fw-bold">' . $shoptitle2->Title2 . '</h5>
                                 <p class="card-text">Rp. ' . number_format($shoptitle2->Harga, 0, ',', '.') . '</p>
                             </div>
                         </a>
                     </div>
                 </div>';
            }
            if($shoptitle3 = ShopObject::get()->filter(['Title3' => $title ])->first())
            {
                echo '
                 <div class="col mt-2 d-flex justify-content-center">
                     <div class="card text-center" style="width: 18rem;">
                         <a href="/pindah/shop-page/detailobject/' . $shoptitle3->ID . '" style="text-decoration:none;">
                             <img class="my-custom-class card-img-top" src="' . $shoptitle3->ImageThumbnail()->URL . '" alt="' . $shoptitle3->Title3 . '">
                             <div class="card-body text-center">
                                <h5 class="fw-bold">' . $shoptitle3->Title3 . '</h5>
                                 <p class="card-text">Rp. ' . number_format($shoptitle3->Harga, 0, ',', '.') . '</p>
                             </div>
                         </a>
                     </div>
                 </div>';
            }







            // echo '
            // <div class="col mt-2 d-flex justify-content-center">
            //     <div class="card text-center" style="width: 18rem;">
            //         <a href="/pindah/shop-page/detailobject/' . $shopObject->ID . '" style="text-decoration:none;">
            //             <img class="my-custom-class card-img-top" src="' . $shopObject->ImageThumbnail()->URL . '" alt="' . $shopObject->Title . '">
            //             <div class="card-body text-center">
            //                 <h5 class="fw-bold">' . $shopObject->Title . '</h5>
            //                 <p class="card-text">Rp. ' . number_format($shopObject->Harga, 0, ',', '.') . '</p>
            //             </div>
            //         </a>
            //     </div>
            // </div>';
        }
    }

    public function City (HTTPRequest $request){
        $id_provinsi = $request->postVar('province_id');
        $curl = curl_init();

        curl_setopt_array($curl, array(
        CURLOPT_URL => "http://api.rajaongkir.com/starter/city?&province=" . $id_provinsi,
        CURLOPT_RETURNTRANSFER => true,
        CURLOPT_ENCODING => "",
        CURLOPT_MAXREDIRS => 10,
        CURLOPT_TIMEOUT => 30,
        CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
        CURLOPT_CUSTOMREQUEST => "GET",
        CURLOPT_HTTPHEADER => array(
            "key: c9ba6f9ee619e3eae6b2b65d64fac437"
        ),
        ));

        $response = curl_exec($curl);
        $err = curl_error($curl);

        curl_close($curl);

        if ($err) {
        echo "cURL Error #:" . $err;
        } else {
            $array_response = json_decode($response, true);
            $data_city = $array_response["rajaongkir"]["results"];
            echo"<option value=''>Pilih Kota</option>";


            foreach($data_city as $key => $tiap_city){
                echo"<option 
                 value='".$tiap_city["type"] . " " . $tiap_city["city_name"]. "'
                 city_id='".$tiap_city["city_id"]."'
                 nama_provinsi='".$tiap_city["province"]."'
                 city_name='".$tiap_city["city_name"]."' 
                 tipe_distrik='".$tiap_city["type"]."' 
                 kodepos='".$tiap_city["postal_code"]."'  >";
                echo $tiap_city["type"] . " ";
                echo $tiap_city["city_name"];
                echo "</option>";
            }
        }
    }


    public function cost(HTTPRequest $request){
        $ekspedisi = $request->postVar('ekspedisi');
        $distrik = $request->postVar('city');
        $berat = $request->postVar('berat');
        
        
        $curl = curl_init();

        curl_setopt_array($curl, array(
        CURLOPT_URL => "http://api.rajaongkir.com/starter/cost",
        CURLOPT_RETURNTRANSFER => true,
        CURLOPT_ENCODING => "",
        CURLOPT_MAXREDIRS => 10,
        CURLOPT_TIMEOUT => 30,
        CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
        CURLOPT_CUSTOMREQUEST => "POST",
        CURLOPT_POSTFIELDS => "origin=419&destination=".$distrik."&weight=".$berat."&courier=" . $ekspedisi,
        // CURLOPT_POSTFIELDS => "origin=501&destination=114&weight=1700&courier=jne",
        CURLOPT_HTTPHEADER => array(
            "content-type: application/x-www-form-urlencoded",
            "key: c9ba6f9ee619e3eae6b2b65d64fac437"
        ),
        ));

        $response = curl_exec($curl);
        $err = curl_error($curl);

        curl_close($curl);

        if ($err) {
        echo "cURL Error #:" . $err;
        } else {
            $array_response = json_decode($response, true);
            
            // Debug::show($array_response);
            // die();
            $paket = $array_response["rajaongkir"]["results"]["0"]["costs"];

         
                
            echo"<option value=''>Pilih Jenis Pengantaran</option>";
            foreach($paket as $key => $tiap_paket){
                    echo"<option 
                    value='".$tiap_paket['description']."' 
                    ongkir='".$tiap_paket["cost"]["0"]["value"]."'
                    etd='".$tiap_paket["cost"]["0"]["etd"]."'>";
                    echo $tiap_paket["description"]. " ";
                    echo number_format($tiap_paket["cost"]["0"]["value"]) . " ";
                    echo $tiap_paket["cost"]["0"]["etd"];
                    echo "</option>";
                    
                    
            }
        }
    }

    public function handleAddressForm(HTTPRequest $request) {

        $data = $request->postVars();
        $items = $request->postVar('item');
        Debug::show($data); 

        $requiredFields = ['FullName', 'PhoneNumber', 'nama_provinsi', 'nama_city', 'nama_ekspedisi','nama_paket',  'AddressDetail'];
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
            $address->Provinsi = $data['nama_provinsi'];
            $address->Kota = $data['nama_city'];
            // $address->Kecamatan = $data['Kecamatan'];
            // $address->Kelurahan = $data['Kelurahan'];  
            $address->AddressDetail = $data['AddressDetail'];
            $address->write();
            // Debug::show($address);
            
            
            
            
            
            // $object = CartItem::create();
            $order = Order::create();
            $order->MemberIdentityID = $address->ID;
            $order->Nama_Ekspedisi = $data['nama_ekspedisi'];
            $order->Jenis_Pengantaran = $data['nama_paket'];
            $invoicenumber = mt_rand();
            $order->Invoice = $invoicenumber;
            $order->Tax = $items["tax"]["0"];
            $order->write();
            // $object->MemberID = $member->ID;
            // $object->Title = $items["title"];
            // $object->Harga = $items["price"];
            // $object->Quantity = $items["quantity"];
            // $object->write();
            // Debug::show($order);
            
            
            
            
            
            
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
                $item->Berat = $items["berat"][$index];
                $item->BeratTotal = $items["berat_total"][$index];
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
