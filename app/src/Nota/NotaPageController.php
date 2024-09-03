<?php 
use SilverStripe\Security\Security;
use SilverStripe\Dev\Debug;
use Psr\Log\LoggerInterface;
use SilverStripe\Core\Injector\Injector;

class NotaPageController extends PageController 
{
    public function index()
    {
        $member = Security::getCurrentUser();
        if ($member) {
            $order = Order::get()->sort('ID')->last()->ID;
            $Invoice = Order::get()->sort()->last();
            $cartItems = CartItem::get()->filter(['OrderID' => $order]);
            $cartTotal = $cartItems->sum('Total');
            $shippingAddress = MemberIdentity::get()
                ->filter(['MemberID' => $member->ID])
                ->sort('Created', 'DESC')
                ->first();

          
            $invoice = $Invoice->Invoice;
            


            //stok sampai bawah
            $Quantity = [];
            foreach ($cartItems as $cartItem) {
                if (!isset($Quantity[$cartItem->Title])) {
                    $Quantity[$cartItem->Title] = 0;
                }
                $Quantity[$cartItem->Title] += $cartItem->Quantity;
            }
            
            $cartTitle = array_keys($Quantity);
          

            if($shopObjects = ShopObject::get()->filter(['Title' => $cartTitle])){
                foreach ($shopObjects as $shopObject) {
                    $title = $shopObject->Title;
                        if (isset($Quantity[$title])) {
                        $shopObject->Stok -= $Quantity[$title];
                        $shopObject->write();
                        }
             }
            }
            if($shopTitle2 = ShopObject::get()->filter(['Title2' => $cartTitle])){
                foreach ($shopTitle2 as $shopObject) {
                    $title2 = $shopObject->Title2;  
                    if (isset($Quantity[$title2])) {
                    $shopObject->SubStok -= $Quantity[$title2];
                    $shopObject->write();
                }
             }
            }
            if($shopTitle3 = ShopObject::get()->filter(['Title3' => $cartTitle])){
                foreach ($shopTitle3 as $shopObject) {
                    $title3 = $shopObject->Title3;
                        if (isset($Quantity[$title3])) {
                        $shopObject->SubStok2 -= $Quantity[$title3];
                        $shopObject->write();
                        }
             }
            }
            


            
      

            
            // $object = ShopObject::create();
            // $object->Stok = $Stok;
            // $object->write();

            // Debug::show($Quantity);
            // Debug::show($Quantity[$title]);


            // return false;
            return [
                'CurrentMember' => $member,
                'CartItems' => $cartItems,
                'ShippingAddress' => $shippingAddress,
                'CartTotal' => $cartTotal,
                'Invoice'=> $invoice
                // 'CartItemTotal'=> $cartItems->TotalHarga()
            ];
        } else {
            Injector::inst()->get(LoggerInterface::class)->warning('No member is currently logged in.');
            return [];
        }
    }
}

