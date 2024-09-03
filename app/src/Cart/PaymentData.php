<?php
use SilverStripe\Assets\File;
use SilverStripe\Assets\Image;
use SilverStripe\Dev\Debug;
use SilverStripe\Forms\DropdownField;
use SilverStripe\Forms\ReadonlyField;
use SilverStripe\ORM\DataObject;
use SilverStripe\ORM\FieldType\DBField;
use SilverStripe\ORM\FieldType\DBHTMLText;
use SilverStripe\Security\Member;

class PaymentData extends DataObject
{
    private static $db = [
        "CardNumber" => "Int",
        "FirstName" => "Text",
        "LastName" => "Text",
        "YY" => "Int",
        "MM" => "Int",
        "DD" => "Int",
        "Status" => "Enum('Pending, Approved, Rejected', 'Pending')"
    ];

    private static $has_one = [
        "Member" => Member::class,
        "Image" => Image::class,

    ];

    private static $has_many = [
        "Order" => Order::class
    ];

    private static $owns = [
        "Image"
    ];
    public function summaryFields()
    {
        return [
            'MemberID' => 'Member ID',
            'FirstName' => 'First Name',
            'LastName' => 'Last Name',
            'OrderID' => 'OrderID',
            'YY' => 'YY',
            'MM' => 'MM',
            'DD' => 'DD',
            'CardNumber' => 'Card Number',
            'Status' => 'Status',
            'CartItemSummary' => 'Cart Items'
        ];
    }


    // public function getStatusEditable(){
    //     $statusOption = singleton(PaymentData::class)->dbObject('Status')->enumValues();

    //     $dropdown = '<select name="status-'. $this->ID .'" class="status-dropdown">';
    //     foreach($statusOption as $value => $title){
    //         $selected = ($this->Status == $value) ? ' selected="selected"' : '';
    //         $dropdown .= "<option value=\"$value\"$selected>$title</option>";
    //     }
    //     $dropdown .= '</select>';

    // return DBField::create_field('HTMLText', $dropdown);
    // }



    public function getCartItemSummary()
    {
        $order = $this->Order()->first();
        if ($order && $order->exists()) {
            $cartitems = $order->CartItems();
            // Debug::Show($cartitems);
            if ($cartitems->count()) {
                $summary = '';
                foreach ($cartitems as $item) {
                    $summary .= sprintf(
                        '%s Quantity: %d, Harga: %d <br>',
                        $item->Title,
                        $item->Quantity,
                        $item->Total
                    );
                }
                //agar mendetect element br 
                return DBHTMLText::create()->setValue($summary);
            } else {
                return "no Cart Found";
            }
        }
        return 'No Items';
    }


    public function getorderSummary()
    {
        $orders = $this->Order()->last();
        // Debug::show($order);
        $summary = '';
        foreach ($orders as $order) {
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


        $fields->addFieldToTab('Root.Main', ReadonlyField::create('OrderID', 'Order', $this->getorderSummary()));


        // Add the Status dropdown field
        $fields->addFieldToTab('Root.Main', DropdownField::create(
            'Status',
            'Payment Status',
            singleton(PaymentData::class)->dbObject('Status')->enumValues()
        )->setEmptyString('-- Select Status --'));

        return $fields;
    }

}
;