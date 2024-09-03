<?php
use SilverStripe\Forms\FieldList;
use SilverStripe\Forms\TextField;
use SilverStripe\ORM\DataObject;

class SubObject extends DataObject {
    
    private static $db = [
        'SubTitle' => 'Text',
        'SubHarga' => 'Varchar',
        'SubStok' => 'Varchar'
    ];
    
    // private static $has_one = [
    //     'ShopObject' => ShopObject::class
    // ];
    
    public function getCMSFields(){
        return new FieldList(
            TextField::create('SubTitle'),
            TextField::create('SubHarga'),
            TextField::create('SubStok')
        );
    }
}
