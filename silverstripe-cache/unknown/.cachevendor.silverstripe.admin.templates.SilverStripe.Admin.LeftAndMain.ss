<?php
$val .= '<!DOCTYPE html>
<html lang="';

$val .= $scope->locally()->obj('Locale', null, true)->XML_val('RFC1766', null, true);
$val .= '">
	<head>
	';

$val .= \SilverStripe\View\SSViewer::get_base_tag($val);
$val .= '
	<meta http-equiv="Content-type" content="text/html; charset=utf-8" />
	<meta name="viewport" content="width=device-width, maximum-scale=1.0" />
	<title>';

$val .= $scope->locally()->XML_val('Title', null, true);
$val .= '</title>
</head>
<body class="loading cms" data-frameworkpath="';

$val .= $scope->locally()->XML_val('ModulePath', ['silverstripe/framework'], true);
$val .= '"
	data-member-tempid="';

$val .= $scope->locally()->obj('CurrentMember', null, true)->obj('TempIDHash', null, true)->XML_val('ATT', null, true);
$val .= '" ';

if ($scope->locally()->hasValue('GraphQLLegacy', null, true)) { 
$val .= 'data-graphql-legacy="1"';


}
$val .= '
>
	';

$val .= \SilverStripe\View\SSViewer::execute_template([["type" => "Includes", 'SilverStripe\\Admin\\CMSLoadingScreen'], 'SilverStripe\\Admin\\CMSLoadingScreen'], $scope->getItem(), [], $scope, true);

$val .= '

	<div class="cms-container" data-layout-type="custom">
		';

$val .= $scope->locally()->XML_val('Menu', null, true);
$val .= '
		';

$val .= $scope->locally()->XML_val('Content', null, true);
$val .= '
		';

$val .= $scope->locally()->XML_val('PreviewPanel', null, true);
$val .= '
    </div>
</body>
</html>
';

