<?php
$val .= '<div id="';

$val .= $scope->locally()->obj('ImportModalID', null, true)->XML_val('ATT', null, true);
$val .= '" class="modal fade grid-field-import" tabindex="-1" role="dialog">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                ';

if ($scope->locally()->hasValue('ImportModalTitle', null, true)) { 
$val .= '
                    <h2 class="modal-title">';

$val .= $scope->locally()->XML_val('ImportModalTitle', null, true);
$val .= '</h2>
                ';


}
$val .= '
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">×</span>
                </button>
            </div>
            <div class="modal-body">
                ';

if ($scope->locally()->hasValue('ImportIframe', null, true)) { 
$val .= '
                    <iframe src="';

$val .= $scope->locally()->obj('ImportIframe', null, true)->XML_val('ATT', null, true);
$val .= '" width="100%%" height="400px" frameBorder="0"></iframe>
                ';


}else if ($scope->locally()->hasValue('ImportForm', null, true)) { 
$val .= '
                    ';

$val .= $scope->locally()->XML_val('ImportForm', null, true);
$val .= '
                ';


}
$val .= '
            </div>
        </div>
    </div>
</div>
';

