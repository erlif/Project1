<?php
$val .= '<div ';

$val .= $scope->locally()->XML_val('AttributesHTML', null, true);
$val .= '>
	';

if ($scope->locally()->obj('Options', null, true)->hasValue('Count', null, true)) { 
$val .= '
		';

$scope->locally()->obj('Options', null, true); $scope->pushScope(); while (($key = $scope->next()) !== false) {
$val .= '
			<div class="checkbox form-check ';

$val .= $scope->locally()->XML_val('Class', null, true);
$val .= '">
				<label class="form-check-label">
					<input id="';

$val .= $scope->locally()->XML_val('ID', null, true);
$val .= '" class="checkbox form-check-input" name="';

$val .= $scope->locally()->XML_val('Name', null, true);
$val .= '" type="checkbox" value="';

$val .= $scope->locally()->XML_val('Value', null, true);
$val .= '"';

if ($scope->locally()->hasValue('isChecked', null, true)) { 
$val .= ' checked="checked"';


}
if ($scope->locally()->hasValue('isDisabled', null, true)) { 
$val .= ' disabled="disabled"';


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
	';


}else { 
$val .= '
		<p>No options available</p>
	';


}
$val .= '
</div>
';

