<?php
use SilverStripe\Dev\Debug;
use SilverStripe\Forms\ReadonlyField;
use SilverStripe\ORM\DataObject;
use SilverStripe\ORM\FieldType\DBHTMLText;
use SilverStripe\Security\Member;


class LastOrder extends DataObject
{
    private static $db = [
        'Invoice' => 'Int',
        'CostumerName' => 'Text',
        'Email' => 'Text',
        'Phone' => 'Varchar',
        'Signature' => 'Varchar',
    ];

    private static $has_one = [
        "Member" => Member::class,
    ];

    private static $has_many = [
        "GetStatus" => GetStatus::class
    ];
    public function summaryFields()
    {
        return [
            'MemberID' => 'Member ID',
            'Invoice' => 'Invoice ID',
            'CostumerName' => 'Costumer Name',
            'Email' => 'Email',
            'Phone' => 'Phone',
            'StatusMessage' => 'Status Message'
        ];
    }

    public function getstatusmessage()
    {
        $Statuss = $this->GetStatus()->last();
        $summary = '';
        if($Statuss ){
            $summary = sprintf(
                '%s',
                $Statuss->StatusMessage,
            );
        }

        return DBHTMLText::create()->setValue($summary);
        // return DBHTMLText::create()->setValue($summary);
    }


    public function getCMSFields()
    {
        $fields = parent::getCMSFields();
        $fields->addFieldToTab('Root.Main', ReadonlyField::create('MemberID', 'Member ID'));
        $fields->addFieldToTab('Root.Main', ReadonlyField::create('Invoice', 'Invoice'));
        $fields->addFieldToTab('Root.Main', ReadonlyField::create('CostumerName', 'Costumer Name'));
        $fields->addFieldToTab('Root.Main', ReadonlyField::create('Email', 'Email'));
        $fields->addFieldToTab('Root.Main', ReadonlyField::create('Phone', 'Phone'));
        $fields->addFieldToTab('Root.Main', ReadonlyField::create('Signature', 'Signature'));
        $fields->addFieldToTab('Root.Main', ReadonlyField::create('StatusMessage', 'StatusMessage', $this->getstatusmessage()));
        // $fields->addFieldToTab('Root.Main', ReadonlyField::create('OrderID', 'Order', $this->getorderSummary()));


        return $fields;
    }
}