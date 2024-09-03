<?php
$val .= \SilverStripe\View\SSViewer::execute_template([["type" => "Includes", 'SilverStripe\\CMS\\Controllers\\CMSPagesController_ContentToolActions'], 'SilverStripe\\CMS\\Controllers\\CMSPagesController_ContentToolActions'], $scope->getItem(), [], $scope, true);

$val .= '

<div class="ss-dialog cms-page-add-form-dialog cms-dialog-content" id="cms-page-add-form" title="';

$val .= _t('SilverStripe\\CMS\\Controllers\\CMSMain.AddNew','Add new page');
$val .= '">
	';

$val .= $scope->locally()->XML_val('AddForm', null, true);
$val .= '
</div>

<div class="cms-panel-content center">
	<div class="cms-list" data-url-list="';

$val .= $scope->locally()->obj('Link', ['getListViewHTML'], true)->XML_val('ATT', null, true);
$val .= '">
		';

$val .= $scope->locally()->XML_val('ListViewForm', null, true);
$val .= '
	</div>
</div>
';

