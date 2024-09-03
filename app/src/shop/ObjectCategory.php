<?php
use SilverStripe\Forms\FieldList;
use SilverStripe\Forms\TextField;
use SilverStripe\ORM\DataObject;



class ObjectCategory extends DataObject{
    private static $db = [
        "Title"=> "Text"
    ] ;

    private static $many_many = [
        "ShopObjects"=> ShopObject::class,
    ] ;



    public function getCMSFields(){
        return new FieldList(
            TextField::create('Title')
        );
    }
}