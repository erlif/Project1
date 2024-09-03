<?php
if ($scope->locally()->hasValue('CurrentMember', null, true)) { 
$val .= '

    ';


$val .= '



  
   <table class="table text-center container" style="--bs-table-bg: transparent !important; --bs-table-border-color: black;">
    <thead>
      <tr>
        <div class="rows">
         <th scope="col-2">Item</th>
          <th scope="col-2" >Title</th>
          <th scope="col-2">Unit Price</th>
          <th scope="col-2">Quantity</th>
          <th scope="col-2">Total</th>
        </div>
      </tr>
    </thead>
    <tbody>
      ';

$scope->locally()->obj('CartItems', null, true); $scope->pushScope(); while (($key = $scope->next()) !== false) {
$val .= '
        <tr>
          <th>
            ';

if ($scope->locally()->hasValue('Image', null, true)) { 
$val .= '
              <img src="';

$val .= $scope->locally()->obj('Image', null, true)->XML_val('URL', null, true);
$val .= '" alt="';

$val .= $scope->locally()->XML_val('Title', null, true);
$val .= '" style="max-width: 100px;" />
          ';


}else { 
$val .= '
              <p>No Upload Image</p>
          ';


}
$val .= '
          </th>
          <th >';

$val .= $scope->locally()->XML_val('Title', null, true);
$val .= '</th>
          <td>';

$val .= $scope->locally()->XML_val('Harga', null, true);
$val .= '</td>
          <td>';

$val .= $scope->locally()->XML_val('Quantity', null, true);
$val .= '</td>
          <td>';

$val .= $scope->locally()->XML_val('Total', null, true);
$val .= '</td>
        </tr>
        ';


}; $scope->popScope(); 
$val .= '

    </tbody>
  </table>















    ';


}else { 
$val .= '
      <p>You are not logged in or your session has expired. Please <a href="http://localhost/pindah/member">login</a>
        again.</p>
  
  
  
    ';


}
