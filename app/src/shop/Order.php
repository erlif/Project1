<?php
use SilverStripe\ORM\DataObject;
use SilverStripe\Security\Member;

Class Order extends DataObject{

    private static $db = [
        'Invoice' => 'Int',
    ];

    private static $has_one = [
        "LastOrder" => LastOrder::class,
        "MemberIdentity" => MemberIdentity::class,
        "DataCod" => DataCod::class,
        "Member" => Member::class
        
    ];



    private static $has_many = [
        'CartItems' => CartItem::class,
    ] ;
}