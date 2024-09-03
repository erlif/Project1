<?php
$val .= '<div class="importSpec" id="SpecFor';

$val .= $scope->locally()->XML_val('ClassName', null, true);
$val .= '">
	<a href="' . (\SilverStripe\View\SSViewer::getRewriteHashLinksDefault()
    ? \SilverStripe\Core\Convert::raw2att( preg_replace("/^(\\/)+/", "/", $_SERVER['REQUEST_URI'] ) )
    : "") . '#SpecDetailsFor';

$val .= $scope->locally()->XML_val('ClassName', null, true);
$val .= '" class="detailsLink">';

$val .= _t('SilverStripe\Admin\ModelAdmin.IMPORTSPECLINK','Show Specification for {model}',['model'=>$scope->locally()->XML_val('ModelName', null, true)]);
$val .= '</a>
	<div class="details" id="SpecDetailsFor';

$val .= $scope->locally()->XML_val('ClassName', null, true);
$val .= '">
	<h4>';

$val .= _t('SilverStripe\Admin\ModelAdmin.IMPORTSPECTITLE','Specification for {model}',['model'=>$scope->locally()->XML_val('ModelName', null, true)]);
$val .= '</h4>
		<h5>';

$val .= _t('SilverStripe\Admin\ModelAdmin.IMPORTSPECFIELDS','Database columns');
$val .= '</h5>
		';

$scope->locally()->obj('Fields', null, true); $scope->pushScope(); while (($key = $scope->next()) !== false) {
$val .= '
		<dl>
			<dt><em>';

$val .= $scope->locally()->XML_val('Name', null, true);
$val .= '</em></dt>
			<dd>';

$val .= $scope->locally()->XML_val('Description', null, true);
$val .= '</dd>
		</dl>
		';


}; $scope->popScope(); 
$val .= '

		<h5>';

$val .= _t('SilverStripe\Admin\ModelAdmin.IMPORTSPECRELATIONS','Relations');
$val .= '</h5>
		';

$scope->locally()->obj('Relations', null, true); $scope->pushScope(); while (($key = $scope->next()) !== false) {
$val .= '
		<dl>
			<dt><em>';

$val .= $scope->locally()->XML_val('Name', null, true);
$val .= '</em></dt>
			<dd>';

$val .= $scope->locally()->XML_val('Description', null, true);
$val .= '</dd>
		</dl>
		';


}; $scope->popScope(); 
$val .= '
	</div>
</div>
';

