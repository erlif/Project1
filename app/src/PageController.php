<?php

namespace {

    use SilverStripe\CMS\Controllers\ContentController;
    use SilverStripe\Control\Director;
    use SilverStripe\Control\HTTPRequest;
    use SilverStripe\Dev\Debug;
    use SilverStripe\Security\Security;

    /**
     * @template T of Page
     * @extends ContentController<T>
     */
    class PageController extends ContentController
    {
        /**
         * An array of actions that can be accessed via a request. Each array element should be an action name, and the
         * permissions or conditions required to allow the user to access it.
         *
         * <code>
         * [
         *     'action', // anyone can access this action
         *     'action' => true, // same as above
         *     'action' => 'ADMIN', // you must have ADMIN permissions to access this action
         *     'action' => '->checkAction' // you can only access this action if $this->checkAction() returns true
         * ];
         * </code>
         *
         * @var array
         */
        private static $allowed_actions = ['custom'];

        public function custom() {
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
        

        protected function init()
        {
            parent::init();
            
            
            
       
 
          
            // Debug::show($member);
            // die();  
            // You can include any CSS or JS required by your project here.
            // // See: https://docs.silverstripe.org/en/developer_guides/templates/requirements/
            // die('kkkk');
        }
    }
}
