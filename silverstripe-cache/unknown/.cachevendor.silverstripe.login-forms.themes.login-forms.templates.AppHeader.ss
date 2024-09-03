<?php
$val .= '<header class="app-brand">
    <a
        class="app-brand__link"
        href="';

$val .= $scope->locally()->XML_val('AbsoluteBaseURL', null, true);
$val .= '"
        title="';

$val .= _t('SilverStripe\LoginForms.BackToHomePage',"Go back to homepage");
$val .= '"
    >
        ';

$val .= \SilverStripe\View\SSViewer::execute_template([["type" => "Includes", 'AppBrand'], 'AppBrand'], $scope->getItem(), [], $scope, true);

$val .= '

        <h1 class="app-brand__name">
            ';

$val .= $scope->locally()->obj('SiteConfig', null, true)->XML_val('Title', null, true);
$val .= '
            ';

if (!$scope->locally()->obj('SiteConfig', null, true)->hasValue('Title', null, true)) { 
$val .= 'SilverStripe';


}
$val .= '
        </h1>
    </a>
</header>
';

