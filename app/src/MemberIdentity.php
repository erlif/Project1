<?php


use SilverStripe\ORM\DataObject;
use SilverStripe\Security\Member;

class MemberIdentity extends DataObject {
    private static $db = [
        'FullName' => 'Varchar(255)',
        'PhoneNumber' => 'Varchar(20)',
        'Provinsi' => 'Varchar(255)',
        'Kota' => 'Varchar(255)',
        'Kecamatan' => 'Varchar(255)',
        'Kelurahan'=> 'Varchar(255)',
        'AddressDetail' => 'Varchar(255)',
        "Title"=> "Varchar",
        'Quantity' => 'Int',  
        'Harga' => 'Varchar' 


    ];

    private static $has_one = [
        'Member' => Member::class,
    ];
    
    private static $has_many = [
        'CartItem' => CartItem::class,
    ];

    private static $summary_fields = [
        'FullName' => 'Full Name',
        'PhoneNumber' => 'Phone Number',
        'Provinsi'=> 'Provinsi',
        'Kota'=> 'Kota',
        'Kecamatan'=> 'Kecamatan',
        'Kelurahan'=> 'Kelurahan',
        'AddressDetail' => 'Address Detail',
        "Title"=> "Varchar",
        'Quantity' => 'Int',  
        'Harga' => 'Varchar' 
    ];
}
