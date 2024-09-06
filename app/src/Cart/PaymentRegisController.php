<?php
use SilverStripe\Control\Director;
use SilverStripe\Control\HTTPRequest;
use SilverStripe\Dev\Debug;
use SilverStripe\Security\Security;

class PaymentRegisController extends PageController
{
    public function index(HTTPRequest $request)
    {
        $member = Security::getCurrentUser();
        if ($member) {
            $addres = MemberIdentity::get()->last();
            $order = Order::get()->filter('MemberIdentityID', $addres->ID);
            $orderid = CartItem::get()->last();
            $email = $member->Email; 
            $ID = Order::get()->filter('MemberIdentityID', $addres->ID)->column('ID');
            $cartitem = CartItem::get()->sort()->filter(['OrderID' => $ID]);
            $itemcost = $cartitem->sum('Total');
            //tax
            $ordertax = Order::get()->filter('MemberIdentityID', $addres->ID)->column('Tax');
            $tax = isset($ordertax[0]) ? $ordertax[0] : 0;
            // Debug::show($itemcost);
            // Debug::show($ordertax["0"]);
            $total = $itemcost + $tax;
            // Debug::show($total);
            return [
                'ItemCost' => $itemcost,
                'OrderTax' => $tax,
                'CartTotal' => $total,
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