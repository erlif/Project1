<!-- Section1 -->
<div class="bgk mt-0 pt-lg-4 pb-5">
    <div class="container text-center">
        <div class="row">
            <div class="col-lg-6 text-start pt-5">
                <h5 class=" p-1 btn btn-light" style="background-color: #ebe5d9; color: #b18b5e;pointer-events: none ;">NEW ARRIVAL...
                </h5>
                <h1>Elevate <br> Your Home <br> Aesthetics</h1>
                <p>A furniture e-commerce company operates in the digital <br> space, offering a wide range of
                    furniture products for sale <br> through an online platform</p>
                <div class="button gap-5">
                   <a href="/shop-page"><button type="button" class="btn pl text-light"  style="background-color: #b18b6e">BUY NOW
                        ></button></a>
                    <a href="/shop">
                    <button type="button" class="btn ls ms-2">VIEW DETAILS ></button>
                    </a>
                </div>
            </div>
            <div class="col-lg-6 mt-4  pb-2 ">
                <div class="circle-container">
                    <div class="circle"></div>
                    <!-- <div class="circle"></div> -->
                    <div class="swiper mySwiper">
                        <div class="swiper-wrapper">
                            <% loop $Homeimage %>
                                <div class="swiper-slide">
                                    $Image
                                </div>
                                <% end_loop %>

                        </div>
                        <div class="swiper-pagination"></div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<div class="container mt-5 ">
    <div class="row">
        <div class="col-3">
            <div class="row d-flex justify-content-center">
                <div class="col text-center">
                    <i class="fa-solid fa-truck-fast ap"></i>
                </div>
                <div class="col text-start cil">
                    <h6>Free Delivery</h6>
                    <p>Free shipping on all order</p>
                </div>
            </div>
        </div>
        <div class="col-3">
            <div class="row">
                <div class="col text-center">
                    <i class="fa-regular fa-credit-card ap"></i>

                </div>
                <div class="col text-start cil">
                    <h6>Money Return</h6>
                    <p>Back Guarantee under 7 day</p>
                </div>
            </div>
        </div>
        <div class="col-3">
            <div class="row">
                <div class="col text-center">
                    <i class="fa-regular fa-clock ap"></i>
                </div>
                <div class="col text-start cil">
                    <h6>Online Support </h6>
                    <p>Support online 24 hours a day</p>
                </div>
            </div>
        </div>
        <div class="col-3">
            <div class="row">
                <div class="col text-center">
                    <i class="fa-solid fa-hand-holding-dollar ap"></i>
                </div>
                <div class="col text-start cil">
                    <h6>Reliable</h6>
                    <p>Trusted by 100+ brands</p>
                </div>
            </div>
        </div>
    </div>
</div>

<!-- Section2 -->
<div class="container text-center">
    <div class="row text-center">
        <% loop $Homesection2 %>
            <div class="col-6">
                <div class="card mb-3">
                    <div class="row g-0" style="background-color: #ebf9fd;">
                        <div class="col-md-8">
                            <div class="card-body text-start ms-lg-4">
                                <p style="color: #b18b5e;">$Description</p>
                                <h6 class="card-title fw-bold" style="text-decoration:none;">$Title</h6>
                            <a href="/pindah/home/Homesection2/$ID" style="text-decoration:none;"><button type="button" class="btn pl text-light ">BUY NOW ></button></a>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <% with $section2.ScaleWidth(750) %>
                                <img class="my-custom-class img-fluid" src="$URL" alt=""  />
                                <% end_with %>
                        </div>
                    </div>
                </div>
            </div>
            <% end_loop %>
    </div>
</div>

<!-- error -->
    <!-- Section3 -->
    <div class="text-center">
        <h5 class="container text-center lf " style="width:15%; border-radius:20px;">TOP SALE</h5>
        <h3>Featured Product</h3>
    </div>
    <div class="owl-carousel owl-theme dfs  text-center" style="size: 20%;">
        <% loop $Homesection3 %>
            <div class="item">
                <div class="card sdr text-white">
                    <% with $section3 %>
                    <a href="/pindah/home/Homesection3/$ID" style="text-decoration:none;"><img class="my-custom-class card-img sdr img-thumbnail" src="$URL" alt="" /></a>
                        <% end_with %>
                            <%-- <img src="$resourceURL('themes/simple/images/slider6.png')" class="card-img sdr"
                                alt="..."> --%>
                                <div class="card-img-overlay">
                                <h6  class=" pl text-light " style="width:40%; height:20px; border-radius: 5px;">$Diskon</h6>
                                </div>
                </div>
            <a href="/pindah/home/Homesection3/$ID"><h6>$Title</h6></a>
                <%-- <i class="fa-regular fa-star"></i>
                <i class="fa-regular fa-star"></i>
                <i class="fa-regular fa-star"></i>
                <i class="fa-regular fa-star"></i>
                <i class="fa-regular fa-star"></i> --%>
                <p>$Harga</p>
            </div>
            <% end_loop %>
    </div>

 


    <!-- Section 4 -->
    <div class="container mt-5">
        <h5 class=" text-center lf  " style="width:12%; border-radius: 5px;">TOP SALE</h5>
        <div class="d-md-flex justify-content-between">
            <h4 class=" ">Item Collection</h4>

            <div class="nav nav-tabs " id="nav-tab" role="tablist">
                <button class="nav-link active" id="nav-home-tab" data-bs-toggle="tab" data-bs-target="#nav-home"
                    type="button" role="tab" aria-controls="nav-home" aria-selected="true">All Collection</button>
                <button class="nav-link" id="nav-profile-tab" data-bs-toggle="tab" data-bs-target="#nav-profile"
                    type="button" role="tab" aria-controls="nav-profile" aria-selected="false">Lamp</button>
                <button class="nav-link" id="nav-contact-tab" data-bs-toggle="tab" data-bs-target="#nav-contact"
                    type="button" role="tab" aria-controls="nav-contact" aria-selected="false">Chair</button>
                <button class="nav-link" id="nav-again-tab" data-bs-toggle="tab" data-bs-target="#nav-again"
                    type="button" role="tab" aria-controls="nav-again" aria-selected="false">Sofa</button>
            </div>
        </div>

        <div class="tab-content mt-2 float-start" id="nav-tabContent">
            <div class="tab-pane fade show active" id="nav-home" role="tabpanel" aria-labelledby="nav-home-tab">
                <div class="gallery">
                    <div class="container text-center">
                        <div class="row text-start">
                            <% loop $ProductItem %>
                                <div class="col mt-2 d-flex justify-content-center">
                                    <div class="card text-center" style="width: 18rem;">
                                        <a href="/pindah/shop-page/detailobject/$ID " style="text-decoration:none;">
                                            <% with $ImageThumbnail %>
                                                <img class="my-custom-class card-img-top  " src="$URL">
                                                <% end_with %>
                                                    <div class="card-body text-center">
                                                        <h5 class="fw-bold">$Title</h5>
                                                        <p class="card-text">Rp. $Harga </p>
                                                    </div>
                                        </a>
                                    </div>
                                </div>
                                <% end_loop %>
                        </div>
                    </div>
                </div>
                </div>
                <div class="tab-pane fade" id="nav-profile" role="tabpanel" aria-labelledby="nav-profile-tab">
                    <div class="gallery">
                        <div class="container text-center">
                            <div class="row text-start">
                                <% loop $Lamp %>
                                    <div class="col-4 d-flex justify-content-center ">
                                        <a href="/pindah/shop-page/detailobject/$ID " style="text-decoration:none;">
                                            <% with $ImageThumbnail %>
                                                <img class="my-custom-class card-img-top  " src="$URL">
                                                <% end_with %>
                                                    <div class="card-body text-center">
                                                        <h5 class="fw-bold">$Title</h5>
                                                        <p class="card-text">Rp. $Harga </p>
                                                    </div>
                                        </a>
                                    </div>
                                    <% end_loop %>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="tab-pane fade" id="nav-contact" role="tabpanel" aria-labelledby="nav-contact-tab">
                    <div class="row  text-start">
                        <% loop $Chair %>
                            <div class="col col-sm-4 d-flex justify-content-center mt-3">
                                <div class="card text-center" style="width: 18rem;">
                                    <a href="/pindah/shop-page/detailobject/$ID" style="text-decoration:none;">
                                        <% with $ImageThumbnail %>
                                            <img src="$URL" class="my-custom-class card-img-top" width="50" height="300">
                                            <% end_with %>
                                                <div class="card-body">
                                                    <h5 class="fw-bold">$Title</h5>
                                                    <p class="card-text">Rp. $Harga</p>
                                                </div>
                                    </a>
                                </div>
                            </div>
                            <% end_loop %>
                    </div>
                </div>
                <div class="tab-pane fade" id="nav-again" role="tabpanel" aria-labelledby="nav-again-tab">
                    <div class="row  text-start">
                        <% loop $Sofa %>
                            <div class="col mt-3 d-flex justify-content-center  ">
                                <div class="card text-center" style="width: 18rem;">
                                    <% with $ImageThumbnail %>
                                        <img class="my-custom-class card-img-top" src="$URL">
                                        <% end_with %>
    
                                            <div class="card-body text-center">
                                                <h5 class="fw-bold">$Title</h5>
                                                <p class="card-text">Rp. $Harga</p>
                                                <a href="/pindah/shop-page/detailobject/$ID" class="btn btn-primary">BUY
                                                </a>
                                            </div>
                                </div>
                            </div>
                            <% end_loop %>
                    </div>
                </div>
            </div>
        </div>
    </div>



      



        <!-- Section5 -->
        <div class="container mt-5 mb-5 pb-3">
            <h5 class=" text-center lf  scale1" style="width:12%; border-radius: 5px;">This Week</h5>
            <h2 class="fw-bold">Best Sellers</h2>
            <div class="smnd ">
                <div class="row" name="filter">
                 
                </div>
            </div>
        </div>


        <!-- Section 6 -->
        <div class="bg9">
            <div class="text-center ">
                <h5 class=" text-center lf " style="width:20%; height:auto; border-radius: 5px;  max-width: 1000px; margin: auto; left: 1%; right: 1%; ">Read Blogs</h5>
                <h2>Recent Blog</h2>
                <div class="container text-center pb-5 pt-4 d-flex justify-content-center">
                    <div class="row">
                        <div class="col  text-start">
                            <div class="card mb-3" style="max-width: 540px;">
                                <div class="row g-0">
                                    <div class="col-md-8">
                                        <div class="card-body text-start">
                                            <p class="bg9 rounded-pill btn cs" style="pointer-events: none ">Sofa Design</p>
                                            <p class="card-text"><small class="text-muted">BY Alex Santino 09
                                                    July,2024</small></p>
                                            <h5 class=" card-title fw-bold">Believe in your potential, <br>because you
                                                have
                                                the power to achieve your dreams</h5>
                                            <button class="lm rounded-pill btn ">></button>

                                        </div>
                                    </div>
                                    <div class="col-md-4 p-3 mt-4 ">
                                        <% with $SiteConfig  %>
                                            <img src="$BlogImage.URL" class="img-fluid rounded-start kd-8" alt="...">
                                        <% end_with %>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col  text-start">
                            <div class="card mb-3" style="max-width: 540px;">
                                <div class="row g-0">
                                    <div class="col-md-8">
                                        <div class="card-body text-start">
                                            <p class="bg9 rounded-pill btn cs" style="pointer-events: none ">Sofa Design</p>
                                            <p class="card-text"><small class="text-muted">BY Alex Santino 09
                                                    July,2024</small></p>
                                            <h5 class=" card-title fw-bold">Believe in your potential, <br>because you
                                                have
                                                the power to achieve your dreams</h5>
                                            <button class="lm rounded-pill btn ">></button>

                                        </div>
                                    </div>
                                    <div class="col-md-4 p-3 mt-4 ">
                                        <% with $SiteConfig  %>
                                            <img src="$BlogImage2.URL" class="img-fluid rounded-start kd-8" alt="...">
                                        <% end_with %>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>



        <!-- Section7 -->
        <div class="container text-end mt-5  d-flex justify-content-center">
            <div class="row text-center">
                <div class="col">
                    <div class="card" style="width: 18rem; background-color: #d9f3fb;">
                        <div class="card-body text-start ">
                            <h5 class="card-title fw-bold">Exclusive offers for <br>you</h5>
                            <h6 class="card-subtitle mb-3 mt-3 text-muted">Get weekly deals, valueable health <br>
                                information
                                and more.</h6>
                            <button class="btn btn-outline-secondary text-muted mb-2">SIGN UP ></button>
                        </div>
                    </div>
                </div>
                <div class="col">
                    <div class="card" style="width: 18rem; background-color: #f9ffe0;">
                        <div class="card-body text-start ">
                            <h5 class="card-title fw-bold">Join Our <br> Community</h5>
                            <h6 class="card-subtitle mb-3 mt-3 text-muted">Get weekly deals, valueable health <br>
                                information
                                and more.</h6>
                            <button class="btn btn-outline-secondary text-muted mt-2">JOIN FREE NOW ></button>
                        </div>
                    </div>
                </div>
                <div class="col">
                    <div class="card" style="width: 18rem; background-color: #ffe2e5; ">
                        <div class="card-body text-start  ">
                            <h5 class="card-title fw-bold">Get our FREE app <br> Now</h5>
                            <h6 class="card-subtitle mb-3 mt-3 text-muted">Get weekly deals, valueable health <br>
                                information
                                and more.</h6>
                            <div class="row mt-2 ">
                                <div class="col">
                                    <button class="btn"><img class="img-fluid"
                                            src="$resourceURL('themes/simple/images/playstore.png')" alt="" width="200"
                                            height="200">
                                    </button>
                                </div>

                                <div class="col">
                                    <button class="btn"><img class="img-fluid"
                                            src="$resourceURL('themes/simple/images/iphong.png')" alt="" width="200"
                                            height="200"></button>
                                </div>

                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>


















        <%-- <script>
            $(document).ready(function () {
                $.ajax({
                    url: "https://jsonplaceholder.typicode.com/photos", success: function (result) {
                        // console.log(result[10000])
                        // console.log(result[1].id)
                        // $(".dks").attr("src", result[9].thumbnailUrl)
                        for (let index = 0; index < 10; index++) {
                            const element = result[index];
                            var kj = index + 1;
                            // $(".kd").append("src",element.thumbnailUrl)
                            $(".kd-" + kj).attr("src", element.thumbnailUrl);




                        }


                        for (let index = 0; index < 5; index++) {
                            const element = result[index];
                            var kg = index + 1;
                            $(".utb" + kg).append(element.title);

                        }
                    }
                });
            });
        </script>

 --%>






<% require themedJavascript('Home') %>
<% require themedCSS('home') %>


                <script>
                    var swiper = new Swiper(".mySwiper", {
                        direction: "vertical",
                        autoplay: {
                            delay: 2500,
                            disableOnInteraction: false,
                        },
                        pagination: {
                            el: ".swiper-pagination",
                            clickable: true,
                        },
                    });
                </script>

                <script>
                    $('.ksd').owlCarousel({
                        loop: true,
                        margin: 10,
                        autoplay: false,
                        dots: false,
                        nav: false,
                        responsive: {
                            0: {
                                items: 1
                            },
                            600: {
                                items: 3
                            },
                            50000: {
                                items: 3
                            }
                        }
                    })
                </script>



                <script>
                    $('.dfs').owlCarousel({
                        loop: true,
                        margin: 10,
                        autoplay: false,
                        dots: false,
                        nav: false,
                        responsive: {
                            0: {
                                items: 1
                            },
                            600: {
                                items: 3
                            },
                            600: {
                                items: 4
                            }
                        }
                    })
                </script>


                <%-- <script>
                    var countDownDate = new Date("Oct 16, 2024 00:00:00").getTime();
                    var x = setInterval(function () {
                    var now = new Date().getTime();
                    var distance = countDownDate - now;

                    var days = Math.floor(distance / (1000 * 60 * 60 * 24));
                    var hours = Math.floor((distance % (1000 * 60 * 60 * 24)) / (1000 * 60 * 60));
                    var minutes = Math.floor((distance % (1000 * 60 * 60)) / (1000 * 60));
                    var seconds = Math.floor((distance % (1000 * 60)) / 1000);

                    document.getElementById("days").innerHTML = days;
                    document.getElementById("hours").innerHTML = hours;
                    document.getElementById("minutes").innerHTML = minutes;
                    document.getElementById("seconds").innerHTML = seconds;

                    }, 1000);

                    $(document).ready(function () {
                        $.ajax({
                            url: "https://jsonplaceholder.typicode.com/photos", success: function (result) {
                         // console.log(result[10000])
                        // console.log(result[1].id)
                        // $(".dks").attr("src", result[9].thumbnailUrl)
                        for (let index = 0; index < 10; index++) {
                            const element = result[index];
                            var kj = index +1;
                             // $(".kd").append("src",element.thumbnailUrl)
                            $(".kd-" + kj).attr("src",  element.thumbnailUrl );
                        }
                        for (let index = 0; index < 5; index++) {
                            const element = result[index];
                            var kg = index + 1;
                            $(".utb" + kg).append(element.title);
                
                        }      
                    }
                    });
                    });


                    $(document).ready(function(){
                        $('[data-toggle="tooltip"]').tooltip(); 
                    });

                </script> --%>

                <script>
                    $(document).ready(function (){
      $.ajax ({
        type: 'post',
        url: "{$BaseHref}/cart/filter",
        success:function(filter)
        {
          $("div[name=filter]").html(filter);
        }
      });
                    })
                </script>