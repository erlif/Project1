<?php

use SilverStripe\ORM\DataObject;
use SilverStripe\Assets\File;
use SilverStripe\Assets\Image;
use SilverStripe\AssetAdmin\Forms\UploadField;
use SilverStripe\Forms\FieldList;
use SilverStripe\Forms\TextField;
use SilverStripe\Forms\TextareaField;
use SilverStripe\Forms\CheckboxsetField;
class Homesection4 extends DataObject{
    
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
        'section4'=> Image::class
       
    ];

    // private static $many_many = [
    //     'VideoCategories'=> VideoCategory::class
    // ];
    private static $owns = [
        'VideoSource',
        'section4'

    ];


    private static $allowed_actions = [];

    protected function init() {
        parent::init();
    }

    public function getHomeSection4Limited($limit = 3) {
        $homeSection4 = HomeSection4::get();
        return $homeSection4->limit($limit);
    }


    public function getCMSFields(){
        return new FieldList(
            TextField::create('Title'),
            TextareaField::create('Harga'),
            TextareaField::create('Description'),
            TextareaField::create('Spesifikasi'),
            TextareaField::create('Infopenting'),
            UploadField::create('VideoSource'),
            UploadField::create('section4'),
            // CheckboxsetField::create('VideoCategories', 'Categories', VideoCategory::get())
        );
    }
}