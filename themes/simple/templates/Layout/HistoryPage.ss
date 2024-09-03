
<style>
  .bg {
    background-color: grey;
  }

  .text {
    font-family: 'Poppins';
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
      
      <% loop $Payment %>
        <% loop $Order %>
          <tr class="rows">
            <td class="col">$CurrentMember.Surname</td>
            <td class="col">$ID </td>
            <td class="col">$Created</td>
            <td class="col" id="Status">$Up.Status </td>
            <td>
            <a href="/pindah/history/nota/$ID">
                <button type="button" class="btn kfd" style=" background-color: #b18b5e;"  id="button">
                  Check Detail
                </button>
              </a>
            </td>
          </tr>
          <% end_loop %>
            <% end_loop %>

    </tbody>
  </table>
</div>

  

  <script>
      
      var Status = document.getElementById('Status');
      if(Status === 'Approved'){
        var button = document..getElementById('button');
        button.classList.remove("disabled");
        
        }
      </script>

    


