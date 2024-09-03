<?php
$val .= \SilverStripe\View\SSViewer::execute_template([["type" => "Includes", 'SilverStripe\\CMS\\Controllers\\CMSPagesController_ContentToolActions'], 'SilverStripe\\CMS\\Controllers\\CMSPagesController_ContentToolActions'], $scope->getItem(), ['View' => 'Tree'], $scope, true);

$val .= '

<div class="ss-dialog cms-page-add-form-dialog cms-dialog-content" id="cms-page-add-form" title="';

$val .= _t('SilverStripe\CMS\Controllers\CMSMain.AddNew','Add new page');
$val .= '">
	';

$val .= $scope->locally()->XML_val('AddForm', null, true);
$val .= '
</div>

';

$val .= $scope->locally()->XML_val('ExtraTreeTools', null, true);
$val .= '

';

if ($scope->locally()->hasValue('TreeIsFiltered', null, true)) { 
$val .= '
    <div class="cms-tree-filtered cms-notice flexbox-area-grow">
		<strong>';

$val .= _t('SilverStripe\CMS\Controllers\CMSMain.TreeFiltered','Showing search results.');
$val .= '</strong>
		<a href="javascript:void(0)" class="clear-filter">
			';

$val .= _t('SilverStripe\CMS\Controllers\CMSMain.TreeFilteredClear','Clear');
$val .= '
		</a>

		<div class="cms-tree ';

if ($scope->locally()->hasValue('TreeIsFiltered', null, true)) { 
$val .= 'filtered-list';


}
$val .= '"
			data-url-tree="';

$val .= $scope->locally()->obj('LinkWithSearch', [$scope->locally()->XML_val('Link', ['getsubtree'], true)], true)->XML_val('ATT', null, true);
$val .= '"
			data-url-savetreenode="';

$val .= $scope->locally()->obj('Link', ['savetreenode'], true)->XML_val('ATT', null, true);
$val .= '"
			data-url-updatetreenodes="';

$val .= $scope->locally()->obj('Link', ['updatetreenodes'], true)->XML_val('ATT', null, true);
$val .= '"
			data-url-addpage="';

$val .= $scope->locally()->obj('LinkPageAdd', ['AddForm/?action_doAdd=1', 'ParentID=%s&PageType=%s'], true)->XML_val('ATT', null, true);
$val .= '"
			data-url-editpage="';

$val .= $scope->locally()->obj('LinkPageEdit', ['%s'], true)->XML_val('ATT', null, true);
$val .= '"
			data-url-duplicate="';

$val .= $scope->locally()->obj('Link', ['duplicate/%s'], true)->XML_val('ATT', null, true);
$val .= '"
			data-url-duplicatewithchildren="';

$val .= $scope->locally()->obj('Link', ['duplicatewithchildren/%s'], true)->XML_val('ATT', null, true);
$val .= '"
			data-url-listview="';

$val .= $scope->locally()->obj('Link', ['?view=list'], true)->XML_val('ATT', null, true);
$val .= '"
			data-hints="';

$val .= $scope->locally()->obj('SiteTreeHints', null, true)->XML_val('ATT', null, true);
$val .= '"
			data-childfilter="';

$val .= $scope->locally()->obj('Link', ['childfilter'], true)->XML_val('ATT', null, true);
$val .= '"
			data-extra-params="SecurityID=';

$val .= $scope->locally()->obj('SecurityID', null, true)->XML_val('ATT', null, true);
$val .= '">
			';

$val .= $scope->locally()->XML_val('SiteTreeAsUL', null, true);
$val .= '
        </div>
    </div>
';


}else { 
$val .= '
    <div class="cms-tree flexbox-area-grow ';

if ($scope->locally()->hasValue('TreeIsFiltered', null, true)) { 
$val .= 'filtered-list';


}
$val .= '"
		data-url-tree="';

$val .= $scope->locally()->obj('LinkWithSearch', [$scope->locally()->XML_val('Link', ['getsubtree'], true)], true)->XML_val('ATT', null, true);
$val .= '"
		data-url-savetreenode="';

$val .= $scope->locally()->obj('Link', ['savetreenode'], true)->XML_val('ATT', null, true);
$val .= '"
		data-url-updatetreenodes="';

$val .= $scope->locally()->obj('Link', ['updatetreenodes'], true)->XML_val('ATT', null, true);
$val .= '"
		data-url-addpage="';

$val .= $scope->locally()->obj('LinkPageAdd', ['AddForm/?action_doAdd=1', 'ParentID=%s&PageType=%s'], true)->XML_val('ATT', null, true);
$val .= '"
		data-url-editpage="';

$val .= $scope->locally()->obj('LinkPageEdit', ['%s'], true)->XML_val('ATT', null, true);
$val .= '"
		data-url-duplicate="';

$val .= $scope->locally()->obj('Link', ['duplicate/%s'], true)->XML_val('ATT', null, true);
$val .= '"
		data-url-duplicatewithchildren="';

$val .= $scope->locally()->obj('Link', ['duplicatewithchildren/%s'], true)->XML_val('ATT', null, true);
$val .= '"
		data-url-listview="';

$val .= $scope->locally()->obj('Link', ['?view=list'], true)->XML_val('ATT', null, true);
$val .= '"
		data-hints="';

$val .= $scope->locally()->obj('SiteTreeHints', null, true)->XML_val('ATT', null, true);
$val .= '"
		data-childfilter="';

$val .= $scope->locally()->obj('Link', ['childfilter'], true)->XML_val('ATT', null, true);
$val .= '"
		data-extra-params="SecurityID=';

$val .= $scope->locally()->obj('SecurityID', null, true)->XML_val('ATT', null, true);
$val .= '">
		';

$val .= $scope->locally()->XML_val('SiteTreeAsUL', null, true);
$val .= '
	</div>
';


}
$val .= '
';

