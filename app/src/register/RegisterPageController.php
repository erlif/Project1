<?php

namespace {

use SilverStripe\Dev\Debug;
use SilverStripe\Control\Email\Email;
use SilverStripe\Control\HTTPRequest;
use SilverStripe\Core\Injector\Injector;
use SilverStripe\ORM\ValidationResult;
use SilverStripe\Security\IdentityStore;
use SilverStripe\Security\Member;
use SilverStripe\Security\MemberAuthenticator\MemberAuthenticator;

class RegisterPageController extends PageController
{
    private static $allowed_actions = [
        'prosesregister'
    ];

    public function prosesregister(HTTPRequest $request)
    {

        $first_name = $request->postVar('FirstName');
        $email = $request->postVar('Email');
        $username = $request->postVar('Username');
        $password_1 = $request->postVar('Password');
        $password_2 = $request->postVar('ConfirmPassword');

        if ($password_1 !== $password_2) {
            return json_encode([
                'message' => 'Passwords do not match'
            ]);
        }
        
        // Create the member
        $member = Member::create();
        $member->FirstName = $first_name;
        $member->Surname = $username;
        $member->Email = $email;
        $member->write();
        
        return json_encode([
            'success' => true,
            'message'=> 'Success'
        ]);


        // Set the password
        // $member->changePassword($password_1);

        // // Authenticate the member
        // // $authenticator = new MemberAuthenticator();
        // // $authenticatedMember = $authenticator->authenticate([
        // //     'Email' => $email,
        // //     'Password' => $password_1
        // // ], $request);
        // // if ($authenticatedMember) {
        // //     // Log in the member
        // //     $identityStore = Injector::inst()->get(IdentityStore::class);
        // //     $identityStore->logIn($authenticatedMember, false, $request);

        // //     // Send welcome email
        // //     $email = Email::create()
        // //         ->setHTMLTemplate('RegisterPage')
        // //         ->setData($member)
        // //         ->setSubject("Welcome to Website")
        // //         ->addData('first_name', $member->FirstName)
        // //         ->setTo($member->Email)
        // //         ->setSender('no-reply@website.co.nz', "Some website");

        // //     $email->send();

        //     return json_encode(['success' => true]);
        // } else {
        //     return json_encode(['success' => false, 'message' => 'Authentication failed']);
        // }


        
    }
}
}