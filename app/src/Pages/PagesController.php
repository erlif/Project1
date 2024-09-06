<?php
use SilverStripe\Control\Director;
use SilverStripe\Control\HTTPRequest;
use SilverStripe\Security\Security;



class PagesController extends PageController {
    
public function index(HTTPRequest $request) {
    $member = Security::getCurrentUser();
        if (!$member) {
            return $this->redirect(Director::absoluteBaseURL() . '/member');
        }
        $Product = ShopObject::get()->sort('Title', 'DESC');
        return [
            'Product' => $Product,
            'Member' => $member,
        ];
    }
}
