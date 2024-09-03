<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css"
    integrity="sha512-SnH5WK+bZxgPHs44uWIX+LLJAJ9/2PkPKZ5QiAj6Ta86w+fsb2TkcmfRyVX3pBnMFcV7oQPJkl9QevSCWr3W6A=="
    crossorigin="anonymous" referrerpolicy="no-referrer" />
  <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/js/all.min.js"
    integrity="sha512-u3fPA7V8qQmhBPNT5quvaXVa1mnnLSXUep5PS1qo5NRzHwG19aHmNJnj1Q8hpA/nBWZtZD4r4AX6YOt5ynLN2g=="
    crossorigin="anonymous" referrerpolicy="no-referrer"></script>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
    integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css"
    integrity="sha512-SnH5WK+bZxgPHs44uWIX+LLJAJ9/2PkPKZ5QiAj6Ta86w+fsb2TkcmfRyVX3pBnMFcV7oQPJkl9QevSCWr3W6A=="
    crossorigin="anonymous" referrerpolicy="no-referrer" />
  <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/js/all.min.js"
    integrity="sha512-u3fPA7V8qQmhBPNT5quvaXVa1mnnLSXUep5PS1qo5NRzHwG19aHmNJnj1Q8hpA/nBWZtZD4r4AX6YOt5ynLN2g=="
    crossorigin="anonymous" referrerpolicy="no-referrer"></script>
  <script src="https://code.jquery.com/jquery-3.4.1.js"></script>
  <link href="https://getbootstrap.com/docs/5.3/assets/css/docs.css" rel="stylesheet">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>

  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.carousel.min.css"
    integrity="sha512-tS3S5qG0BlhnQROyJXvNjeEM4UpMXHrQfTGmbQ1gKmelCxlSEBUaxhRBj/EFTzpbP4RVSrpEikbmdJobCvhE3g=="
    crossorigin="anonymous" referrerpolicy="no-referrer" />
  <link rel="stylesheet"
    href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.theme.default.min.css"
    integrity="sha512-sMXtMNL1zRzolHYKEujM2AqCLUR9F2C4/05cdbxjjLSRvMQIciEPCQZo++nk7go3BtSuK9kfa/s+a4f4i5pLkw=="
    crossorigin="anonymous" referrerpolicy="no-referrer" />
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.css" />
  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link
    href="https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap"
    rel="stylesheet">

<% require themedCSS('invoice') %>


<% if $CurrentMember %>

  <div class="container  scl mt-5 p-3" style="background-color: #727272; border-radius: 20px;">
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
          <h4>Invoice #$Invoice</h4>
          <p>Date : $Now.Nice</p>
        </div>
      </div>


      <table class="table text-center">
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

  <% else %>
    <p>You are not logged in or your session has expired. Please <a href="http://localhost/pindah/member">login</a>
      again.</p>



  <% end_if %>






















<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.7.1/jquery.min.js"
  integrity="sha512-v2CJ7UaYy4JwqLDIrZUI/4hqeoQieOmAZNXBeQyjo21dadnwR+8ZaIJVT8EE2iyI61OV8e6M8PP2/4hpQINQ/g=="
  crossorigin="anonymous" referrerpolicy="no-referrer"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/owl.carousel.min.js"
  integrity="sha512-bPs7Ae6pVvhOSiIcyUClR7/q2OAsRiovw4vAkX+zJbw3ShAeeqezq50RIIcIURq7Oa20rW2n2q+fyXBNcU9lrw=="
  crossorigin="anonymous" referrerpolicy="no-referrer"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/owl.carousel.min.js"
  integrity="sha512-bPs7Ae6pVvhOSiIcyUClR7/q2OAsRiovw4vAkX+zJbw3ShAeeqezq50RIIcIURq7Oa20rW2n2q+fyXBNcU9lrw=="
  crossorigin="anonymous" referrerpolicy="no-referrer"></script>
<!-- Swiper JS -->
<script src="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.js"></script>


















