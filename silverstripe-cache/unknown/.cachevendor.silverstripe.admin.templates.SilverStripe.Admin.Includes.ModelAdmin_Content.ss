<?php
$val .= '<div class="cms-content fill-height flexbox-area-grow cms-tabset center ';

$val .= $scope->locally()->XML_val('BaseCSSClasses', null, true);
$val .= '" data-layout-type="border" data-pjax-fragment="Content" id="ModelAdmin">

	<div class="cms-content-header north">
		<div class="cms-content-header-info vertical-align-items flexbox-area-grow">
			<div class="breadcrumbs-wrapper">
				<span class="cms-panel-link crumb last">
					';

if ($scope->locally()->hasValue('SectionTitle', null, true)) { 
$val .= '
						';

$val .= $scope->locally()->XML_val('SectionTitle', null, true);
$val .= '
					';


}else { 
$val .= '
						';

$val .= _t('SilverStripe\Admin\ModelAdmin.Title','Data Models');
$val .= '
					';


}
$val .= '
				</span>
			</div>
		</div>

		<div class="cms-content-header-tabs cms-tabset-nav-primary ss-ui-tabs-nav">
			<ul class="cms-tabset-nav-primary">
				';

$scope->locally()->obj('ManagedModelTabs', null, true); $scope->pushScope(); while (($key = $scope->next()) !== false) {
$val .= '
				<li class="tab-';

$val .= $scope->locally()->XML_val('Tab', null, true);
$val .= ' ';

$val .= $scope->locally()->XML_val('LinkOrCurrent', null, true);
if ($scope->locally()->XML_val('LinkOrCurrent', null, true)=='current') { 
$val .= ' ui-tabs-active';


}
$val .= '">
					<a href="';

$val .= $scope->locally()->XML_val('Link', null, true);
$val .= '" class="cms-panel-link" title="';

$val .= $scope->locally()->obj('Title', null, true)->XML_val('ATT', null, true);
$val .= '">';

$val .= $scope->locally()->XML_val('Title', null, true);
$val .= '</a>
				</li>
				';


}; $scope->popScope(); 
$val .= '
			</ul>
		</div>
	</div>

	<div class="cms-content-fields center ui-widget-content cms-panel-padded fill-height flexbox-area-grow" data-layout-type="border">
		';

$val .= $scope->locally()->XML_val('Tools', null, true);
$val .= '

		<div class="cms-content-view">
			';

$val .= $scope->locally()->XML_val('EditForm', null, true);
$val .= '
		</div>
	</div>

</div>
';

