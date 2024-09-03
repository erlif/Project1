<% require themedCSS('Shop') %>
        <%-- <% with $Koma %>
            <h1>$Title</h1>
            <img src="$Lamp.URL" alt="$Title" />
            <% end_with %> --%>


            <div class="container mt-5 ">
                <nav style="--bs-breadcrumb-divider: '>';" aria-label="breadcrumb">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="http://localhost/pindah">Home</a></li>
                        <li class="breadcrumb-item active" aria-current="page">Detail</li>
                    </ol>
                </nav>
                <div class="shadow-lg p-3 mb-5 bg-body rounded">
                    <% with $Kona %>
                        <div class="rows d-flex">
                            <div class="col-4">
                                <img src="$section3.URL" alt="" class="img-fluid " id="image">
                                <div class="owl-carousel owl-theme mt-2">
                                    <div class="item">
                                        <h4><img src="$section3.URL" alt="" class="img-fluid"></h4>
                                    </div>
                                    <div class="item">
                                        <h4><img src="$section3.URL" alt="" class="img-fluid"></h4>
                                    </div>
                                    <div class="item">
                                        <h4><img src="$section3.URL" alt="" class="img-fluid"></h4>
                                    </div>
                                </div>

                            </div>
                            <div class="col-8 ms-3">
                                <h2 class="fw-bold" >$Title</h2>
                                <i class="fa-solid fa-star"></i>
                                <i class="fa-solid fa-star"></i>
                                <i class="fa-solid fa-star"></i>
                                <i class="fa-regular fa-star"></i>
                                <i class="fa-regular fa-star"></i>
                                <h5 class="fw-bold">USD $Harga</h5>
                                <h5 class="fw-bold text-muted">Tersisa : $Stok buah</h5>
                                <ul class="nav nav-pills mb-3 gap-2" id="pills-tab" role="tablist">
                                    <li class="item" role="presentation" style="list-style-type: none;">
                                        <button class="nav-link active" id="pills-home-tab" data-bs-toggle="pill"
                                            data-bs-target="#pills-home" type="button" role="tab"
                                            aria-controls="pills-home" aria-selected="true"
                                            style="background-color:#b18b5e; ">Detail</button>
                                    </li>
                                    <li class="item" role="presentation" style="list-style-type: none;">
                                        <button class="nav-link" id="pills-profile-tab" data-bs-toggle="pill"
                                            data-bs-target="#pills-profile" type="button" role="tab"
                                            aria-controls="pills-profile" aria-selected="false"
                                            style="background-color:#b18b5e;">Spesifikasi</button>
                                    </li>
                                    <li class="item" role="presentation" style="list-style-type: none;">
                                        <button class="nav-link" id="pills-contact-tab" data-bs-toggle="pill"
                                            data-bs-target="#pills-contact" type="button" role="tab"
                                            aria-controls="pills-contact" aria-selected="false"
                                            style="background-color:#b18b5e;">Info Penting</button>
                                    </li>
                                </ul>
                                <div class="tab-content" id="pills-tabContent">
                                    <div class="tab-pane fade show active" id="pills-home" role="tabpanel"
                                        aria-labelledby="pills-home-tab">$Description</div>
                                    <div class="tab-pane fade mb-2" id="pills-profile" role="tabpanel"
                                        aria-labelledby="pills-profile-tab ">$Spesifikasi</div>
                                    <div class="tab-pane fade mb-2" id="pills-contact" role="tabpanel"
                                        aria-labelledby="pills-contact-tab ">$Infopenting</div>
                                </div>







                                <div class="quantity justify-content-start">
                                    <button class="btn minus-btn disabled" type="button">-</button>
                                    <input type="text" id="quantity" value="1">
                                    <button class="btn plus-btn" type="button">+</button>
                                </div>

                                <div class="total-price d-flex justify-content-start gap-2">
                                    <h5 class="fw-bold">SubTotal:</h5>
                                    <h5 class="fw-bold">USD</h5>
                                    <h6 id=price>$Harga</h6>
                                </div>
                                <button type="button" class="btn btn-outline-dark me-3 fw-bold shadow-none"
                                    id="keranjang">Masukan
                                    Keranjang</button>
                                <button type="button" class="btn fw-bold text-light "
                                    style="background-color:#b18b5e;">BELI
                                    SEKARANG</button>
                            </div>
                        </div>
                        <% end_with %>
                </div>
            </div>

            </div>



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

            
                function priceTotal() {
                    var total = valueCount * price;
                    document.getElementById("price").innerText = total
                }

           
                document.querySelector(".plus-btn").addEventListener("click", function () {
            
                    valueCount = document.getElementById("quantity").value;

              
                    valueCount++;


                

                    document.getElementById("quantity").value = valueCount;

                    if (valueCount > 1) {
                        document.querySelector(".minus-btn").removeAttribute("disabled");
                        document.querySelector(".minus-btn").classList.remove("disabled")
                    }

                   
                    priceTotal()
                })



                
                document.querySelector(".minus-btn").addEventListener("click", function () {
                    
                    valueCount = document.getElementById("quantity").value;

                    
                    valueCount--;

                   
                    document.getElementById("quantity").value = valueCount

                    if (valueCount == 1) {
                        document.querySelector(".minus-btn").setAttribute("disabled", "disabled")
                    }

                    
                    priceTotal()
                })


                
                

            </script>

            <script>
                    $('#keranjang').click(function() {
                        // Get data from the page elements
                        var title = $('h2.fw-bold').text().trim(); // Ensure this selector targets the product title
                        var price = $('#price').text().trim(); // Ensure this selector targets the product price
                        var quantity = $('#quantity').val();
                        var imageSrc = $('#image').attr('src'); // Ensure this selector targets the product image
                        
                        // Create a data object to store
                        var item = {
                            title: title,
                            price: price,
                            quantity: quantity,
                            imageSrc: imageSrc
                        };
                        
                        // Save data to localStorage
                        var cartItems = JSON.parse(localStorage.getItem('cartItems')) || [];
                        cartItems.push(item);
                        localStorage.setItem('cartItems', JSON.stringify(cartItems));
                        
                        // Update cart icon or notify user (optional)
                        alert('Item berhasil ditambahkan ke keranjang.');
                        window.location.reload();
                    });
                </script>
                
            
            
            
            
