<?php 
use SilverStripe\ORM\DataObject;

class GetStatus extends DataObject{
    private static $db = [
        'StatusMessage' => "Text"
    ];

    private static $has_one = [
        "LastOrder" => LastOrder::class
    ];
    
}