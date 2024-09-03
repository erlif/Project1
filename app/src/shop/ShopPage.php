<?php

use SilverStripe\Forms\GridField\GridField;
use SilverStripe\Forms\GridField\GridFieldConfig_RecordEditor;
use SilverStripe\Forms\GridField\GridFieldComponent;

class ShopPage extends Page {

    private static $has_many = [
        'DetailComments' => DetailComment::class
    ];
}
