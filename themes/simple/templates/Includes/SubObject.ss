<% require themedCSS('Shop') %>
  <%-- <% with $Coba %>
    <h1>$Title</h1>
    <img src="$Lamp.URL" alt="$Title" />
    <% end_with %> --%>




      <div class="container mt-5 ">
        <nav style="--bs-breadcrumb-divider: '>';" aria-label="breadcrumb">
          <ol class="breadcrumb">
            <li class="breadcrumb-item"><a href="$BaseHref">Home</a></li>
            <li class="breadcrumb-item"><a href="{$BaseHref}/shop-page">Shop</a></li>
            <li class="breadcrumb-item active" aria-current="page">Lamp</li>
          </ol>
        </nav>
        <div class="shadow-lg p-5 mb-5 bg-body rounded flex">
            <%-- <% with $SubObject %> --%>
                

          <% with $Coba %>
            <%-- <div class="rows d-flex p-3"> --%>
              <div class="col-md-4 col-sm-12">
                <img src="$ImageThumbnail.URL" alt="" class="img-fluid " id="image">
                <div class="owl-carousel owl-theme mt-2">
                  <% loop $Image %>
                    <div class="item">
                      <h4><img src="$URL" alt="" class="img-fluid"></h4>
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
          <h2 class="fw-bold" >fcdzjfdnz</h2>
          <i class="fa-solid fa-star"></i>
          <i class="fa-solid fa-star"></i>
          <i class="fa-solid fa-star"></i>
          <i class="fa-regular fa-star"></i>
          <i class="fa-regular fa-star"></i>
          <h3 class="fw-bold" id="harga">USD dsggdfg</h3>
          <h5 class="fw-bold text-muted" id="stok">Tersisa : $Stok buah</h5>


          <div class="d-flex mb-3 gap-2 rtk">
            <% loop $Image %>
              <button type="button" class="btn btn-outline-secondary shadow-none" id="button$Pos"
                onClick="myfunction()">
                <img class="me-2" src="$URL" id="gambar" alt="" width="24" height="24">
                <span class="kecil" id="title"></span>
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







          <div class="quantity justify-content-start mt-2">
            <button class="btn minus-btn disabled" type="button">-</button>
            <input type="text" id="quantity" value="1">
            <button class="btn plus-btn" type="button">+</button>
          </div>

          <div class="total-price d-flex justify-content-start gap-2 mt-2">
            <h5 class="fw-bold">SubTotal:</h5>
            <h5 class="fw-bold">USD</h5>
            <h5 class="fw-bold" id="price">$Harga</h5>
          </div>



          <button type="button" class="btn btn-outline-dark me-3 fw-bold shadow-none " id="keranjang">Masukan
            Keranjang</button>
          <%-- <button type="button" class="btn fw-bold text-light " id="keranjang"
            style="background-color:#b18b5e;">BELI
            SEKARANG</button> --%>
        </div>

      </div>
      </div>

      </div>
      

        <script>     
                document.addEventListener('DOMContentLoaded', function () {
                    document.getElementById('button1').addEventListener('click', function () {
                        var imgSrc = $(this).find("img").attr("src");
              $("#image").attr("src", imgSrc);
              imgSrc = "$Image.URL";
              $("#title").html("$Up.SubTitle");
              $("#harga").html("USD $SubHarga");
              $("#stok").html("Tersisa : $SubStok buah ");
              $("#price").html("$SubHarga");
              
              if ($SubStok == 0) {
                  var keranjang = document.getElementById('keranjang');
                  keranjang.classList.add("disabled");
                  } else {
                      var keranjang = document.getElementById('keranjang');
                      keranjang.classList.remove("disabled");
                      console.log(keranjang.classList.remove("disabled"));
                      }
                      
                      
                      });
            <%-- document.getElementById('button2').addEventListener('click', function () {
              var imgSrc = $(this).find("img").attr("src");
              $("#image").attr("src", imgSrc);
              imgsrc = "$Image.URL";
              $("#title").html("$Title");
              $("#harga").html("USD $Harga");
              $("#stok").html("Tersisa : $Stok buah ");
              $("#price").html("$Harga");


              if ($Stok == 0) {
                var keranjang = document.getElementById('keranjang');
                keranjang.classList.add("disabled");
              } else {
                var keranjang = document.getElementById('keranjang');
                keranjang.classList.remove("disabled");
                console.log(keranjang.classList.remove("disabled"));
              }

            });

            document.getElementById('button3').addEventListener('click', function () {
              var imgSrc = $(this).find("img").attr("src");
              $("#image").attr("src", imgSrc);
              imgsrc = "$Image.URL";
              $("#title").html("$Title3");
              $("#harga").html("USD $SubHarga2");
              $("#stok").html("Tersisa : $SubStok2 buah ");
              $("#price").html("$SubHarga2");

              if ($SubStok2 == 0) {
                var keranjang = document.getElementById('keranjang');
                keranjang.classList.add("disabled");
              } else {
                var keranjang = document.getElementById('keranjang');
                keranjang.classList.remove("disabled");
                console.log(keranjang.classList.remove("disabled"));
              }
            }); --%>
                                                            
              //mengubah title button sesuai dengan Variant
              $('#button1 .kecil').text("$SubTitle");
            <%-- $('#button2 .kecil').text("$Title");
            $('#button3 .kecil').text("$Title3"); --%>



            //if($Stok == 0){
            //  var keranjang = document.getElementById('keranjang');
            //keranjang.classList.add("disabled");
            //}else {
            //  var keranjang = document.getElementById('keranjang');
            //keranjang.classList.remove("disabled");
            //console.log(keranjang.classList.remove("disabled"));
            //}
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


            console.log(price);
            // function priceTotal() {
            //  var total = valueCount * price;
            //document.getElementById("price").innerText = total
            //} 

            document.querySelector(".plus-btn").addEventListener("click", function () {
              valueCount = document.getElementById("quantity").value;
              valueCount++;
              document.getElementById("quantity").value = valueCount;
              if (valueCount > 1) {
                document.querySelector(".minus-btn").removeAttribute("disabled");

                document.querySelector(".minus-btn").classList.remove("disabled")
              }

              //  priceTotal()
            })
            document.querySelector(".minus-btn").addEventListener("click", function () {
              valueCount = document.getElementById("quantity").value;
              valueCount--;
              document.getElementById("quantity").value = valueCount
              if (valueCount == 1) {
                document.querySelector(".minus-btn").setAttribute("disabled", "disabled")
              }
              //    priceTotal()
            })
          </script>
          <% end_with %>
        <%-- <% end_with %> --%>

            <script>
              $('#keranjang').click(function () {
                // Get data from the page elements
                var title = $('h2.fw-bold').text().trim();
                var price = $('#price').text().trim();
                var quantity = $('#quantity').val();
                var imageSrc = $('#image').attr('src');

                // Create a data object to store
                var item = {
                  title: title,
                  price: price,
                  quantity: quantity,
                  imageSrc: imageSrc
                };
                var cartItems = JSON.parse(localStorage.getItem('cartItems')) || [];
                cartItems.push(item);
                localStorage.setItem('cartItems', JSON.stringify(cartItems));


                alert('Item berhasil ditambahkan ke keranjang.');
                window.location.reload();
              });




            </script>