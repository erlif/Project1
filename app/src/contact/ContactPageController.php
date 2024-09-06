<?php

namespace {

use SilverStripe\SiteConfig\SiteConfig;
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

    public function index (HTTPRequest $request){
        $member = Security::getCurrentUser();
        if($member){
            $Product = ShopObject::get()->sort('Title', 'DESC');
            return [
                'Member' => $member,
                'Email' => $member->Email,
                'Product' => $Product
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
        $siteconfig = SiteConfig::current_site_config();
        // Debug::show($siteconfig);
        $send = $siteconfig->Email;
       
        
        $message = $data['message'] ?? null;
        if ($message && $send) {
            // Process the email
            $emailObj = Email::create()
                ->setFrom('lekimamleki@gmail.com')
                ->setTo($send)
                ->setSubject('Message Contact-Us')
                ->setBody("$message");

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
