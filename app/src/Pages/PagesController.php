<?php
use SilverStripe\Control\Director;
use SilverStripe\Security\Security;



class PagesController extends PageController {
    
public function index() {
    $member = Security::getCurrentUser();
        if (!$member) {
            return $this->redirect(Director::absoluteBaseURL() . '/member');
        }
        return [
            'Member' => $member,
        ];
    }
}
