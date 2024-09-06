<?php

use SilverStripe\Assets\File;
use SilverStripe\ORM\DataObject;
use SilverStripe\Security\Member;

class CartItem extends DataObject {
    private static $db = [
        "Title"=> "Varchar",
        'Quantity' => 'Int',  
        'Harga' => 'Varchar',
        'Total'=> 'Int',
        'Berat' => 'Varchar',
        'BeratTotal'=> 'Int',
        
    ];

    private static $has_one = [
        'Member' => Member::class,
        'Order'=> Order::class,
        'Image' => File::class
        
    ];

    // private static $has_many = [
    //     
    // ];

    private static $summary_fields = [
        'Title' => 'Title',
        'Quantity' => 'Quantity',
        'Harga' => 'Harga',
        'Total' => 'Total',
        'Berat' => 'Berat',
        'BeratTotal' => 'BeratTotal',

    ];

    // public function TotalHarga(){
    //     return $this->Quantity * $this->Harga;
    // }

    public function calculateTotal(){

        $this ->Total = $this->Harga * $this->Quantity;
    }

    


    protected function onBeforeWrite() {
            parent::onBeforeWrite();
            $this->calculateTotal();
    }

}