<?php

use SilverStripe\Control\Director;
use SilverStripe\Dev\Debug;
use SilverStripe\Control\HTTPRequest;
use SilverStripe\ORM\ArrayList;
use SilverStripe\ORM\DataList;
use SilverStripe\Security\Security;
    

class ShopPageController extends PageController 
{

    private static $allowed_actions = [
        "DetailObject",
        "Chair",
        "Sofa",
        "getsofa",
        "filtersofa",
        "categori"
        ] ;
        
        public function index(){
            $member = Security::getCurrentUser();
            if (!$member) {
                return $this->redirect(Director::absoluteBaseURL() . '/member');


            }
            // $Chair = Chair::get();
            // $cobas = ShopCoba::get();
           





            //Lamp
            
            $categoryTitle = 'Lamp';  
            
            
            $category = ObjectCategory::get()->filter(['Title' => $categoryTitle])->first();
            
            if ($category) {
                // Filter ShopObject objects by the found category using the many-many relationship
                $categoryLamps = $category->ShopObjects();
            } else {
                // Handle the case where the category is not found
                $categoryLamps = DataList::create(ShopObject::class);
            }




            //Chair
             
             $categoryTitle = 'Chair';  
            
             
             $category = ObjectCategory::get()->filter(['Title' => $categoryTitle])->first();
             
             if ($category) {
                 // Filter ShopObject objects by the found category using the many-many relationship
                 $categoryChair = $category->ShopObjects();
             } else {
                 // Handle the case where the category is not found
                 $categoryChair = DataList::create(ShopObject::class);
             }
            


            //Sofa
             
             $categoryTitle = 'Sofa';  
            
             
             $category = ObjectCategory::get()->filter(['Title' => $categoryTitle])->first();
             
             if ($category) {
                 // Filter ShopObject objects by the found category using the many-many relationship
                 $categorySofa = $category->ShopObjects();
             } else {
                 // Handle the case where the category is not found
                 $categorySofa = DataList::create(ShopObject::class);
             }
            




            return [
                'Member' => $member,
                'Sofa' => $categorySofa,
                'Lamp' => $categoryLamps,
                'Chair'=> $categoryChair,
                'Link' => $this->Link()
            ];
        }
        


        public function DetailObject(HTTPRequest $request){
            $member = Security::getCurrentUser();
            $k = $request->param('ID');
            $Lamp = ShopObject::get()->byID($k);
            $SubObject = SubObject::get()->filter(['ShopObjectID' => $Lamp->ID]);
       
        // Debug::show($Lamp);
        // Debug::show($SubObject);
        return $this->customise([
            'Coba' => $Lamp,$SubObject,
            'Member' => $member,
            // 'SubObject'=> $SubObject
            ])->renderWith(["Detail", "Page"]);
            

    }
}



// Debug::show( $this->getRequest()->param('ID'));
// die();


