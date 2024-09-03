<?php
$scope->locally()->obj('FieldList', null, true); $scope->pushScope(); while (($key = $scope->next()) !== false) {
$val .= '
	';

$val .= $scope->locally()->XML_val('SmallFieldHolder', null, true);
$val .= '
';


}; $scope->popScope(); 
$val .= '
';

