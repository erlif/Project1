<?php

use SilverStripe\ORM\DataObject;
use SilverStripe\Assets\File;
use SilverStripe\Assets\Image;
use SilverStripe\AssetAdmin\Forms\UploadField;
use SilverStripe\Forms\FieldList;
use SilverStripe\Forms\TextField;
use SilverStripe\Forms\TextareaField;
use SilverStripe\Forms\CheckboxsetField;
class Thisweek extends DataObject{
    
    private static $db = [  
        'Title' => 'Text',
        'Harga' => 'Varchar',
        'Description'=> 'Varchar',
        'Spesifikasi'=> 'Varchar',
        'Infopenting'=> 'Varchar',
        'Stok'=> 'Varchar',

     ];


    private static $has_one = [ 
        'VideoSource' => File::class,
        'HomePage' => HomePage::class,
        'week'=> Image::class
       
    ];

    // private static $many_many = [
    //     'VideoCategories'=> VideoCategory::class
    // ];
    private static $owns = [
        'VideoSource',
        'week'

    ];
    public function getCMSFields(){
        return new FieldList(
            TextField::create('Title'),
            TextareaField::create('Harga'),
            TextareaField::create('Description'),
            TextareaField::create('Spesifikasi'),
            TextareaField::create('Infopenting'),
            UploadField::create('VideoSource'),
            UploadField::create('week'),
            // CheckboxsetField::create('VideoCategories', 'Categories', VideoCategory::get())
        );
    }
}