<?php

$val .= '
';

if ($scope->locally()->hasValue('Pages', null, true)) { 
$val .= '
	';

$scope->locally()->obj('Pages', null, true); $scope->pushScope(); while (($key = $scope->next()) !== false) {
if ($scope->locally()->hasValue('IsLast', null, true)) { 
$val .= $scope->locally()->obj('MenuTitle', null, true)->XML_val('XML', null, true);

}else { 
if (!$scope->locally()->obj('Up', null, true)->hasValue('Unlinked', null, true)) { 
$val .= '<a href="';

$val .= $scope->locally()->XML_val('Link', null, true);
$val .= '" class="breadcrumb-';

$val .= $scope->locally()->XML_val('Pos', null, true);
$val .= '">';


}
$val .= $scope->locally()->obj('MenuTitle', null, true)->XML_val('XML', null, true);
if (!$scope->locally()->obj('Up', null, true)->hasValue('Unlinked', null, true)) { 
$val .= '</a>';


}
$val .= ' ';

$val .= $scope->locally()->obj('Up', null, true)->obj('Delimiter', null, true)->XML_val('RAW', null, true);
$val .= ' ';


}

}; $scope->popScope(); 
$val .= '
';


}
$val .= '
';

