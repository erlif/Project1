<?php
$val .= '<input ';

$val .= $scope->locally()->XML_val('getAttributesHTML', ['class'], true);
$val .= ' class="form-check-input ';

$val .= $scope->locally()->XML_val('extraClass', null, true);
$val .= '" ';

$val .= \SilverStripe\View\SSViewer::execute_template([["type" => "Includes", 'SilverStripe/Forms/AriaAttributes'], 'SilverStripe/Forms/AriaAttributes'], $scope->getItem(), [], $scope, true);

$val .= ' />
';

