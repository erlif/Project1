<?php
$val .= '<div id="settings-controller-cms-content" class="flexbox-area-grow fill-height cms-content cms-tabset ';

$val .= $scope->locally()->XML_val('BaseCSSClasses', null, true);
$val .= '" data-layout-type="border" data-pjax-fragment="Content" data-ignore-tab-state="true">

	<div class="cms-content-header north vertical-align-items">
		';

$scope->locally()->obj('EditForm', null, true); $scope->pushScope();
$val .= '
			<div class="cms-content-header-info flexbox-area-grow vertical-align-items">
				';

$scope->locally()->obj('Controller', null, true); $scope->pushScope();
$val .= '
					';

$val .= \SilverStripe\View\SSViewer::execute_template([["type" => "Includes", 'SilverStripe\\Admin\\CMSBreadcrumbs'], 'SilverStripe\\Admin\\CMSBreadcrumbs'], $scope->getItem(), [], $scope, true);

$val .= '
				';


; $scope->popScope(); 
$val .= '
			</div>

			';

if ($scope->locally()->obj('Fields', null, true)->hasValue('hasTabset', null, true)) { 
$val .= '
				';

$scope->locally()->obj('Fields', null, true)->obj('fieldByName', ['Root'], true); $scope->pushScope();
$val .= '
				<div class="cms-content-header-tabs cms-tabset-nav-primary ss-ui-tabs-nav">
					<ul class="cms-tabset-nav-primary">
					';

$scope->locally()->obj('Tabs', null, true); $scope->pushScope(); while (($key = $scope->next()) !== false) {
$val .= '
						<li';

if ($scope->locally()->hasValue('extraClass', null, true)) { 
$val .= ' class="';

$val .= $scope->locally()->XML_val('extraClass', null, true);
$val .= '"';


}
$val .= '><a href="' . (\SilverStripe\View\SSViewer::getRewriteHashLinksDefault()
    ? \SilverStripe\Core\Convert::raw2att( preg_replace("/^(\\/)+/", "/", $_SERVER['REQUEST_URI'] ) )
    : "") . '#';

$val .= $scope->locally()->XML_val('id', null, true);
$val .= '">';

$val .= $scope->locally()->XML_val('Title', null, true);
$val .= '</a></li>
					';


}; $scope->popScope(); 
$val .= '
					</ul>
				</div>
				';


; $scope->popScope(); 
$val .= '
			';


}
$val .= '
		';


; $scope->popScope(); 
$val .= '
	</div>

	';

$val .= $scope->locally()->XML_val('EditForm', null, true);
$val .= '

</div>
';

