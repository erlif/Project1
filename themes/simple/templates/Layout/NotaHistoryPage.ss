<style>
  @media (max-width: 410px){
    .table{
      scale: 0.8;
      transform-origin:left;
    }
  } 
  @media (max-width: 400px){
    .table{
      scale: 0.95;
      transform-origin:left;
    }
  } 
  @media (max-width: 385px){
    .table{
      scale: 0.85;
      transform-origin:left;
    }
  }
  @media (max-width: 350px){
    .table{
      scale: 0.8;
      transform-origin:left;
    }
  }
  @media (max-width: 330px){
    .table{
      scale: 0.752;
      transform-origin:left;
    }
  }
</style>


<% if $CurrentMember %>

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
      <% loop $CartItems %>
        <tr>
          <th>
            <% if $Image %>
              <img src="$Image.URL" alt="$Title" style="max-width: 100px;" />
          <% else %>
              <p>No Upload Image</p>
          <% end_if %>
          </th>
          <th >$Title</th>
          <td>$Harga</td>
          <td>$Quantity</td>
          <td>$Total</td>
        </tr>
        <% end_loop %>

    </tbody>
  </table>
  <div class="container me-lg-2  ">
    <div>
      <span class="">Item Total : Rp.$CartTotal</span><br>
      <span class="">Jasa Kirim : Rp.$Tax</span><br>
      <span class="fw-bold">Total Akhir : Rp.$Payment.Total</span><br>
    </div>
  </div>
  
    <% else %>
      <p>You are not logged in or your session has expired. Please <a href="http://localhost/pindah/member">login</a>
        again.</p>
  
  
  
    <% end_if %>