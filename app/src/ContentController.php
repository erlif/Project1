<?php 
use SilverStripe\Control\Director;
use SilverStripe\Security\Security;


class ContentController extends PageController{
    public function index(){
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
}