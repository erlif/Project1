<?php

use SilverStripe\ORM\DataObject;
use SilverStripe\Assets\File;
use SilverStripe\Assets\Image;
use SilverStripe\AssetAdmin\Forms\UploadField;
use SilverStripe\Forms\FieldList;
use SilverStripe\Forms\TextField;
use SilverStripe\Forms\TextareaField;
use SilverStripe\Forms\CheckboxsetField;
class HomeObject extends DataObject{
    
    private static $db = [  
        'Title' => 'Text',
        'Description' => 'Text',
        'Harga' => 'Varchar'
     ];


    private static $has_one = [ 
        'VideoSource' => File::class,
        'HomePage' => HomePage::class,
        'Image'=> Image::class
       
    ];

    private static $owns = [
        'VideoSource',
        'Image'

    ];


    public function getCMSFields(){
        return new FieldList(
            TextField::create('Title'),
            TextareaField::create('Description'),
            UploadField::create('VideoSource'),
            UploadField::create('Image')
        );
    }
}