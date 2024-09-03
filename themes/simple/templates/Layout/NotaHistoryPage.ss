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
  
    <% else %>
      <p>You are not logged in or your session has expired. Please <a href="http://localhost/pindah/member">login</a>
        again.</p>
  
  
  
    <% end_if %>