<?php

use SilverStripe\ORM\DataObject;
use SilverStripe\Assets\File;
use SilverStripe\Assets\Image;
use SilverStripe\AssetAdmin\Forms\UploadField;
use SilverStripe\Forms\FieldList;
use SilverStripe\Forms\TextField;
use SilverStripe\Forms\TextareaField;
use SilverStripe\Forms\CheckboxsetField;
class Chair extends DataObject{
    
    private static $db = [  
        'Title' => 'Text',
        'Description' => 'Text',
        'Harga' => 'Varchar',
        'Spesifikasi'=> 'Varchar',
        'Infopenting'=> 'Varchar',
        'Stok'=> 'Varchar',
     ];


    private static $has_one = [ 
        'VideoSource' => File::class,
        'ShopPage' => ShopPage::class,
        'Chair'=> Image::class,
        'Chair2'=> Image::class,
        'Chair3'=> Image::class,


       
    ];

    // private static $many_many = [
    //     'VideoCategories'=> VideoCategory::class
    // ];
    private static $owns = [
        'VideoSource',
        'Chair',
        'Chair2',
        'Chair3'

    ];


    public function getCMSFields(){
        return new FieldList(
            TextField::create('Title'),
            TextareaField::create('Harga'),
            TextareaField::create('Description'),
            TextareaField::create('Spesifikasi'),
            TextareaField::create('Infopenting'),
            TextareaField::create('Stok'),
            UploadField::create('Chair'),
            UploadField::create('Chair2'),
            UploadField::create('Chair3'),

        );
    }
}