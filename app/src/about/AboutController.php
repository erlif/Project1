<?php

use SilverStripe\Control\Director;
use SilverStripe\Security\Security;    

class AboutController extends PageController 
{
    private static $allowed_actions = [
        'index'
    ];
    public function index(){
    $member = Security::getCurrentUser();
        if (!$member) {
            return $this->redirect(Director::absoluteBaseURL() . '/member');
        }
        return [
            'Member' => $member,
        ];
    }
}