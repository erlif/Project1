<% if $CurrentMember %>

    <%-- <div class="container  scl mt-5 p-3" style="background-color: #727272; border-radius: 20px;">
      <div class="container-fluid">
  
        <div class="d-flex justify-content-between">
  
          <h1>LeadGen</h1>
          <h1>INVOICE</h1>
        </div>
        <div class="d-flex justify-content-between">
          <div class="">
  
            <h4 class="fw-bold">Billed To</h4>
            <p>$CurrentMember.FirstName $CurrentMember.Surname!</p>
            <P>$ShippingAddress.PhoneNumber</P>
            <p class="gap-2">$ShippingAddress.Provinsi, $ShippingAddress.Kota,
              $ShippingAddress.Kecamatan,<br>$ShippingAddress.Kelurahan, $ShippingAddress.AddressDetail</p>
          </div>
          <div class="text-end">
            <h4>Invoice #$Order.Invoice</h4>
            <p>Date : $Now.Nice</p>
          </div>
        </div>
  
  
        <table class="table text-center" style="--bs-table-bg: transparent !important; --bs-table-border-color: black;">
          <thead>
            <tr>
              <div class="rows">
  
                <th scope="col-6" colspan="6">Item</th>
                <th scope="col">Unit Price</th>
                <th scope="col">Quantity</th>
                <th scope="col">Total</th>
              </div>
            </tr>
          </thead>
          <tbody>
            <% loop $CartItems %>
              <tr>
                <th scope="row" colspan="6">$Title</th>
                <td>$Harga</td>
                <td>$Quantity</td>
                <td>$Total</td>
              </tr>
              <% end_loop %>
  
          </tbody>
        </table>
        <p class="text-end me-5 fw-bold">Total: $CartTotal</p>
  
        <h4 class="mt-5">Thank you for buying</h4>
  
  
  
  
  
  
  
  
  
  
  
      </div>
    </div>
    <div class="container">
    <a class="fw-bold" style="text-decoration:none; color: #d2b48c" href="http://localhost/pindah/shop" style="">Back To Shop?</a>
    </div>
   --%>



  
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















    <% else %>
      <p>You are not logged in or your session has expired. Please <a href="http://localhost/pindah/member">login</a>
        again.</p>
  
  
  
    <% end_if %>