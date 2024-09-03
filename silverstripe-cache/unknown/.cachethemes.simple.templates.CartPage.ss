<?php
$val .= '<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">

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
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11.12.4/dist/sweetalert2.all.min.js"></script>
<link href="https://cdn.jsdelivr.net/npm/sweetalert2@11.12.4/dist/sweetalert2.min.css" rel="stylesheet">
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
<link href="https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap"
rel="stylesheet">
    ';


$val .= '
    ';

\SilverStripe\View\Requirements::themedCSS('layout');
$val .= '
		';

\SilverStripe\View\Requirements::themedCSS('typography');
$val .= '
			';

\SilverStripe\View\Requirements::themedCSS('home');
$val .= '
			';

\SilverStripe\View\Requirements::themedCSS('nav');
$val .= '
<style>
  
  .cart-header {
    font-weight: bold;
    font-size: 1.25em;
    color: #333;
}

.cart-column {
    display: flex;
    align-items: center;
    border-bottom: 1px solid black;
    margin-right: 1.5em !important;
    padding-bottom: 10px;
    margin-top: 10px;
}

.cart-row {
    display: flex;
}

.cart-item {
    width: 45%;
}

.cart-price {
    width: 20%;
    font-size: 1em;
    color: #333;
}
.cart-price2 {
    width: 20%;
    color: #333;
}

.cart-quantity {
    width: 35%;
}
.cart-quantity-input{
  background-color:white !important;
}

.cart-item-title {
    color: #333;
    margin-left: .5em;
    font-size: 1.2em;
}

.cart-item-image {
    width: 75px;
    height: auto;
    border-radius: 10px;
}
input-group .cart-quantity-input {
    width: 60px;
    text-align: center;
}

.input-group .qty-decrease, .input-group .qty-increase {
    min-width: 35px;
}

@media (max-width: 480px) {
    .cart-column {
        display: block;
    }
    .cart-item-title{
        margin-left: 0;
        display: flex;
        margin-top: 10px;
    }
    .cart-quantity{
        width: 60%;
    }
}
.wdda{
    position: sticky;
    top: 0;
    
}   
@media (max-width: 330px){
  .das{
    margin-right:0px;
  }

  .cart-quantity-input {
    padding-left: 10px;
    padding-right: 1px;
  }
  
}


input[type=number]::-webkit-outer-spin-button,
    input[type=number]::-webkit-inner-spin-button {
      -webkit-appearance: none;
      margin: 0;
    }

.card {
    border-radius: 20px;
}
.btn-brown , .btn-br{
  background-color: #b18b5e;
  border-radius: 5px;
  color:white;
}
@media (max-width: 768px){
  .top{
    margin-top: 10px;
  }
}
@media (max-width:460px;){
  .ppp{
    justify-content: space-around !important;
  }
}


</style>
</head>
<body style="height:650px;">
  
';

$val .= \SilverStripe\View\SSViewer::execute_template([["type" => "Includes", 'HeaderCart'], 'HeaderCart'], $scope->getItem(), [], $scope, true);

$val .= '
  




<div class="container mt-5 mb-5">
  <h4 class="fw-bold">Keranjang</h4>
  <div class="row">
    <div class="col-md-8 col-sm-12">
      <div class="card">
        <div class="card-body">
          <div class="cart-row fsmds">
          <span class="cart-item cart-header cart-column">ITEM</span>
        <span class="cart-price2  cart-header fw-bold cart-column">PRICE</span>
      <span class="cart-quantity cart-header cart-column">QUANTITY</span>
    </div>
    <div class="cart-items">
      
    </div>
  </div>
</div>
</div>
<div class="col-md-4 col-sm-12 top">
<div class="card">
  <div class="card-body ">
  <b>Ringkasan Belanja</b>
  <div class="cart-total d-flex justify-content-between">
  <strong class="cart-total-title">Total</strong>
<span class="cart-total-price">Rp.0</span>
</div>
<hr>
<div class="d-grid ">
<button type="submit" class="btn btn-brown" id="Buy" data-bs-toggle="modal" data-bs-target="#exampleModal">
  Isi Alamat
</button>

<!-- Modal -->
<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel"
  aria-hidden="true">
  <div class="modal-dialog modal-lg">
    <div class="modal-content">
      <div class="modal-header">
                      <h5 class="modal-title" id="exampleModalLabel">Alamat Pengiriman</h5><br>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                  </div>
                <!-- <p class="modal-title " id="exampleModalLabel">Silahkan Isi sebelum membuat pesanan</p> -->
                <div class="modal-body">
                  <form action="';

$val .= $scope->locally()->XML_val('BaseHref', null, true);
$val .= '/cart/handleAddressForm" method="post" id="kevin">
                      <div class="rows">
                        <div class="d-flex gap-2">
                          <div class="col-6">
                            <div class="form-floating mb-3">
                              <input type="text" id="FullName" class="form-control" placeholder="Nama Lengkap"
                                name="FullName" required>
                              <label for="floatingInput">Nama Lengkap</label>
                            </div>
                          </div>
                          <div class="col-6">
                            <div class="form-floating">
                              <input type="number" id="PhoneNumber" class="form-control" placeholder="Nomor Telepon"
                                name="PhoneNumber" required>
                              <label for="floatingNumber">Nomor Telepon</label>
                            </div>
                          </div>
                        </div>
                        <div class="d-flex mb-3 gap-1">
                          <div class="col-6">
                            <select id="Provinsi" name="Provinsi" class="provinsi form-control" 
                              required>
                              <option value="">Pilih Provinsi</option>
                            </select>
                          </div>
                          <div class="col-6">
                            <select id="Kota" name="Kota" class="kota form-control"  required>
                              <option value="">Pilih Kota</option>
                            </select>
                          </div>
                        </div>
                        <div class="d-flex mb-3 gap-1">
                          <div class="col-6">
                            <select id="Kecamatan" name="Kecamatan" class="kecamatan form-control" required>
                            <option value="">Pilih Kecamatan</option>
                            </select>
                          </div>
                          <div class="col-6">
                            <select id="Kelurahan" name="Kelurahan" class="kelurahan form-control" required>
                            <option value="">Pilih Kelurahan</option>
                            </select>
                          </div>
                        </div>
                        <div class="col-12">
                          <div class="form-floating mb-3">
                            <input type="text" id="AddressDetail" class="form-control" placeholder="Alamat Lengkap"
                              name="AddressDetail" required>
                            <label for="floatingDetail">Detail Alamat,Warna Rumah,No</label>
                          </div>
                        </div>
                        <div class="col-12 mb-5">
                          <div>
                            <div class="cart-row">
                            <span class="cart-item cart-header cart-column">ITEM</span>
                            <span class="cart-price cart-header cart-column">PRICE</span>
                            <span class="cart-quantity cart-header cart-column">QUANTITY</span>
                          </div>
                          <div id="item-detail">
                          
                          </div>

                          </div>
                          </div>
                        </div>
                        <div class="d-grid">
                      <button type="submit" class="btn btn-brown">Pilih Pembayaran</button>
                    </div>
                    </div>
                  </form>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>
</div>


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

<script>
  fetch(`https://kanglerian.github.io/api-wilayah-indonesia/api/provinces.json`)
  .then(response => response.json())
  .then(provinces => {
    var data = provinces;
    var tampung = \'<option value="">Pilih Provinsi</option>\';
    data.forEach(element => {
  tampung += `<option data-reg="${element.id}" value="${element.name}">${element.name}</option>`;
    });
    document.getElementById(\'Provinsi\').innerHTML = tampung;
  });
</script>

<script>
const selectProvinsi = document.getElementById(\'Provinsi\');
selectProvinsi.addEventListener(\'change\', (e) => {
 var provinsi = e.target.options[e.target.selectedIndex].dataset.reg;
 fetch(`https://kanglerian.github.io/api-wilayah-indonesia/api/regencies/${provinsi}.json`)
 .then(response => response.json())
 .then(regencies => {
  var data = regencies;
  var tampung = \'<option value="">Pilih Kota</option>\';
document.getElementById(\'Kota\').innerHTML = \'<option>Pilih Kota</option>\';
document.getElementById(\'Kecamatan\').innerHTML = \'<option>Pilih Kecamatan</option>\';
document.getElementById(\'Kelurahan\').innerHTML = \'<option>Pilih Kelurahan</option>\';
  data.forEach(element => {
tampung += `<option data-dist="${element.id}" value="${element.name}">${element.name}</option>`;
  });
  document.getElementById(\'Kota\').innerHTML = tampung;
});
});

const selectKota = document.getElementById(\'Kota\');
selectKota.addEventListener(\'change\', (e) => {
 var kota = e.target.options[e.target.selectedIndex].dataset.dist;
 fetch(`https://kanglerian.github.io/api-wilayah-indonesia/api/districts/${kota}.json`)
 .then(response => response.json())
 .then(districts => {
  var data = districts;
  var tampung = \'<option value="">Pilih Kecamatan</option>\';
document.getElementById(\'Kecamatan\').innerHTML = \'<option>Pilih Kecamatan</option>\';
document.getElementById(\'Kelurahan\').innerHTML = \'<option>Pilih Kelurahan</option>\';
  data.forEach(element => {
tampung += `<option data-vill="${element.id}" value="${element.name}">${element.name}</option>`;
  });
  document.getElementById(\'Kecamatan\').innerHTML = tampung;
});
});
const selectKecamatan = document.getElementById(\'Kecamatan\');
selectKecamatan.addEventListener(\'change\', (e) => {
 var kecamatan = e.target.options[e.target.selectedIndex].dataset.vill;
 fetch(`https://kanglerian.github.io/api-wilayah-indonesia/api/villages/${kecamatan}.json`)
 .then(response => response.json())
 .then(villages => {
  var data = villages;
  var tampung = \'<option value="">Pilih Kelurahan</option>\';
document.getElementById(\'Kelurahan\').innerHTML = \'<option>Pilih Kelurahan</option>\';
  data.forEach(element => {
tampung += `<option value="${element.name}">${element.name}</option>`;
  });
  document.getElementById(\'Kelurahan\').innerHTML = tampung;
});
});


</script>






<script>
      $(document).ready(function () {
        var cartItems = JSON.parse(localStorage.getItem(\'cartItems\')) || [];
        var cartRow = \'\';
      
      
      
      
      
      
        function renderCartItems() {
          $(\'.cart-items\').empty(); 
      
          cartItems.forEach(function (item, index) {
            cartRow = `
                <div class="cart-row" data-index="${index}">
                    <div class="cart-item cart-column">
                        <img class="cart-item-image" id="Image" src="${item.imageSrc}" width="100" height="100">
                        <span class="cart-item-title" id="Title" name="Title">${item.title}</span>
                    </div>
                    <span class="cart-price cart-column fw-bold" id="Harga" name="Harga">Rp. ${item.price}</span>
                    <div class="cart-quantity cart-column das gap-3">
                        <div class="input-group">
                            <button class="btn btn-outline-secondary btn-sm qty-decrease" type="button">-</button>
                            <input class="cart-quantity-input form-control shadow-none" type="number" id ="Quantity" name="Quantity" readonly value="${item.quantity}">
                            <button class="btn btn-outline-secondary btn-sm qty-increase" type="button">+</button>
                        </div>
                        <button class="btn btn-brown   btn-sm mt-2" type="button" id="remove">REMOVE</button>
                    </div>
                </div>
            `;
            $(\'.cart-items\').append(cartRow);
          });
      
          updateTotalPrice(); 
          console.log(cartItems)
        }
      
      
        function updateTotalPrice() {
          var total = 0;
          cartItems.forEach(function (item) {
            var price = parseFloat(item.price.replace(\'$\', \'\'));
            var quantity = parseInt(item.quantity);
            total += price * quantity;
          });
          total = total.toFixed(2);
          $(\'.cart-total-price\').text(\'Rp.\' + total);
        }
      
        // Render cart items on page load
        renderCartItems();

        $(\'#exampleModal\').on(\'shown.bs.modal\', function () {
          $("#item-detail").empty();
        var cartmodal = \'\';
                cartItems.forEach(function (item, index) {
                  cartmodal = `
                <div class="cart-row" id="row" data-index="${index}">
                    <div class="cart-item cart-column">
                        <img class="cart-item-image" id="Image" src="${item.imageSrc}" width="100" height="100">
                        <span class="cart-item-title " id="Title" name="Title">${item.title}</span>
                    </div>
                    ';


$val .= '
                    <span class="cart-price cart-column text-center" id="Harga" name="Harga">$ ${item.price}</span>
                    <div class="cart-quantity cart-column  gap-3">
                        <div class="input-group">
                        <span class="cart-quantity-input" id ="Quantity" name="Quantity">${item.quantity}</span>
                        </div>
                        ';


$val .= '
                    </div>
                  ';


$val .= '
                </div>
            `;
            $("#item-detail").append(cartmodal);
                });
      
      
          var cartdetail = \'\';
      
          cartItems.forEach(function (item, index) {
            cartdetail = `
            <input type="hidden" name="item[image][]" id="image" value="${item.imageSrc}">
            <input type="hidden" name="item[title][]" id="title" value="${item.title}">
            <input type="hidden" name="item[price][]" id="price" value="${item.price}">
            <input type="hidden" name="item[quantity][]"  id="quantity" value="${item.quantity}">
        `;
            $("#item-detail").append(cartdetail);
          })
        });
      
      
      
      
      //cart-items
        // Event delegation for removing items
        $(\'.cart-items\').on(\'click\', \'.btn-brown\', function () {
          var index = $(this).closest(\'.cart-row\').data(\'index\');
          console.log(renderCartItems());
          renderCartItems();
          Swal.fire({
            title: "Are you sure delete this item?",
            text: "You won\'t be able to revert this!",
            icon: "warning",
            showCancelButton: true,
            confirmButtonColor: "#3085d6",
            cancelButtonColor: "#d33",
            confirmButtonText: "Yes, delete it!"
          }).then((result) => {
            if (result.isConfirmed) {
              Swal.fire({
                title: "Deleted!",
                text: "Your file has been deleted.",
                icon: "success"
                });
                cartItems.splice(index, 1);
                localStorage.setItem(\'cartItems\', JSON.stringify(cartItems));
                setInterval(\'window.location.reload()\', 700);
            }
          });

          });
          

          function reload(){
                location.reload()
              }

        
          
          // Event delegation for changing quantity
          $(\'.cart-items\').on(\'click\', \'.qty-increase\', function () {
            var index = $(this).closest(\'.cart-row\').data(\'index\');
            var stok = cartItems[index].stok;
            if(cartItems[index].quantity < stok){
            cartItems[index].quantity++;
            localStorage.setItem(\'cartItems\', JSON.stringify(cartItems));
            renderCartItems();
            }
        });
      
        $(\'.cart-items\').on(\'click\', \'.qty-decrease\', function () {
          var index = $(this).closest(\'.cart-row\').data(\'index\');
          if (cartItems[index].quantity > 1) {
            cartItems[index].quantity--;
            localStorage.setItem(\'cartItems\', JSON.stringify(cartItems));
            renderCartItems();
          }
        });
      
        // Update quantity and total price when quantity input changes
        $(\'.cart-items\').on(\'change\', \'.cart-quantity-input\', function () {
          var index = $(this).closest(\'.cart-row\').data(\'index\');
          var stok = cartItems[index].stok
          var newQuantity = $(this).val();
          if (newQuantity < stok) {
            newQuantity = 1;
          }
          cartItems[index].quantity = newQuantity;
          localStorage.setItem(\'cartItems\', JSON.stringify(cartItems));
          updateTotalPrice();
        });
      });  


    
      
</script>

<script>
    $(document).ready(function (){
      if($(\'.cart-items\').is(\':empty\')){
        $(\'.fsmds\').empty();

        $(\'.cart-items\').html(`
  <div class="container">
    <div class="row text-center justify-content-around justify-content-sm-center ppp">
      <div class="col-6 col-sm-4">
        <img src="https://assets.tokopedia.net/assets-tokopedia-lite/v2/backfunnel/kratos/4d27af6a.svg" alt="">
      </div>
      <div class="col-6 col-sm-4 mt-3 text-start">
        <h5 class="card-title">Kosong Nih!!</h5>
        <h6 class="card-subtitle mb-2 text-muted">Belanja YUK!!</h6>
        <a href="';

$val .= $scope->locally()->XML_val('BaseHref', null, true);
$val .= '/shop"><button class="btn btn-br">Klik Disini</button></a>
      </div>
    </div>
  </div>`);
  var button = document.getElementById(\'Buy\');
  button.classList.add("disabled");
      }
    })

    //item-details
         // Event delegation for removing items
        // function myFunction() {
         // var element = document.getElementById("row");
         // element.remove("cart-row");
       // }






       $(document).ready(function(){
        $("#remove").click(function(){
          
        });
      });
</script>









</body>
</html>';

