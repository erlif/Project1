<?php
use SilverStripe\Control\Director;
use SilverStripe\Dev\Debug;
use SilverStripe\Security\Security;

class PaymentRegisController extends PageController
{
    public function index()
    {
        $member = Security::getCurrentUser();
        if ($member) {
            $addres = MemberIdentity::get()->last();
            $order = Order::get()->filter('MemberIdentityID', $addres->ID);
            $orderid = CartItem::get()->last();
            $email = $member->Email; 
            $ID = Order::get()->filter('MemberIdentityID', $addres->ID)->column('ID');
            $cartitem = CartItem::get()->sort()->filter(['OrderID' => $ID]);
            $cartTotal = $cartitem->sum('Total');
            // Debug::show($order);
            // Debug::show($cartitem);
            return [
                'CartTotal' => $cartTotal,
                'Addres' => $addres,
                'Order' => $order,
                'Email' => $email,
                'Cartitem' => $cartitem,
                'OrderID' => $orderid
            ];
        } else {
            return $this->redirect(Director::absoluteBaseURL() . '/member');
        }
    }
}



// memberidentity last
// get order samakan id dengan member

// get cartitem dengan order