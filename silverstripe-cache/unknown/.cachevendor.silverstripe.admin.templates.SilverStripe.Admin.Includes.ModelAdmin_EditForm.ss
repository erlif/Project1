<?php
$val .= \SilverStripe\View\SSViewer::execute_template([["type" => "Includes", 'SilverStripe/Forms/Form'], 'SilverStripe/Forms/Form'], $scope->getItem(), [], $scope, true);

$val .= '
';

