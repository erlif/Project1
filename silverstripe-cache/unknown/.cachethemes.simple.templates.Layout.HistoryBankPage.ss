<?php
$val .= '<style>
    .bg {
      background-color: grey;
    }
  
    .text {
      font-family: \'Poppins\';
    }
    @media (max-width:400px) {
      .pdl{
        scale: 0.78 ;
        transform-origin: center 
      }
      
    }
    @media (max-width:375px ) {
      .pdl{
        transform-origin: left !important;
      }
      
    }
    @media (max-width: 735px){
      .table {
        scale:0.8;
        transform-origin:left;
      }
    }
    @media (max-width: 510px){
      .table {
        scale:0.7;
        transform-origin:left;
      }
    }

    @media (max-width: 450px){
      .table {
        scale:0.6;
        transform-origin:left;
      }
    }
  </style>
  
  
  
  <div class="bg">
    <h4 class="text-center p-4">History Payment</h4>
  </div>
  <div class="container pdl">
    <table class="table caption-top">
      <caption>History Payment</caption>
      <thead>
        <tr class="rows">
          <th scope="col">ID</th>
          <th scope="col">Name</th>
          <th scope="col">Date Create</th>
          <th scope="col">Email</th>
          <th scope="col">Phone</th>
          <th scope="col">Invoice ID</th>
          <th scope="col">Status</th>
        <th></th>
  
        </tr>
      </thead>
      <tbody>
        ';

$scope->locally()->obj('GetStatus', null, true); $scope->pushScope(); while (($key = $scope->next()) !== false) {
$val .= '
          ';

$scope->locally()->obj('Lastorder', null, true); $scope->pushScope(); while (($key = $scope->next()) !== false) {
$val .= '
            <tr class="rows">
              <td class="col">';

$val .= $scope->locally()->XML_val('ID', null, true);
$val .= ' </td>
              <td class="col">';

$val .= $scope->locally()->XML_val('CostumerName', null, true);
$val .= '</td>
              <td class="col">';

$val .= $scope->locally()->XML_val('Created', null, true);
$val .= '</td>
              <td class="col">';

$val .= $scope->locally()->XML_val('Email', null, true);
$val .= '</td>
              <td class="col">';

$val .= $scope->locally()->XML_val('Phone', null, true);
$val .= '</td>
              <td class="col">';

$val .= $scope->locally()->XML_val('Invoice', null, true);
$val .= '</td>
              <td class="col">';

$val .= $scope->locally()->obj('Up', null, true)->XML_val('StatusMessage', null, true);
$val .= '</td>
              <td>
                <a href="/pindah/history-bank/nota/';

$val .= $scope->locally()->XML_val('ID', null, true);
$val .= '">
                  <button type="button" class="btn kfd" style=" background-color: #b18b5e;"  id="button">
                    Check Detail
                  </button>
                </a>
              </td>
            </tr>
            ';


}; $scope->popScope(); 
$val .= '
        ';


}; $scope->popScope(); 
$val .= '
      </tbody>
    </table>
  </div>';

