<?php

use SilverStripe\Forms\GridField\GridField;
use SilverStripe\Forms\GridField\GridFieldConfig_RecordEditor;
use SilverStripe\ORM\ArrayList;
use SilverStripe\ORM\DataObject;
use SilverStripe\Assets\File;
use SilverStripe\Assets\Image;
use SilverStripe\AssetAdmin\Forms\UploadField;
use SilverStripe\Forms\FieldList;
use SilverStripe\Forms\TextField;
use SilverStripe\Forms\TextareaField;
use SilverStripe\Forms\CheckboxsetField;
use SilverStripe\View\ArrayData;
class ShopObject extends DataObject
{


    private static $db = [
        'Title' => 'Text',
        'Description' => 'Text',
        'Harga' => 'Varchar',
        'Spesifikasi' => 'Varchar',
        'Infopenting' => 'Varchar',
        'Stok' => 'Varchar',
        'Title2' => 'Text',
        'SubHarga' => 'Varchar',
        'Title3' => 'Text',
        'SubHarga2' => 'Varchar',
        'SubStok' => 'Text',
        'SubStok2' => 'Varchar',

    ];


    private static $has_one = [
        'VideoSource' => File::class,
        'ShopPage' => ShopPage::class,
        'ImageThumbnail' => Image::class,
        // 'Image3'=> Image::class


    ];

    private static $many_many = [
        
        'Image' => Image::class,
    ];

    private static $belongs_many_many = [
        'ObjectCategories' => ObjectCategory::class,
    ];
    private static $has_many = [
        'DetailComments' => DetailComment::class,
    ];
    private static $owns = [
        'Image',
        // 'Image2',
        // 'Image3'
    ];


    public function getCMSFields()
    {
        return new FieldList(
            TextField::create('Title'),
            TextField::create('Harga'),
            TextField::create('Stok'),
            TextField::create('Title2'),
            TextField::create('SubHarga'),
            TextField::create('SubStok'),
            TextField::create('Title3'),
            TextField::create('SubHarga2'),
            TextField::create('SubStok2'),
            TextareaField::create('Description'),
            TextareaField::create('Spesifikasi'),
            TextareaField::create('Infopenting'),
            UploadField::create('Image')
                ->setIsMultiUpload(true),
            UploadField::create('ImageThumbnail'),
            // UploadField::create('Image3'),
            CheckboxsetField::create('ObjectCategories', 'Categories', ObjectCategory::get()),
            // GridField::create('SubObjects', 'SubObjects', $this->SubObjects(), GridFieldConfig_RecordEditor::create())
        );


    }

}