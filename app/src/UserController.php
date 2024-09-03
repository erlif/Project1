<?php
use SilverStripe\Dev\Debug;
use SilverStripe\Security\Security;

class UserController extends PageController
{
    public function index()
    {

        // $member = Security::getCurrentUser();
        // if ($member) {
        //     Debug::show($member);


        //     return [
        //         'CurrentMember' => $member
        //     ];

            
        // } else {
        //     return $this->redirect('http:///pindah/member');
        // }
    }
}