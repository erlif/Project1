<?php
use SilverStripe\Control\Director;
use SilverStripe\Control\HTTPRequest;
use SilverStripe\Dev\Debug;
use SilverStripe\Security\Member;
use SilverStripe\Security\Security;

class HistoryBankPageController extends PageController
{
    private static $allowed_actions = [
        'Nota'
    ];
    public function index(HTTPRequest $request)
    {
        $member = Security::getCurrentUser();
        if ($member) {
            $lastOrder = LastOrder::get()->filter('MemberID', $member->ID)->sort('Created','DESC');
            $lastOrders = LastOrder::get()->column('ID');
            $getStatus = GetStatus::get()->filter(['LastOrderID' => $lastOrders])->sort('Created','DESC');
            // Debug::show($getStatus);

            return [
                'Member' => $member,
                'Lastorder' => $lastOrder,
                'GetStatus' => $getStatus
            ];
        } else {
            return $this->redirect(Director::absoluteBaseURL() . '/member');
        }
    }

    public function Nota(HTTPRequest $request){
        $member = Security::getCurrentUser();
        if($member) {
        $k = $request->param('ID');
        $lastorder = LastOrder::get()->byID($k);


        

        $shippingAddress = MemberIdentity::get()
        ->filter(['MemberID' => $member->ID])
        ->sort('Created', 'DESC')
        ->first();
        $ordertax = Order::get()->filter('MemberIdentityID', $shippingAddress->ID)->column('Tax');
        $tax = isset($ordertax[0]) ? $ordertax[0] : 0;
        $order = Order::get()->filter('LastOrderID', $lastorder->ID)->last();
        $cartitem = CartItem::get()->filter('OrderID',$order->ID);
        
                $cartTotal = $cartitem->sum('Total');
        }else {
            return $this->redirect(Director::absoluteBaseURL() . '/member');
        }

        return $this->customise([
            'Order' => $lastorder,
            'ShippingAddress' => $shippingAddress,
            'Tax' => $tax,
            'CartItems' => $cartitem,
            'CurrentMember' => $member,
            'CartTotal' => $cartTotal
        ])->renderWith(["NotaBankPage", "Page"]);
    }   

    
}