<?php
use SilverStripe\ORM\DataObject;

 class DetailComment extends DataObject{
    private static $db = [
        // 'Name' => 'Text',
        'Comment' => 'Text',
        'Created' => 'Date'
    ];

    private static $has_one = [
        'Product' => ShopObject::class,
        'Author' => Member::class
    ];

    private static $default_sort = 'Created DESC';

    private static $summary_fields = [
        'Comment' => 'Comment',
        'Created' => 'Date',
        'Author.Name' => 'Author'
    ];
 }