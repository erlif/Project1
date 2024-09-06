<?php


use SilverStripe\Control\Director;
use SilverStripe\Control\HTTPRequest;
use SilverStripe\Security\Security;    

class BlogController extends PageController 
{
    private static $allowed_actions = [
        'index'
    ];
    public function index(HTTPRequest $request){
        $member = Security::getCurrentUser();
        if (!$member) {
            return $this->redirect(Director::absoluteBaseURL() . '/member');
        } else{
        $Product = ShopObject::get()->sort('Title', 'DESC');
        return [
            'Product' => $Product,
            'Member' => $member,
        ];
    }
    }
}