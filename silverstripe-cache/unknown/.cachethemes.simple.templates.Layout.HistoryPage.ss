<?php
$val .= '
<style>
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
</style>



<div class="bg">
  <h4 class="text-center p-4">History Cart</h4>
</div>
<div class="container pdl">
  <table class="table caption-top">
    <caption>History Cart</caption>
    <thead>
      <tr class="rows">
        <th scope="col">Name</th>
        <th scope="col">OrderID</th>
        <th scope="col">DateCreate</th>
        <th scope="col">Status</th>
        <th scope="col"></th>

      </tr>
    </thead>
    <tbody>
      
      ';

$scope->locally()->obj('Payment', null, true); $scope->pushScope(); while (($key = $scope->next()) !== false) {
$val .= '
        ';

$scope->locally()->obj('Order', null, true); $scope->pushScope(); while (($key = $scope->next()) !== false) {
$val .= '
          <tr class="rows">
            <td class="col">';

$val .= $scope->locally()->obj('CurrentMember', null, true)->XML_val('Surname', null, true);
$val .= '</td>
            <td class="col">';

$val .= $scope->locally()->XML_val('ID', null, true);
$val .= ' </td>
            <td class="col">';

$val .= $scope->locally()->XML_val('Created', null, true);
$val .= '</td>
            <td class="col" id="Status">';

$val .= $scope->locally()->obj('Up', null, true)->XML_val('Status', null, true);
$val .= ' </td>
            <td>
            <a href="/pindah/history/nota/';

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
</div>

  

  <script>
      
      var Status = document.getElementById(\'Status\');
      if(Status === \'Approved\'){
        var button = document..getElementById(\'button\');
        button.classList.remove("disabled");
        
        }
      </script>

    


';

