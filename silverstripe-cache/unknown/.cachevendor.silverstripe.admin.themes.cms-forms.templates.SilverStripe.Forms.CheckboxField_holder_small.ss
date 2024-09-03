<?php
$val .= '<div id="';

$val .= $scope->locally()->XML_val('HolderID', null, true);
$val .= '" class="form__fieldgroup-item checkboxfield-small form-check field field--small';

if ($scope->locally()->hasValue('extraClass', null, true)) { 
$val .= ' ';

$val .= $scope->locally()->XML_val('extraClass', null, true);

}
$val .= '">
	<label class="form-check-label">
		';

$val .= $scope->locally()->XML_val('Field', null, true);
$val .= '
		';

$val .= $scope->locally()->XML_val('Title', null, true);
$val .= '
        ';

$val .= $scope->locally()->XML_val('RightTitle', null, true);
$val .= '
	</label>
</div>
';

