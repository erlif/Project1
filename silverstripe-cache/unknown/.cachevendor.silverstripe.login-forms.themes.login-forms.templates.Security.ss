<?php
$val .= '<!DOCTYPE html>
<html lang="';

$val .= $scope->locally()->XML_val('ContentLocale', null, true);
$val .= '">
    <head>
        ';

if ($scope->locally()->obj('SiteConfig', null, true)->hasValue('Title', null, true)) { 
$val .= '
            <title>';

$val .= $scope->locally()->obj('SiteConfig', null, true)->XML_val('Title', null, true);
$val .= ': ';

$val .= _t('SilverStripe\LoginForms.LOGIN',"Log in");
$val .= '</title>
            ';

$val .= $scope->locally()->obj('Metatags', [false], true)->XML_val('RAW', null, true);
$val .= '
        ';


}else { 
$val .= '
            ';

$val .= $scope->locally()->obj('Metatags', null, true)->XML_val('RAW', null, true);
$val .= '
        ';


}
$val .= '
        <meta name="viewport" content="width=device-width,initial-scale=1.0" />
        <meta name="color-scheme" content="light ';

if ($scope->locally()->hasValue('darkModeIsEnabled', null, true)) { 
$val .= 'dark';


}else { 
$val .= 'only';


}
$val .= '" />
        ';

\SilverStripe\View\Requirements::css('silverstripe/admin: client/dist/styles/bundle.css');
$val .= '
        ';

\SilverStripe\View\Requirements::css('silverstripe/login-forms: client/dist/styles/bundle.css');
$val .= '
        ';

if ($scope->locally()->hasValue('darkModeIsEnabled', null, true)) { 
$val .= '
            ';

\SilverStripe\View\Requirements::css('silverstripe/login-forms: client/dist/styles/darkmode.css');
$val .= '
        ';


}
$val .= '
        ';

\SilverStripe\View\Requirements::javascript('silverstripe/login-forms: client/dist/js/bundle.js');
$val .= '
    </head>
    <body ';

if ($scope->locally()->hasValue('darkModeIsEnabled', null, true)) { 
$val .= 'class="dark-mode-enabled"';


}
$val .= '>
        ';

$val .= \SilverStripe\View\SSViewer::execute_template([["type" => "Includes", 'AppHeader'], 'AppHeader'], $scope->getItem(), [], $scope, true);

$val .= '

        <main class="login-form">
            <div class="login-form__header">
            ';

if ($scope->locally()->hasValue('Title', null, true)) { 
$val .= '
                <h2 class="login-form__title">';

$val .= $scope->locally()->XML_val('Title', null, true);
$val .= '</h2>
            ';


}
$val .= '
            </div>

            ';

if ($scope->locally()->hasValue('Message', null, true)) { 
$val .= '
                <p class="login-form__message
                    ';

if ($scope->locally()->hasValue('MessageType', null, true)&&!$scope->locally()->hasValue('AlertType', null, true)) { 
$val .= 'login-form__message--';

$val .= $scope->locally()->XML_val('MessageType', null, true);

}
$val .= '
                    ';

if ($scope->locally()->hasValue('AlertType', null, true)) { 
$val .= 'login-form__message--';

$val .= $scope->locally()->XML_val('AlertType', null, true);

}
$val .= '"
                >
                    ';

$val .= $scope->locally()->XML_val('Message', null, true);
$val .= '
                </p>
            ';


}
$val .= '

            ';

if ($scope->locally()->hasValue('Content', null, true)&&$scope->locally()->XML_val('Content', null, true)!=$scope->locally()->XML_val('Message', null, true)) { 
$val .= '
                <div class="login-form__content">';

$val .= $scope->locally()->XML_val('Content', null, true);
$val .= '</div>
            ';


}
$val .= '

            ';

$val .= $scope->locally()->XML_val('Form', null, true);
$val .= '
        </main>

        <footer class="silverstripe-brand">
            ';

$val .= \SilverStripe\View\SSViewer::execute_template([["type" => "Includes", 'SilverStripeLogo'], 'SilverStripeLogo'], $scope->getItem(), [], $scope, true);

$val .= '
        </footer>
    </body>
</html>
';

