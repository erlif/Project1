<?php
if ($scope->locally()->hasValue('UseButtonTag', null, true)) { 
$val .= '
	<button ';

$val .= $scope->locally()->XML_val('AttributesHTML', null, true);
$val .= '>
		';

if ($scope->locally()->hasValue('ButtonContent', null, true)) { 
$val .= $scope->locally()->XML_val('ButtonContent', null, true);

}else { 
$val .= '<span>';

$val .= $scope->locally()->obj('Title', null, true)->XML_val('XML', null, true);
$val .= '</span>';


}
$val .= '
	</button>
';


}else { 
$val .= '
	<input ';

$val .= $scope->locally()->XML_val('AttributesHTML', null, true);
$val .= ' />
';


}
$val .= '
';

