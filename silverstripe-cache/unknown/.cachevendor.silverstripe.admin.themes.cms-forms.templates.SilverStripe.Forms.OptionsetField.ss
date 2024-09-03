<?php
$val .= '<div ';

$val .= $scope->locally()->XML_val('AttributesHTML', null, true);
$val .= ' ';

$val .= \SilverStripe\View\SSViewer::execute_template([["type" => "Includes", 'SilverStripe/Forms/AriaAttributes'], 'SilverStripe/Forms/AriaAttributes'], $scope->getItem(), [], $scope, true);

$val .= '>
	';

$scope->locally()->obj('Options', null, true); $scope->pushScope(); while (($key = $scope->next()) !== false) {
$val .= '
		<div class="radio form-check ';

$val .= $scope->locally()->XML_val('Class', null, true);
$val .= '">
			<label class="form-check-label">
				<input class="form-check-input" id="';

$val .= $scope->locally()->XML_val('ID', null, true);
$val .= '" name="';

$val .= $scope->locally()->XML_val('Name', null, true);
$val .= '" type="radio" value="';

$val .= $scope->locally()->XML_val('Value', null, true);
$val .= '"';

if ($scope->locally()->hasValue('isChecked', null, true)) { 
$val .= ' checked';


}
if ($scope->locally()->hasValue('isDisabled', null, true)) { 
$val .= ' disabled';


}
$val .= ' ';

if ($scope->locally()->obj('Up', null, true)->hasValue('Required', null, true)) { 
$val .= 'required';


}
$val .= ' />
				';

$val .= $scope->locally()->XML_val('Title', null, true);
$val .= '
			</label>
		</div>
	';


}; $scope->popScope(); 
$val .= '
</div>
';

