<?php
use SilverStripe\Forms\DropdownField;
use SilverStripe\Forms\ReadonlyField;
use SilverStripe\ORM\DataObject;
use SilverStripe\ORM\FieldType\DBHTMLText;
use SilverStripe\Security\Member;

class DataCod extends DataObject{
    private static $db = [
        "Nama" => "Text",
        "Number" => "Int",
        "Alamat" => "Varchar",
        "Status" => "Enum('Pending, Approved, Rejected', 'Pending')",
    ];

    private static $has_one = [
        "Member" => Member::class
    ];

    private static $has_many = [
        "Order" => Order::class
    ];


    public function summaryFields(){
        return [
            'MemberID' => 'Member ID',
            'Nama' => 'Nama',
            'Number' => 'Number',
            'Alamat' => 'Alamat',
            'Status' => 'Status',
            'CartItemSummary' => 'Cart Item'
        ];
    }
    public function getCartItemSummary(){
        $order = $this->Order()->first();
        if($order && $order->exists()){
            $cartitems = $order->CartItems();
            // Debug::Show($cartitems);
            if($cartitems->count()){
                $summary = '';
                foreach($cartitems as $item){
                    $summary .= sprintf(
                        '%s Quantity: %d, Harga: %d <br>',
                        $item->Title,
                        $item->Quantity,
                        $item->Total
                    );
                }
                //agar mendetect element br 
                return DBHTMLText::create()->setValue($summary);
            }else {
                return "no Cart Found";
            }
        }
        return 'No Items';
    }

    public function getorderSummary(){
        $orders = $this->Order()->last();
        // Debug::show($order);
        $summary = '';
        foreach($orders as $order) {
            $summary = sprintf(
                '%d',
                $order->ID
            );
        }

        return DBHTMLText::create()->setValue($summary);

    }

    public function getCMSFields()
{ 
    $fields = parent::getCMSFields();

    $fields->addFieldToTab('Root.Main', ReadonlyField::create('CartItemsSummary', 'Cart Items', $this->getCartItemSummary()));
    $fields->addFieldToTab('Root.Main', ReadonlyField::create('MemberID', 'MemberID'));
    $fields->addFieldToTab('Root.Main', ReadonlyField::create('Nama', 'Nama'));
    $fields->addFieldToTab('Root.Main', ReadonlyField::create('Number', 'Number'));
    $fields->addFieldToTab('Root.Main', ReadonlyField::create('Alamat', 'Alamat'));
    $fields->addFieldToTab('Root.Main', ReadonlyField::create('OrderID', 'Order', $this->getorderSummary()));
    // Add the Status dropdown field
    $fields->addFieldToTab('Root.Main', DropdownField::create(
        'Status',
        'Payment Status',
        singleton(DataCod::class)->dbObject('Status')->enumValues()
    )->setEmptyString('-- Select Status --'));

    return $fields;
}
}