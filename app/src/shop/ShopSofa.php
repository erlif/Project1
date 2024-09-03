<?php

use SilverStripe\ORM\DataObject;
use SilverStripe\Assets\File;
use SilverStripe\Assets\Image;
use SilverStripe\AssetAdmin\Forms\UploadField;
use SilverStripe\Forms\FieldList;
use SilverStripe\Forms\TextField;
use SilverStripe\Forms\TextareaField;
use SilverStripe\Forms\CheckboxsetField;
class ShopSofa extends DataObject{

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
        'Sofa'=> Image::class,
        'Sofa2' => Image::class,
        'Sofa3'=> Image::class,
        
       
    ];

    // private static $has_many = [
    //     'ObjectCategory'=> ObjectCategory::class
    // ];

    private static $owns = [
        'VideoSource',
        'Sofa',
        'Sofa2',
        'Sofa3',

    ];



    public function getCMSFields(){
        return new FieldList(
            TextField::create('Title'),
            TextareaField::create('Harga'),
            TextareaField::create('Description'),
            TextareaField::create('Spesifikasi'),
            TextareaField::create('Infopenting'),
            TextareaField::create('Stok'),
            UploadField::create('Sofa'),
            UploadField::create('Sofa2'),
            UploadField::create('Sofa3'),
            CheckboxsetField::create('ObjectCategory', 'Categories', ObjectCategory::get())
        );
    }
}