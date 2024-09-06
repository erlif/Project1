<?php
$val .= '<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css"
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
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.theme.default.min.css"
  integrity="sha512-sMXtMNL1zRzolHYKEujM2AqCLUR9F2C4/05cdbxjjLSRvMQIciEPCQZo++nk7go3BtSuK9kfa/s+a4f4i5pLkw=="
  crossorigin="anonymous" referrerpolicy="no-referrer" />
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.css" />
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
  href="https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap"
  rel="stylesheet">


<style>
  input::-webkit-outer-spin-button,
  input::-webkit-inner-spin-button {
    -webkit-appearance: none;
    margin: 0;
  }

  .top {
    margin-top: 374px;
    margin-left: 352px;
  }

  .a {
    text-decoration: none;
    color: black;
  }

  .bot {
    margin-bottom: 200px;
  }

  .lsd {
    border-radius: 5px;
  }
</style>

<div class="container d-flex justify-content-center mt-1">
  <div class="shadow-lg p-3 mb-5 bg-body rounded mt-2" style="width:500px; height:730;">

    <div class="header fw-bold">
      <h4>Pembayaran</h4>
    </div>

    ';


$val .= '
    <div class="content mt-4 bd-highlight">
      <h5>Metode Pembayaran</h5>
      <div class="d-flex mt-3 gap-2">
        <i class="fa-solid fa-money-bill p-2 bd-highlight" style="width: 54px; height: 34px; color: #0060af;"></i>
        <h6 class="p-2 flex-grow-1 bd-highlight">Tunai</h6>
        <div class="form-check">
          <input class="form-check-input mt-2 p-2 bd-highlight" type="radio" name="flexRadioDefault"
            id="flexRadioDefault1" checked>
          </label>
        </div>
      </div>
      <div class="d-flex mt-3 gap-2">
      <i class="fa-solid fa-building-columns p-2 bd-highlight"  style="width: 54px; height: 34px; color: #0060af;"></i>
        <h6 class="p-2 flex-grow-1 bd-highlight">Bank</h6>
        <div class="form-check">
          <input class="form-check-input mt-2 p-2 bd-highlight" type="radio" name="flexRadioDefault"
            id="flexRadioDefault2" checked>
          </label>
        </div>
      </div>
      <div class="lms bot" id="lms">
        <button type="submit" class="btn top " id="Buy" data-bs-toggle="modal" data-bs-target="#exampleModal" style="top: 70px;background-color: #b18b5e !important;
          position: relative;">
              BAYAR<i class=" ms-3 fa-solid fa-user-shield"></i>
            </button>
      </div>

      
     
    <Form action="';

$val .= $scope->locally()->XML_val('BaseHref', null, true);
$val .= '/payment/transaksi"  method="post" >
      <!-- Modal -->
      <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog ">
          <div class="modal-content">
            <div class="modal-header shadow p-3 mb-3 bg-body rounded">
              <h5 class="modal-title" id="exampleModalLabel">Purchase Detail</h5><br>
              <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <!-- <p class="modal-title " id="exampleModalLabel">Silahkan Isi sebelum membuat pesanan</p> -->
            <div class="modal-body ">
              <div class="container">
                <h4>Form Transaction</h4>
                <select class="form-select mb-1" aria-label="Default select example" name="Payment" required>
                  <option selected>Select Payment Method</option>
                </select>
                <div class="form-floating mb-1">
                  <input type="email" class="form-control" id="email" name="email" placeholder="name@example.com" value="';

$val .= $scope->locally()->XML_val('Email', null, true);
$val .= '" required>
                  <label for="email">Email</label>
                </div>
                <div class="form-floating mb-1">
                  <input type="number" class="form-control" id="phone" name="phone" placeholder="Phone Number" value="';

$val .= $scope->locally()->obj('Addres', null, true)->XML_val('PhoneNumber', null, true);
$val .= '" required>
                  <label for="phone">Phone Number</label>
                </div>
                <div class="form-floating mb-1">
                  <input type="hidden" class="form-control" id="price" name="price" placeholder="price" value="';

$val .= $scope->locally()->XML_val('CartTotal', null, true);
$val .= '" readonly  style="background-color:white !important;">
                  ';


$val .= '
                </div>

              </div>
            </div>
            <div class="modal-footer d-flex justify-content-between container">
              <div class="">
                <span class="">Harga Item : Rp.';

$val .= $scope->locally()->XML_val('ItemCost', null, true);
$val .= '</span><br>
                <span class="">Jasa Kirim : Rp.';

$val .= $scope->locally()->XML_val('OrderTax', null, true);
$val .= '</span><br>
                <div class="d-flex">
                <h3 class="text-muted">Total :</h3>
                <h5 class="mt-2 ms-2" >Rp.';

$val .= $scope->locally()->XML_val('CartTotal', null, true);
$val .= '</h5>
                </div>
              </div>
              <div class="d-grid">
                <button type="submit" class="btn-primary btn-md lsd ">Payment</button>
              </div>
            </div>
          </div>
        </div>
      </div>
    </form>
    </div>
  </div>
</div>
';


$val .= '



<script>
  document.addEventListener(\'DOMContentLoaded\', function () {
    document.getElementById(\'flexRadioDefault2\').addEventListener(\'click\', function () {
      var ss = `
         <button type="submit" class="btn top " id="Buy" data-bs-toggle="modal" data-bs-target="#exampleModal" style="top: 70px;background-color: #b18b5e !important;
    position: relative;">
        BAYAR<i class=" ms-3 fa-solid fa-user-shield"></i>
      </button>
      `;
      $("#lms").html(ss);
      
    });
    document.getElementById(\'flexRadioDefault1\').addEventListener(\'click\', function () {
      var dd = `
      <form action=" ';

$val .= $scope->locally()->XML_val('BaseHref', null, true);
$val .= '/payment/Bank" method="post" enctype="multipart/form-data">
      <div class="bot">
      <label for="Nama">Nama</label>
        <input type="text" class="form-control" value="';

$val .= $scope->locally()->obj('Addres', null, true)->XML_val('FullName', null, true);
$val .= '"  id="Nama" name="Nama">
      <label for="Number">Nomer Telepon</label>
        <input type="number" class="form-control" value="';

$val .= $scope->locally()->obj('Addres', null, true)->XML_val('PhoneNumber', null, true);
$val .= '"  id="Number" name="Number">
      <label for="Alamat">Alamat</label>
        <input type="text" class="form-control" value="';

$val .= $scope->locally()->obj('Addres', null, true)->XML_val('Provinsi', null, true);
$val .= ', ';

$val .= $scope->locally()->obj('Addres', null, true)->XML_val('Kota', null, true);
$val .= ', ';

$val .= $scope->locally()->obj('Addres', null, true)->XML_val('Kecamatan', null, true);
$val .= ',';

$val .= $scope->locally()->obj('Addres', null, true)->XML_val('Kelurahan', null, true);
$val .= ', ';

$val .= $scope->locally()->obj('Addres', null, true)->XML_val('AddressDetail', null, true);
$val .= '" id="Alamat" Name="Alamat">
          <input type="hidden" id="Total" Name="Total" value="';

$val .= $scope->locally()->XML_val('CartTotal', null, true);
$val .= '">
        ';


$val .= '
      </div>
      <div class="footer" id="chng">
            <div class="d-flex bd-highlight mb-3">
              <div class="me-auto p-2 bd-highlight">
                <span class="">OrderID: ';

$val .= $scope->locally()->obj('OrderID', null, true)->XML_val('OrderID', null, true);
$val .= '</span><br>
                <span class="">Item Total : Rp.';

$val .= $scope->locally()->XML_val('ItemCost', null, true);
$val .= '</span><br>
                <span class="">Jasa Kirim : Rp.';

$val .= $scope->locally()->XML_val('OrderTax', null, true);
$val .= '</span><br>
                <span class="fw-bold">Total Harga : Rp.';

$val .= $scope->locally()->XML_val('CartTotal', null, true);
$val .= '</span>
              </div>
              <div class="p-2 bd-highlight">
                <button type="submit" class="btn mt-5" style=" background-color: #b18b5e !important;">BAYAR<i
                    class=" ms-3 fa-solid fa-user-shield"></i></button>
              </div>
            </div>
      </div>
      
    `;

      $("#lms").html(dd);
      

    });
  });
</script>





<script>
  $(document).ready(function () {
    $.ajax({
      url: "';

$val .= $scope->locally()->XML_val('BaseHref', null, true);
$val .= '/payment/method",
      success: function (result) {
        var data = JSON.parse(result).Data;
        var Row = \'\';



        for(let index = 0; index < 26 ; index++) {
        const element = data[index];
        var kj = index + 1;
        $(".n-" + kj).append(element.paymentName);

        }

        for(let index = 0; index < 26 ; index++) {
        const element = data[index];
        var d = index + 1;
        $(".img-" + d).attr("src", element.paymentImage);

        }
        $(\'select[name="Payment"]\').find(\'option:not(:first)\').remove();
        for(let index = 0; index < 26 ; index++) {
        const element = data[index];
        var option = $(\'<option></option>\');
        option.attr(\'value\', element.paymentMethod);
        option.text(element.paymentName);
        $(\'select[name="Payment"]\').append(option);
        }
       

      }
    });
  });
</script>








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
<script src="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.js"></script>';

