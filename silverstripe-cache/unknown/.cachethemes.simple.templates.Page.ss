<?php
$val .= '<!DOCTYPE html>
<!--
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
Simple. by Sara (saratusar.com, @saratusar) for Innovatif - an awesome Slovenia-based digital agency (innovatif.com/en)
Change it, enhance it and most importantly enjoy it!
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
-->

<!--[if !IE]><!-->
<html lang="';

$val .= $scope->locally()->XML_val('ContentLocale', null, true);
$val .= '">
<!--<![endif]-->
<!--[if IE 6 ]><html lang="';

$val .= $scope->locally()->XML_val('ContentLocale', null, true);
$val .= '" class="ie ie6"><![endif]-->
<!--[if IE 7 ]><html lang="';

$val .= $scope->locally()->XML_val('ContentLocale', null, true);
$val .= '" class="ie ie7"><![endif]-->
<!--[if IE 8 ]><html lang="';

$val .= $scope->locally()->XML_val('ContentLocale', null, true);
$val .= '" class="ie ie8"><![endif]-->
<head>
	';

$val .= \SilverStripe\View\SSViewer::get_base_tag($val);
$val .= '
	<title>LeadGen</title>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	';

$val .= $scope->locally()->XML_val('MetaTags', [false], true);
$val .= '
	<!--[if lt IE 9]>
	<script src="//html5shiv.googlecode.com/svn/trunk/html5.js"></script>
	<![endif]-->
	';

\SilverStripe\View\Requirements::themedCSS('reset');
$val .= '
	';

\SilverStripe\View\Requirements::themedCSS('typography');
$val .= '
	';

\SilverStripe\View\Requirements::themedCSS('form');
$val .= '
	';

\SilverStripe\View\Requirements::themedCSS('layout');
$val .= '
	<link rel="shortcut icon" href="';

$val .= $scope->locally()->XML_val('resourceURL', ['themes/simple/images/favicon.ico'], true);
$val .= '" />
</head>
<body class="';

$val .= $scope->locally()->obj('ClassName', null, true)->XML_val('ShortName', null, true);
if (!$scope->locally()->hasValue('Menu', [2], true)) { 
$val .= ' no-sidebar';


}
$val .= '" ';

if ($scope->locally()->hasValue('i18nScriptDirection', null, true)) { 
$val .= 'dir="';

$val .= $scope->locally()->XML_val('i18nScriptDirection', null, true);
$val .= '"';


}
$val .= '>
';

$val .= \SilverStripe\View\SSViewer::execute_template([["type" => "Includes", 'Header'], 'Header'], $scope->getItem(), [], $scope, true);

$val .= '
<div class="main " role="main">
	<div class="inner typography line mb-5">
		';

$val .= $scope->locally()->XML_val('Layout', null, true);
$val .= '
	</div>
</div>
';

$val .= \SilverStripe\View\SSViewer::execute_template([["type" => "Includes", 'Footer'], 'Footer'], $scope->getItem(), [], $scope, true);

$val .= '

';

\SilverStripe\View\Requirements::javascript('//code.jquery.com/jquery-3.7.1.min.js');
$val .= '
';

\SilverStripe\View\Requirements::themedJavascript('script');
$val .= '

</body>
</html>
';

