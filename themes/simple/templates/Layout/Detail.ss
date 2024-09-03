<% require themedCSS('Shop') %>
  <%-- <% with $Coba %>
    <h1>$Title</h1>
    <img src="$Lamp.URL" alt="$Title" />
    <% end_with %> --%>

      <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11.12.4/dist/sweetalert2.all.min.js"></script>
      <link href="https://cdn.jsdelivr.net/npm/sweetalert2@11.12.4/dist/sweetalert2.min.css" rel="stylesheet">



      <style>
        .i {
          size: 70%;
        }

        a {
          text-decoration: none;
          color: black;
        }


        h1,
        h2,
        h3,
        h4,
        h5,
        h6,
        p {
          font: Poppins;
        }


        .bg {
          background-color: #b3b1b100;
        }


        .tab-interface button {
          background: none;
          border: none;
          padding: 10px 20px;
          cursor: pointer;
          font-size: 16px;
          transition: color 0.3s, background-color 0.3s;
        }

        .tab-interface button:hover,
        .tab-interface button:focus {
          background-color: #f0f0f0;
          /* Warna latar belakang saat hover */
        }

        .tab-interface button:active {
          background-color: black;
          /* Warna latar belakang saat ditekan */
          color: white;
          /* Ubah warna teks menjadi putih */
        }

        .tab-interface button[aria-selected="true"] {
          border-bottom: 2px solid #000;
          /* Indikator tab yang dipilih */
          font-weight: bold;
        }

        .tab-interface button[aria-selected="false"] {
          border-bottom: none;
        }

        .btn:focus,
        .btn:active .btn {
          outline: none !important;
          box-shadow: none;
        }


        .wrapper {
          height: 50px;
          min-width: 50px;
          display: flex;
          align-items: center;
          justify-content: start;
          border-radius: 12px;
          box-shadow: 0 5px 10px rgba(0, 0, 0, 0, 0.2);
        }

        .wrapper span {
          width: 20%;
          text-align: center;
          font-size: 30px;
          font-weight: 600;
          background-color: #f0f0f0;
          outline-color: 20px;
          cursor: pointer;
        }


        .wrapper span .num {
          font-size: 50px;
          border-right: 2px solid rgba(0, 0, 0, 0, 0.2);
          border-left: 2px solid rgba(0, 0, 0, 0, 0.2);
          pointer-events: none;
        }



        .quantity {
          display: flex;
          justify-content: center;
        }

        .quantity button {
          width: 45px;
          height: 45px;
          border: 1px solid #000;
          color: #000;
          border-radius: 0;
          background: #fff
        }

        .quantity input {
          border: none;
          border-top: 1px solid #000;
          border-bottom: 1px solid #000;
          text-align: center;
          width: 100px;
          font-size: 20px;
          color: #000;
          font-weight: 300;
        }

        .total-price {
          text-align: center;
          font-size: 30px;
          color: black;
        }

        .total-price {
          display: inline-block;
          font-size: 90%;
          margin-right: 5px;
        }


        .nav-link {
          color: #000 !important;
        }

        .nav-pills .nav-link.active,
        .nav-pills .show>.nav-link {
          color: #f0f0f0 !important;
        }

        input::-webkit-outer-spin-button,
        input::-webkit-inner-spin-button {
          -webkit-appearance: none;
          margin: 0;
        }

        /* Firefox */
        input[type=number] {
          -moz-appearance: textfield;
        }


        @media (max-width: 390px) {
          .cart-item-title {
            transform: scale(0.8);
          }
        }


        @media (max-width: 780px) {
          .kecil {
            font-size: 80%;
          }

          .gambar {
            scale: 80%;
            align-items: center;
          }

          .dksa {
            transform: scale(0.7);
            margin-left: -20px;
            transform-origin: 20% 0%;
          }

        }

        .flex {
          display: flex;
        }

        @media (min-width: 780px) {
          .ksf {
            margin-left: 1rem !important;
          }
        }

        @media (max-width: 770px) {
          .flex {
            display: block;
          }

        }
      </style>
      <% with $Coba %>
        <div class="container mt-5 ">
          <nav style="--bs-breadcrumb-divider: '|';" aria-label="breadcrumb">
            <ol class="breadcrumb">
              <li class="breadcrumb-item"><a href="$BaseHref" style="text-decoration:none;">Home</a></li>
              <li class="breadcrumb-item"><a href="{$BaseHref}/shop-page" style="text-decoration:none;">Shop</a></li>
              <li class="breadcrumb-item active" aria-current="page">$Title</li>
            </ol>
          </nav>
          <div class="shadow-lg p-5 mb-5 bg-body rounded flex">
            <%-- <div class="rows d-flex p-3"> --%>
              <div class="col-md-4 col-sm-12">
                <img src="$ImageThumbnail.URL" alt="" class="img-fluid " id="image">
                <div class="owl-carousel owl-theme mt-2">
                  <% loop $Image %>
                    <div class="item">
                      <h4><img src="$URL" alt="" class="img-fluid" id="image$Pos" onClick="myfunction()"></h4>
                    </div>
                    <% end_loop %>
                      <%-- <div class="item">
                        <h4><img src="$Image2.URL" alt="" class="img-fluid"></h4>
                </div>
                <div class="item">
                  <h4><img src="$Image3.URL" alt="" class="img-fluid"></h4>
                </div> --%>
              </div>

          </div>
          <div class="col-md-8 col-sm-12 ksf dksa" style="justify-content:start;">
            <h2 class="fw-bold" id="title">$Title</h2>
            <i class="fa-solid fa-star"></i>
            <i class="fa-solid fa-star"></i>
            <i class="fa-solid fa-star"></i>
            <i class="fa-regular fa-star"></i>
            <i class="fa-regular fa-star"></i>
            <h3 class="fw-bold" id="harga">Rp. $Harga</h3>

            <div class="d-flex gap-2">
              <h5 class="fw-bold text-muted">Tersisa :</h5>
              <h5 class="fw-bold text-muted" id="stok">$Stok</h5>
            </div>

            <div class="d-flex mb-3 gap-2 rtk">
              <% loop $Image %>
                <button type="button" class="btn btn-outline-secondary shadow-none" id="button$Pos"
                  onClick="myfunction()">
                  <img class="me-2" src="$URL" id="gambar" alt="" width="24" height="24">
                  <span class="kecil" id="title$Pos"></span>
                </button>
                <% end_loop %>
            </div>



            <ul class="nav nav-pills mb-3 gap-2" id="pills-tab" role="tablist">
              <li class="item" role="presentation" style="list-style-type: none;">
                <button class="nav-link active" id="pills-home-tab" data-bs-toggle="pill" data-bs-target="#pills-home"
                  type="button" role="tab" aria-controls="pills-home" aria-selected="true"
                  style="background-color:#b18b5e; ">Detail</button>
              </li>
              <li class="item" role="presentation" style="list-style-type: none;">
                <button class="nav-link" id="pills-profile-tab" data-bs-toggle="pill" data-bs-target="#pills-profile"
                  type="button" role="tab" aria-controls="pills-profile" aria-selected="false"
                  style="background-color:#b18b5e;">Spesifikasi</button>
              </li>
              <li class="item" role="presentation" style="list-style-type: none;">
                <button class="nav-link" id="pills-contact-tab" data-bs-toggle="pill" data-bs-target="#pills-contact"
                  type="button" role="tab" aria-controls="pills-contact" aria-selected="false"
                  style="background-color:#b18b5e;">Info Penting</button>
              </li>
            </ul>
            <div class="tab-content" id="pills-tabContent">
              <div class="tab-pane fade show active" id="pills-home" role="tabpanel" aria-labelledby="pills-home-tab">
                $Description</div>
              <div class="tab-pane fade mb-2" id="pills-profile" role="tabpanel" aria-labelledby="pills-profile-tab ">
                $Spesifikasi</div>
              <div class="tab-pane fade mb-2" id="pills-contact" role="tabpanel" aria-labelledby="pills-contact-tab ">
                $Infopenting</div>
            </div>







            <div class="quantity justify-content-start my-4  ">
              <button class="btn minus-btn " type="button" style="--bs-btn-hover-border-color:none;">-</button>
              <input type="number" id="quantity" class="shadow-none" style="background-color:white !important;" min="0" oninput="this.value = 
              !!this.value && Math.abs(this.value) >= 0 ? Math.abs(this.value) : null" max="" value="1">
              <button class="btn plus-btn" type="button" id="indicator"
                style="--bs-btn-hover-border-color:none;">+</button>
            </div>

            <div class="total-price d-flex justify-content-start gap-2 mt-2 d-none">
              <h5 class="fw-bold">Harga:</h5>
              <h5 class="fw-bold">Rp. </h5>
              <h5 class="fw-bold" id="price">$Harga</h5>
            </div>



            <button type="button" class="btn btn-outline-dark me-3 fw-bold shadow-none " id="keranjang">Masukan
              Keranjang</button>
            <%-- <button type="button" class="btn fw-bold text-light " id="keranjang"
              style="background-color:#b18b5e;">BELI
              SEKARANG</button> --%>
          </div>


        </div>






        <script>
          document.addEventListener('DOMContentLoaded', function () {
            function updateProductDetails(imgSrc, title, harga, stok) {
              $("#image").attr("src", imgSrc);
              $("#title").html(title);
              $("#harga").html("Rp. " + harga);
              $("#stok").html(stok);
              $("#price").html(harga);

              updatemaxvalue(parseInt(stok, 10));

              var keranjang = document.getElementById('keranjang');
              var indicator = document.getElementById('indicator');

              if (stok <= 0) {
                $("#stok").text("Stok Habis");
                indicator.classList.add("disabled");
                keranjang.classList.add("disabled");
              } else {
                indicator.classList.remove("disabled");
                keranjang.classList.remove("disabled");
              }
            }

            function updatemaxvalue(newMax) {
            var input = document.getElementById('quantity');
            input.max = newMax;
            }


            document.getElementById('image1').addEventListener('click', function () {
              var imgSrc = $(this).find("img").attr("src");
              updateProductDetails(imgSrc, "$Title2", "$SubHarga", "$SubStok");
            });

            document.getElementById('image2').addEventListener('click', function () {
              var imgSrc = $(this).find("img").attr("src");
              updateProductDetails(imgSrc, "$Title", "$Harga", "$Stok");
            });
            document.getElementById('image3').addEventListener('click', function () {
              var imgSrc = $(this).find("img").attr("src");
              updateProductDetails(imgSrc, "$Title3", "$SubHarga2", "$SubStok2");
            });
            
            


            document.getElementById('quantity').addEventListener('input', function () {
            var stokElement = document.getElementById('stok');
            var stokValue = parseInt(stokElement.textContent, 10); 
            var inputValue = parseInt(this.value, 10); 

            if (inputValue > stokValue) {
                this.value = stokValue;
                Swal.fire({
                    title: "Error",
                    text: "Max Stok",
                    icon: "error"
                });
            }
            });
          });
        </script>

        <script>
          document.addEventListener('DOMContentLoaded', function () {
            function updateProductDetails(imgSrc, title, harga, stok) {
              $("#image").attr("src", imgSrc);
              $("#title").html(title);
              $("#harga").html("Rp. " + harga);
              $("#stok").html(stok);
              $("#price").html(harga);

              updatemaxvalue(parseInt(stok, 10));

              var keranjang = document.getElementById('keranjang');
              var indicator = document.getElementById('indicator');

              if (stok <= 0) {
                $("#stok").text("Stok Habis");
                indicator.classList.add("disabled");
                keranjang.classList.add("disabled");
              } else {
                indicator.classList.remove("disabled");
                keranjang.classList.remove("disabled");
              }
            }

            function updatemaxvalue(newMax) {
            var input = document.getElementById('quantity');
            input.max = newMax;
            }


            document.getElementById('button1').addEventListener('click', function () {
              var imgSrc = $(this).find("img").attr("src");
              updateProductDetails(imgSrc, "$Title2", "$SubHarga", "$SubStok");
            });

            document.getElementById('button2').addEventListener('click', function () {
              var imgSrc = $(this).find("img").attr("src");
              updateProductDetails(imgSrc, "$Title", "$Harga", "$Stok");
            });
            document.getElementById('button3').addEventListener('click', function () {
              var imgSrc = $(this).find("img").attr("src");
              updateProductDetails(imgSrc, "$Title3", "$SubHarga2", "$SubStok2");
            });
            
            
            $(document).ready(function () {
              if ($Stok <= 0) {
                var keranjang = document.getElementById('keranjang');
                var indicator = document.getElementById('indicator');
                $("#stok").text("Stok Habis");
                indicator.classList.add("disabled");
                keranjang.classList.add("disabled");
              } else {
                var keranjang = document.getElementById('keranjang');
                var indicator = document.getElementById('indicator');
                $("#stok").remove("Stok Habis");
                indicator.classList.remove("disabled");
                keranjang.classList.remove("disabled");
                //console.log(keranjang.classList.remove("disabled"));
              }
              var quantity = document.getElementById('quantity');
              if(quantity <= 0){
                var keranjang = document.getElementById('keranjang');
                keranjang.classList.add("disabled");
              }
            });


            document.getElementById('quantity').addEventListener('input', function () {
            var stokElement = document.getElementById('stok');
            var stokValue = parseInt(stokElement.textContent, 10); 
            var inputValue = parseInt(this.value, 10); 
            let valueCount = parseInt(document.getElementById("quantity").value);
            if (valueCount > 1) {
                document.querySelector(".minus-btn").removeAttribute("disabled");
                document.querySelector(".minus-btn").classList.remove("disabled");
              }
            if (inputValue > stokValue) {
                this.value = stokValue;
                Swal.fire({
                    title: "Error",
                    text: "Max Stok",
                    icon: "error"
                });
            }
            });


            //mengubah title button sesuai dengan Variant
            $('#button1 .kecil').text("$Title2");
            $('#button2 .kecil').text("$Title");
            $('#button3 .kecil').text("$Title3");
           
            
          });


        </script>


        <script>
          document.querySelectorAll('[role="tab"]').forEach(tab => {
            tab.addEventListener('click', () => {

              document.querySelectorAll('[role="tab"]').forEach(t => t.setAttribute('aria-selected', 'false'));
              document.querySelectorAll('[role="tabpanel"]').forEach(panel => panel.hidden = true);


              tab.setAttribute('aria-selected', 'true');
              document.getElementById(tab.getAttribute('aria-controls')).hidden = false;
            });
          });


          $('.owl-carousel').owlCarousel({
            loop: false,
            margin: 10,
            nav: false,
            dots: false,
            responsive: {
              0: {
                items: 3
              },
              600: {
                items: 3
              },
              1000: {
                items: 3
              }
            }
          })
          $(".owl-carousel .item").click(function () {
            var imgSrc = $(this).find("img").attr("src");
            $("#image").attr("src", imgSrc);
          });

          document.querySelector(".minus-btn").setAttribute("disabled", "disabled");
          var valueCount
          var price = document.getElementById("price").innerText;
          //mengganti harga sesuai dengan object saat diclick
          document.getElementById('button1').addEventListener('click', function () {
            price = $SubHarga;
          });
          document.getElementById('button2').addEventListener('click', function () {
            price = $Harga;
          });
          document.getElementById('button3').addEventListener('click', function () {
            price = $SubHarga2;
          });

          //mereset quantity
          function myfunction() {
            document.getElementById("quantity").value = "1";
          }


          //console.log(price);
          // function priceTotal() {
          //  var total = valueCount * price;
          //document.getElementById("price").innerText = total
          //} 

          document.querySelector(".plus-btn").addEventListener("click", function () {
            let valueCount = parseInt(document.getElementById("quantity").value);
            let stok = parseInt(document.getElementById('stok').textContent);
            if (valueCount > 1) {
                document.querySelector(".minus-btn").removeAttribute("disabled");
                document.querySelector(".minus-btn").classList.remove("disabled");
              }
              //console.log(valueCount); 
              if (valueCount < stok) {
              valueCount++;
              document.getElementById("quantity").value = valueCount;
              
            } 

            //priceTotal()
          });

          console.log(stok);
          document.querySelector(".minus-btn").addEventListener("click", function () {
            let valueCount = parseInt(document.getElementById("quantity").value);
            //console.log(valueCount);
            valueCount--;
            document.getElementById("quantity").value = valueCount
            if (valueCount == 1) {
              document.querySelector(".minus-btn").setAttribute("disabled", "disabled")
              
            }
            //    priceTotal()
          })
        </script>
        <% end_with %>

          <script>
            $('#keranjang').click(function () {
              // Get data from the page elements
              if($('#quantity').val() <= 0){
                Swal.fire({
                  title: "Error",
                  text: "Min Quantity 1",
                  icon: "error"
              });
              }else{
              var title = $('h2.fw-bold').text().trim();
              var stok = $('#stok').text().trim();
              var price = $('#price').text().trim();
              var quantity = $('#quantity').val();
              var imageSrc = $('#image').attr('src');

              // Create a data object to store
              var item = {
                title: title,
                stok: stok,
                price: price,
                quantity: quantity,
                imageSrc: imageSrc
              };
              var cartItems = JSON.parse(localStorage.getItem('cartItems')) || [];
              cartItems.push(item);
              localStorage.setItem('cartItems', JSON.stringify(cartItems));


              Swal.fire({
                title: "SUCCESS",
                text: "Your Item Send To Cart",
                icon: "success"
              });

              setInterval(reload, 1000);
              }
            });



            function reload() {
              location.reload()
            }
          </script>