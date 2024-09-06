<?php
use SilverStripe\Control\Director;
use SilverStripe\Control\HTTPRequest;
use SilverStripe\Dev\Debug;
use SilverStripe\Security\Security;


class HistoryPageController extends PageController{
    private static $allowed_actions = [
        "Nota"
    ];
    public function index(HTTPRequest $request) {
        $member = Security::getCurrentUser();
        if ($member) {
    
            // orders
            $order = Order::get()
                ->filter('MemberID', $member->ID)
                ->sort('Created', 'DESC');  // Sorting by Created date in descending order
    
            //payment
            $paymentid = $order->column('DataCodID');
            $payment = DataCod::get()
                ->filter('ID', $paymentid)
                ->sort('Created', 'DESC'); 

            $ID = $order->column('ID');
            $cartitem = CartItem::get()
                ->sort('OrderID')
                ->filter('OrderID', $ID);
    
            return [
                'Member' => $member,
                'CurrentMember' => $member,
                'Order' => $order,
                'Payment' => $payment
            ];
        } else {
            return $this->redirect(Director::absoluteBaseURL() . '/member');
        }
    }
    


    public function Nota(HTTPRequest $request){
        $member = Security::getCurrentUser();
        if($member) {
        $k = $request->param('ID');
        $order = Order::get()->byID($k);
        $codid =  Order::get()->filter('MemberID', $member->ID)->sort()->column('DataCodID');
        $payment = DataCod::get()->filter('ID', $codid)->sort()->last();
        $shippingAddress = MemberIdentity::get()
        ->filter(['MemberID' => $member->ID])
        ->sort('Created', 'DESC')
        ->first();
        $ordertax = Order::get()->filter('MemberIdentityID', $shippingAddress->ID)->column('Tax');
        $tax = isset($ordertax[0]) ? $ordertax[0] : 0;
        
        $ID = Order::get()->filter('MemberID', $member->ID)->sort()->column('ID');
        $cartitem = CartItem::get()->sort('OrderID')->filter('OrderID',$order->ID);
        // Debug::show($payment);
                $cartTotal = $cartitem->sum('Total');
        }else {
            return $this->redirect(Director::absoluteBaseURL() . '/member');
        }

        return $this->customise([
            'Order' => $order,
            'ShippingAddress' => $shippingAddress,
            'Payment' => $payment,
            'CartItems' => $cartitem,
            'Tax' => $tax,
            'CurrentMember' => $member,
            'CartTotal' => $cartTotal
        ])->renderWith(["NotaHistoryPage", "Page"]);
    }   
}