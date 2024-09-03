<?php

namespace {

use SilverStripe\Control\Director;
use SilverStripe\Dev\Debug;
use SilverStripe\Control\Email\Email;
use SilverStripe\Control\HTTPRequest;
use SilverStripe\Security\Security;
use SilverStripe\Control\HTTPResponse;

class ContactPageController extends PageController
{
    private static $allowed_actions = [
        'mail'
    ];

    public function index (){
        $member = Security::getCurrentUser();
        if($member){
            return [
                'Member' => $member,
                'Email' => $member->Email
            ];
        } else{
            return $this->redirect(Director::absoluteBaseURL() . '/member');
        }
    }

    public function mail(HTTPRequest $request)
    {
        // Get POST data
        $data = $request->postVars();
        Debug::show($data); // Display the POST data for debugging

        $email = $data['email'] ?? null;
        $message = $data['message'] ?? null;

        if ($email && $message) {
            // Process the email
            $emailObj = Email::create()
                ->setFrom($email)
                ->setTo('lekimamleki@gmail.com')
                ->setSubject('Message Contact-Us')
                ->setBody("From :$email\nMessage:$message");

            try {
                $emailObj->send();
                return "Email sent successfully!";
            } catch (\Exception $e) {
                return "Failed to send email: " . $e->getMessage();
            }
        } else {
            return "Email and message are required.";
        }
    }
}
}
