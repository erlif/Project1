<?php
namespace App\Extension;

use SilverStripe\AssetAdmin\Forms\UploadField;
use SilverStripe\Assets\Image;
use SilverStripe\Core\Extension;
use SilverStripe\Forms\FieldList;
use SilverStripe\Forms\HTMLEditor\HTMLEditorField;
use SilverStripe\Forms\TextField;

class CustomSiteConfig extends Extension
{
    private static $db = [
        'Email' => 'Varchar(255)',
        'Facebook' => 'Varchar(255)',
        'Twitter' => 'Varchar(255)',
        'LinkedIn' => 'Varchar(255)',
        'Instagram' => 'Varchar(255)',
        'Address' => 'Varchar(255)',
        'Nomer' => 'Varchar(255)',
        
    ];

    private static $has_one = [
        'Image' => Image::class,
        'BlogImage' => Image::class,
        'BlogImage2' => Image::class,
    ];

    private static $owns = [
        'Image',
        'BlogImage' ,
        'BlogImage2',
    ];

    public function updateCMSFields(FieldList $fields)
    {
        $fields->addFieldToTab('Root.Main', TextField::create('Facebook', 'Facebook Link'));
        $fields->addFieldToTab('Root.Main', TextField::create('Twitter', 'Twitter Link'));
        $fields->addFieldToTab('Root.Main', TextField::create('LinkedIn', 'LinkedIn Link'));
        $fields->addFieldToTab('Root.Main', TextField::create('Instagram', 'Instagram Link'));
        $fields->addFieldToTab('Root.Main', TextField::create('Email', 'SendMessageTo'));
        $fields->addFieldToTab('Root.Main', TextField::create('Address', 'Address'));
        $fields->addFieldToTab('Root.Main', TextField::create('Nomer', 'Nomer Telpon'));
        $fields->addFieldToTab('Root.Main', UploadField::create('Image'));
        $fields->addFieldToTab('Root.Main', UploadField::create('BlogImage'));
        $fields->addFieldToTab('Root.Main', UploadField::create('BlogImage2'));
    }
}