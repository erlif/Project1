<?php
$val .= '<form ';

$val .= $scope->locally()->XML_val('FormAttributes', null, true);
$val .= ' data-layout-type="border">
    ';

$scope->locally()->obj('Fields', null, true); $scope->pushScope(); while (($key = $scope->next()) !== false) {
$val .= '
        ';

$val .= $scope->locally()->XML_val('FieldHolder', null, true);
$val .= '
    ';


}; $scope->popScope(); 
$val .= '
</form>
';

