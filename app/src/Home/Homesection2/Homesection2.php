<?php

use SilverStripe\ORM\DataObject;
use SilverStripe\Assets\File;
use SilverStripe\Assets\Image;
use SilverStripe\AssetAdmin\Forms\UploadField;
use SilverStripe\Forms\FieldList;
use SilverStripe\Forms\TextField;
use SilverStripe\Forms\TextareaField;
use SilverStripe\Forms\CheckboxsetField;
class Homesection2 extends DataObject{
    
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
        'HomePage' => HomePage::class,
        'section2'=> Image::class
       
    ];

   
    private static $owns = [
        'VideoSource',
        'section2'

    ];


    public function getCMSFields(){
        return new FieldList(
            TextField::create('Title'),
            TextareaField::create('Harga'),
            TextareaField::create('Description'),
            TextareaField::create('Spesifikasi'),
            TextareaField::create('Infopenting'),
            UploadField::create('section2'),
        );
    }
}