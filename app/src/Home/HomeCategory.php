<?php 
use SilverStripe\Forms\FieldList;
use SilverStripe\Forms\TextField;
use SilverStripe\ORM\DataObject;

class HomeCategory extends DataObject{
    private static $db = [
        "Title" => "Text"
    ];

    private static $belongs_many_many = [
        "HomeObjects" => HomeObject::class
    ];

    public function getCMSFields(){
        return new FieldList(
            TextField::create('Title')
        );
    }
}