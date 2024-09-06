<?php

use SilverStripe\Control\HTTPRequest;
use SilverStripe\Dev\Debug;
use SilverStripe\Control\Director;
use SilverStripe\Security\Security;    

class AboutController extends PageController 
{
    public function index(HTTPRequest $request){
    $member = Security::getCurrentUser();
        if (!$member) {
            return $this->redirect(Director::absoluteBaseURL() . '/member');
        }else{
            // Debug::show();
            $Product = ShopObject::get()->sort('Title', 'DESC');
            return [
                'Product' => $Product,
                'Member' => $member,
            ];
        }
    }
}