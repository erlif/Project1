<?php
$val .= '<!-- Section1 -->
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
                            ';

$scope->locally()->obj('Homeimage', null, true); $scope->pushScope(); while (($key = $scope->next()) !== false) {
$val .= '
                                <div class="swiper-slide">
                                    ';

$val .= $scope->locally()->XML_val('Image', null, true);
$val .= '
                                </div>
                                ';


}; $scope->popScope(); 
$val .= '

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
        ';

$scope->locally()->obj('Homesection2', null, true); $scope->pushScope(); while (($key = $scope->next()) !== false) {
$val .= '
            <div class="col-6">
                <div class="card mb-3">
                    <div class="row g-0" style="background-color: #ebf9fd;">
                        <div class="col-md-8">
                            <div class="card-body text-start ms-lg-4">
                                <p style="color: #b18b5e;">';

$val .= $scope->locally()->XML_val('Description', null, true);
$val .= '</p>
                                <h6 class="card-title fw-bold" style="text-decoration:none;">';

$val .= $scope->locally()->XML_val('Title', null, true);
$val .= '</h6>
                            <a href="/pindah/home/Homesection2/';

$val .= $scope->locally()->XML_val('ID', null, true);
$val .= '" style="text-decoration:none;"><button type="button" class="btn pl text-light ">BUY NOW ></button></a>
                            </div>
                        </div>
                        <div class="col-md-4">
                            ';

$scope->locally()->obj('section2', null, true)->obj('ScaleWidth', [750], true); $scope->pushScope();
$val .= '
                                <img class="my-custom-class img-fluid" src="';

$val .= $scope->locally()->XML_val('URL', null, true);
$val .= '" alt=""  />
                                ';


; $scope->popScope(); 
$val .= '
                        </div>
                    </div>
                </div>
            </div>
            ';


}; $scope->popScope(); 
$val .= '
    </div>
</div>

<!-- error -->
    <!-- Section3 -->
    <div class="text-center">
        <h5 class="container text-center lf " style="width:15%; border-radius:20px;">TOP SALE</h5>
        <h3>Featured Product</h3>
    </div>
    <div class="owl-carousel owl-theme dfs  text-center" style="size: 20%;">
        ';

$scope->locally()->obj('Homesection3', null, true); $scope->pushScope(); while (($key = $scope->next()) !== false) {
$val .= '
            <div class="item">
                <div class="card sdr text-white">
                    ';

$scope->locally()->obj('section3', null, true); $scope->pushScope();
$val .= '
                    <a href="/pindah/home/Homesection3/';

$val .= $scope->locally()->XML_val('ID', null, true);
$val .= '" style="text-decoration:none;"><img class="my-custom-class card-img sdr img-thumbnail" src="';

$val .= $scope->locally()->XML_val('URL', null, true);
$val .= '" alt="" /></a>
                        ';


; $scope->popScope(); 
$val .= '
                            ';


$val .= '
                                <div class="card-img-overlay">
                                <h6  class=" pl text-light " style="width:40%; height:20px; border-radius: 5px;">';

$val .= $scope->locally()->XML_val('Diskon', null, true);
$val .= '</h6>
                                </div>
                </div>
            <a href="/pindah/home/Homesection3/';

$val .= $scope->locally()->XML_val('ID', null, true);
$val .= '"><h6>';

$val .= $scope->locally()->XML_val('Title', null, true);
$val .= '</h6></a>
                ';


$val .= '
                <p>';

$val .= $scope->locally()->XML_val('Harga', null, true);
$val .= '</p>
            </div>
            ';


}; $scope->popScope(); 
$val .= '
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
                            ';

$scope->locally()->obj('ProductItem', null, true); $scope->pushScope(); while (($key = $scope->next()) !== false) {
$val .= '
                                <div class="col mt-2 d-flex justify-content-center">
                                    <div class="card text-center" style="width: 18rem;">
                                        <a href="/pindah/shop-page/detailobject/';

$val .= $scope->locally()->XML_val('ID', null, true);
$val .= ' " style="text-decoration:none;">
                                            ';

$scope->locally()->obj('ImageThumbnail', null, true); $scope->pushScope();
$val .= '
                                                <img class="my-custom-class card-img-top  " src="';

$val .= $scope->locally()->XML_val('URL', null, true);
$val .= '">
                                                ';


; $scope->popScope(); 
$val .= '
                                                    <div class="card-body text-center">
                                                        <h5 class="fw-bold">';

$val .= $scope->locally()->XML_val('Title', null, true);
$val .= '</h5>
                                                        <p class="card-text">Rp. ';

$val .= $scope->locally()->XML_val('Harga', null, true);
$val .= ' </p>
                                                    </div>
                                        </a>
                                    </div>
                                </div>
                                ';


}; $scope->popScope(); 
$val .= '
                        </div>
                    </div>
                </div>
                </div>
                <div class="tab-pane fade" id="nav-profile" role="tabpanel" aria-labelledby="nav-profile-tab">
                    <div class="gallery">
                        <div class="container text-center">
                            <div class="row text-start">
                                ';

$scope->locally()->obj('Lamp', null, true); $scope->pushScope(); while (($key = $scope->next()) !== false) {
$val .= '
                                    <div class="col-4 d-flex justify-content-center ">
                                        <a href="/pindah/shop-page/detailobject/';

$val .= $scope->locally()->XML_val('ID', null, true);
$val .= ' " style="text-decoration:none;">
                                            ';

$scope->locally()->obj('ImageThumbnail', null, true); $scope->pushScope();
$val .= '
                                                <img class="my-custom-class card-img-top  " src="';

$val .= $scope->locally()->XML_val('URL', null, true);
$val .= '">
                                                ';


; $scope->popScope(); 
$val .= '
                                                    <div class="card-body text-center">
                                                        <h5 class="fw-bold">';

$val .= $scope->locally()->XML_val('Title', null, true);
$val .= '</h5>
                                                        <p class="card-text">Rp. ';

$val .= $scope->locally()->XML_val('Harga', null, true);
$val .= ' </p>
                                                    </div>
                                        </a>
                                    </div>
                                    ';


}; $scope->popScope(); 
$val .= '
                            </div>
                        </div>
                    </div>
                </div>
                <div class="tab-pane fade" id="nav-contact" role="tabpanel" aria-labelledby="nav-contact-tab">
                    <div class="row  text-start">
                        ';

$scope->locally()->obj('Chair', null, true); $scope->pushScope(); while (($key = $scope->next()) !== false) {
$val .= '
                            <div class="col col-sm-4 d-flex justify-content-center mt-3">
                                <div class="card text-center" style="width: 18rem;">
                                    <a href="/pindah/shop-page/detailobject/';

$val .= $scope->locally()->XML_val('ID', null, true);
$val .= '" style="text-decoration:none;">
                                        ';

$scope->locally()->obj('ImageThumbnail', null, true); $scope->pushScope();
$val .= '
                                            <img src="';

$val .= $scope->locally()->XML_val('URL', null, true);
$val .= '" class="my-custom-class card-img-top" width="50" height="300">
                                            ';


; $scope->popScope(); 
$val .= '
                                                <div class="card-body">
                                                    <h5 class="fw-bold">';

$val .= $scope->locally()->XML_val('Title', null, true);
$val .= '</h5>
                                                    <p class="card-text">Rp. ';

$val .= $scope->locally()->XML_val('Harga', null, true);
$val .= '</p>
                                                </div>
                                    </a>
                                </div>
                            </div>
                            ';


}; $scope->popScope(); 
$val .= '
                    </div>
                </div>
                <div class="tab-pane fade" id="nav-again" role="tabpanel" aria-labelledby="nav-again-tab">
                    <div class="row  text-start">
                        ';

$scope->locally()->obj('Sofa', null, true); $scope->pushScope(); while (($key = $scope->next()) !== false) {
$val .= '
                            <div class="col mt-3 d-flex justify-content-center  ">
                                <div class="card text-center" style="width: 18rem;">
                                    ';

$scope->locally()->obj('ImageThumbnail', null, true); $scope->pushScope();
$val .= '
                                        <img class="my-custom-class card-img-top" src="';

$val .= $scope->locally()->XML_val('URL', null, true);
$val .= '">
                                        ';


; $scope->popScope(); 
$val .= '
    
                                            <div class="card-body text-center">
                                                <h5 class="fw-bold">';

$val .= $scope->locally()->XML_val('Title', null, true);
$val .= '</h5>
                                                <p class="card-text">Rp. ';

$val .= $scope->locally()->XML_val('Harga', null, true);
$val .= '</p>
                                                <a href="/pindah/shop-page/detailobject/';

$val .= $scope->locally()->XML_val('ID', null, true);
$val .= '" class="btn btn-primary">BUY
                                                </a>
                                            </div>
                                </div>
                            </div>
                            ';


}; $scope->popScope(); 
$val .= '
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
                                        ';

$scope->locally()->obj('SiteConfig', null, true); $scope->pushScope();
$val .= '
                                            <img src="';

$val .= $scope->locally()->obj('BlogImage', null, true)->XML_val('URL', null, true);
$val .= '" class="img-fluid rounded-start kd-8" alt="...">
                                        ';


; $scope->popScope(); 
$val .= '
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
                                        ';

$scope->locally()->obj('SiteConfig', null, true); $scope->pushScope();
$val .= '
                                            <img src="';

$val .= $scope->locally()->obj('BlogImage2', null, true)->XML_val('URL', null, true);
$val .= '" class="img-fluid rounded-start kd-8" alt="...">
                                        ';


; $scope->popScope(); 
$val .= '
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
                                            src="';

$val .= $scope->locally()->XML_val('resourceURL', ['themes/simple/images/playstore.png'], true);
$val .= '" alt="" width="200"
                                            height="200">
                                    </button>
                                </div>

                                <div class="col">
                                    <button class="btn"><img class="img-fluid"
                                            src="';

$val .= $scope->locally()->XML_val('resourceURL', ['themes/simple/images/iphong.png'], true);
$val .= '" alt="" width="200"
                                            height="200"></button>
                                </div>

                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>


















        ';


$val .= '






';

\SilverStripe\View\Requirements::themedJavascript('Home');
$val .= '
';

\SilverStripe\View\Requirements::themedCSS('home');
$val .= '


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
                    $(\'.ksd\').owlCarousel({
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
                    $(\'.dfs\').owlCarousel({
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


                ';


$val .= '

                <script>
                    $(document).ready(function (){
      $.ajax ({
        type: \'post\',
        url: "';

$val .= $scope->locally()->XML_val('BaseHref', null, true);
$val .= '/cart/filter",
        success:function(filter)
        {
          $("div[name=filter]").html(filter);
        }
      });
                    })
                </script>';

