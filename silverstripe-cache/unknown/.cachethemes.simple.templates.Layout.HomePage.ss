<?php
$val .= '<!-- Section1 -->
<div class="bgk mt-0 pt-5 pb-4">
    <div class="container text-center">
        <div class="row">
            <div class="col-lg-6 text-start pt-5">
                <h5 class=" p-1 btn btn-light" style="background-color: #ebe5d9; color: #b18b5e;">NEW ARRIVAL...
                </h5>
                <h1>Elevate <br> Your Home <br> Aesthetics</h1>
                <p>A furniture e-commerce company operates in the digital <br> space, offering a wide range of
                    furniture products for sale <br> through an online platform</p>
                <div class="button gap-5">
                   <a href="/shop-page"> <button type="button" class="btn pl text-light"  style="background-color: #b18b6e">BUY NOW
                        ></button></a>
                    <button type="button" class="btn ls">VIEW DETAILS ></button>
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
                            <div class="card-body text-start mt-0 ms-4">
                                <p style="color: #b18b5e;">';

$val .= $scope->locally()->XML_val('Description', null, true);
$val .= '</p>
                                <h5 class="card-title" style="text-decoration:none;">';

$val .= $scope->locally()->XML_val('Title', null, true);
$val .= '</h5>
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
$val .= '" alt="" width="';

$val .= $scope->locally()->XML_val('Width', null, true);
$val .= '"
                                    height="';

$val .= $scope->locally()->XML_val('Height', null, true);
$val .= '" />
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
        <h5 class=" text-center btn btn-light lf ">TOP SALE</h5>
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
$val .= '" style="text-decoration:none;"><img class="my-custom-class card-img sdr img-fluid" src="';

$val .= $scope->locally()->XML_val('URL', null, true);
$val .= '" alt="" width="';

$val .= $scope->locally()->XML_val('Width', null, true);
$val .= '" height="';

$val .= $scope->locally()->XML_val('Height', null, true);
$val .= '" /></a>
                        ';


; $scope->popScope(); 
$val .= '
                            ';


$val .= '
                                <div class="card-img-overlay">
                                    <button type="button" class="btn pl text-light text-start d-flex ">';

$val .= $scope->locally()->XML_val('Diskon', null, true);
$val .= '</button>
                                </div>
                </div>
            <a href="/pindah/home/Homesection3/';

$val .= $scope->locally()->XML_val('ID', null, true);
$val .= '"><h6>';

$val .= $scope->locally()->XML_val('Title', null, true);
$val .= '</h6></a>
                <i class="fa-regular fa-star"></i>
                <i class="fa-regular fa-star"></i>
                <i class="fa-regular fa-star"></i>
                <i class="fa-regular fa-star"></i>
                <i class="fa-regular fa-star"></i>
                <p>';

$val .= $scope->locally()->XML_val('Harga', null, true);
$val .= '</p>
            </div>
            ';


}; $scope->popScope(); 
$val .= '
    </div>

    <!-- kurang penyesuains -->
    <!-- Section4 -->
    <div class="sctn4 mt-5">
        <div class="row text-center p-2">
            <div class="col-1"></div>
            <div class="col-md-5 col-10 mt-2 pl text-start ">
                <div class="outline-light mt-5 mb-5 pb-4 ">
                    <div class="dalam ms-3 mb-4">
                        <h6 class="mt-5 text-light">HOT DEALS FURNITURE</h6>
                        <br>
                        <h3 class="text-light">LIVE FURNTIURE <br>YOUR LOVE</h3>
                        <br>
                    <a href="/pindah/shop-page/" style="text-decoration:none;"><button type="button" class="btn btn-light mt-1  fw-bold ">BUY NOW ></button></a>
                    </div>
                </div>
            </div>
            <div class="col-md-5 col-10 text-center container">
                <div class="mt-2 room-image">
                    <img src="';

$val .= $scope->locally()->XML_val('resourceURL', ['themes/simple/images/p.jpg'], true);
$val .= '" alt="Ruang Tamu" class="img-fluid">
                    <div class="tooltip-point" data-toggle="tooltip" title="Sofa: Rp 1.500.000"></div>
                    <div class="tooltip-point" data-toggle="tooltip" title="Meja: Rp 2.000.000"
                        style="top: 60%; left: 40%;"></div>
                </div>
            </div>
        </div>
    </div>



    <!-- Section 5 -->
    <div class="container mt-5">
        <h5 class=" p-1 btn btn-light text-center" style="background-color: #ebe5d9; color: #b18b5e;">THIS MONTH</h5>
        <br>
        <h4 class="float-start mt-2">Trendy Collection</h4>

        <nav>
            <div class="nav nav-tabs float-end" id="nav-tab" role="tablist">
                <button class="nav-link active" id="nav-home-tab" data-bs-toggle="tab" data-bs-target="#nav-home"
                    type="button" role="tab" aria-controls="nav-home" aria-selected="true">All Collection</button>
                <button class="nav-link" id="nav-profile-tab" data-bs-toggle="tab" data-bs-target="#nav-profile"
                    type="button" role="tab" aria-controls="nav-profile" aria-selected="false">New In</button>
                <button class="nav-link" id="nav-contact-tab" data-bs-toggle="tab" data-bs-target="#nav-contact"
                    type="button" role="tab" aria-controls="nav-contact" aria-selected="false">Top Rated</button>
                <button class="nav-link" id="nav-again-tab" data-bs-toggle="tab" data-bs-target="#nav-again"
                    type="button" role="tab" aria-controls="nav-again" aria-selected="false">Tensing Collection</button>
            </div>
        </nav>

        <div class="tab-content mt-2 float-start" id="nav-tabContent">
            <div class="tab-pane fade show active" id="nav-home" role="tabpanel" aria-labelledby="nav-home-tab">
                <div class="gallery">
                    <div class="container text-center">
                        <div class="row text-start">
                            ';

$scope->locally()->obj('Homesection4', null, true); $scope->pushScope(); while (($key = $scope->next()) !== false) {
$val .= '
                                <div class="col-3 p-3">
                                    <div class="card">
                                        ';

$scope->locally()->obj('section4', null, true); $scope->pushScope();
$val .= '
                                            <img class="my-custom-class img-fluid nad" src="';

$val .= $scope->locally()->XML_val('URL', null, true);
$val .= '" alt="" width="300px"
                                                height="300px" />
                                            ';


; $scope->popScope(); 
$val .= '
                                    </div>
                                    <a href = "/pindah/home/Homesection4/';

$val .= $scope->locally()->XML_val('ID', null, true);
$val .= '" style="text-decoration:none;">
                                    <h6>';

$val .= $scope->locally()->XML_val('Title', null, true);
$val .= '</h6>
                                    <i class="fa-regular fa-star"></i>
                                    <i class="fa-regular fa-star"></i>
                                    <i class="fa-regular fa-star"></i>
                                    <i class="fa-regular fa-star"></i>
                                    <i class="fa-regular fa-star"></i>
                                    <p class="card-text">';

$val .= $scope->locally()->XML_val('Harga', null, true);
$val .= '</p>
                                </a>
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

$scope->locally()->obj('Homesection4', null, true); $scope->pushScope(); while (($key = $scope->next()) !== false) {
$val .= '
                                    <div class="col-3 p-3">
                                        <div class="card">
                                            ';

$scope->locally()->obj('section4', null, true); $scope->pushScope();
$val .= '
                                                <img class="my-custom-class img-fluid nad" src="';

$val .= $scope->locally()->XML_val('URL', null, true);
$val .= '" alt="" width="300px"
                                                    height="300px" />
                                                ';


; $scope->popScope(); 
$val .= '
                                        </div>
                                        <a href = "/pindah/home/Homesection4/';

$val .= $scope->locally()->XML_val('ID', null, true);
$val .= '" style="text-decoration:none;">
                                        <h6>';

$val .= $scope->locally()->XML_val('Title', null, true);
$val .= '</h6>
                                        <i class="fa-regular fa-star"></i>
                                        <i class="fa-regular fa-star"></i>
                                        <i class="fa-regular fa-star"></i>
                                        <i class="fa-regular fa-star"></i>
                                        <i class="fa-regular fa-star"></i>
                                        <p class="card-text">';

$val .= $scope->locally()->XML_val('Harga', null, true);
$val .= '</p>
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

$scope->locally()->obj('Homesection4', null, true); $scope->pushScope(); while (($key = $scope->next()) !== false) {
$val .= '
                            <div class="col-3 p-3">
                                <div class="card">
                                    ';

$scope->locally()->obj('section4', null, true); $scope->pushScope();
$val .= '
                                        <img class="my-custom-class img-fluid nad" src="';

$val .= $scope->locally()->XML_val('URL', null, true);
$val .= '" alt="" width="300px"
                                            height="300px" />
                                        ';


; $scope->popScope(); 
$val .= '
                                </div>
                                <a href = "/pindah/home/Homesection4/';

$val .= $scope->locally()->XML_val('ID', null, true);
$val .= '" style="text-decoration:none;">
                                <h6>';

$val .= $scope->locally()->XML_val('Title', null, true);
$val .= '</h6>
                                <i class="fa-regular fa-star"></i>
                                <i class="fa-regular fa-star"></i>
                                <i class="fa-regular fa-star"></i>
                                <i class="fa-regular fa-star"></i>
                                <i class="fa-regular fa-star"></i>
                                <p class="card-text">';

$val .= $scope->locally()->XML_val('Harga', null, true);
$val .= '</p>
                            </a>
                            </div>
                            ';


}; $scope->popScope(); 
$val .= '
                    </div>
                </div>
                <div class="tab-pane fade" id="nav-again" role="tabpanel" aria-labelledby="nav-again-tab">
                    <div class="row  text-start">
                        ';

$scope->locally()->obj('Homesection4', null, true); $scope->pushScope(); while (($key = $scope->next()) !== false) {
$val .= '
                            <div class="col-3 p-3">
                                <div class="card">
                                    ';

$scope->locally()->obj('section4', null, true); $scope->pushScope();
$val .= '
                                        <img class="my-custom-class img-fluid nad" src="';

$val .= $scope->locally()->XML_val('URL', null, true);
$val .= '" alt="" width="300px"
                                            height="300px" />
                                        ';


; $scope->popScope(); 
$val .= '
                                </div>
                                <a href = "/pindah/home/Homesection4/';

$val .= $scope->locally()->XML_val('ID', null, true);
$val .= '">
                                <h6>';

$val .= $scope->locally()->XML_val('Title', null, true);
$val .= '</h6>
                                <i class="fa-regular fa-star"></i>
                                <i class="fa-regular fa-star"></i>
                                <i class="fa-regular fa-star"></i>
                                <i class="fa-regular fa-star"></i>
                                <i class="fa-regular fa-star"></i>
                                <p class="card-text">';

$val .= $scope->locally()->XML_val('Harga', null, true);
$val .= '</p>
                            </a>
                            </div>
                            ';


}; $scope->popScope(); 
$val .= '
                    </div>
                </div>
            </div>
        </div>
    </div>



        <!-- bugigg -->
        <!-- Section6 -->
        ';


$val .= '


        <br>
        <br>
        <!-- Section7 -->
        <div class="bg7 mt-5" style="background-image: ';

$val .= $scope->locally()->XML_val('resourceURL', ['themes/simple/images/bg3.jpg'], true);
$val .= ';">
            <div class="overlay">
                <div class="text-center mt-5 text-light">
                    <h5 class=" p-1 btn  text-center mt-5" style="background-color:#454444; color: white;">TESTIMONIAL
                    </h5>
                    <h2 class="mb-5">Client Feedback</h2>

                    <div class="owl-carousel owl-theme ksd mt-5">
                        <div class="item kds">
                            <div class="card text-dark nsa">
                                <div class="card-body text-start nsa">
                                    <i class="fa-solid fa-star"></i>
                                    <i class="fa-solid fa-star"></i>
                                    <i class="fa-solid fa-star"></i>
                                    <i class="fa-solid fa-star"></i>
                                    <i class="fa-regular fa-star"></i>
                                    <h6> Ralph Edwards</h6>
                                    <p>UI/UX Designer</p>
                                    <p>Lorem ipsum dolor sit amet <br>consectetur adipisicing elit. <br>
                                        Aliquid dolorum hic numquam eligendi <br>vitae autem nobis est non voluptate
                                    </p>

                                </div>
                            </div>
                        </div>
                        <div class="item kds">
                            <div class="card text-dark nsa">
                                <div class="card-body text-start nsa">
                                    <i class="fa-solid fa-star"></i>
                                    <i class="fa-solid fa-star"></i>
                                    <i class="fa-solid fa-star"></i>
                                    <i class="fa-solid fa-star"></i>
                                    <i class="fa-regular fa-star"></i>
                                    <h6>Jerome Bell</h6>
                                    <p>Web Designer</p>
                                    <p>Lorem ipsum dolor sit amet <br>consectetur adipisicing elit. <br>
                                        Aliquid dolorum hic numquam eligendi <br>vitae autem nobis est non voluptate
                                    </p>

                                </div>
                            </div>
                        </div>
                        <div class="item kds">
                            <div class="card text-dark nsa">
                                <div class="card-body text-start nsa">
                                    <i class="fa-solid fa-star"></i>
                                    <i class="fa-solid fa-star"></i>
                                    <i class="fa-solid fa-star"></i>
                                    <i class="fa-solid fa-star"></i>
                                    <i class="fa-regular fa-star"></i>
                                    <h6>Annete Black</h6>
                                    <p>Dog Trainer</p>
                                    <p>Lorem ipsum dolor sit amet <br>consectetur adipisicing elit. <br>
                                        Aliquid dolorum hic numquam eligendi <br>vitae autem nobis est non voluptate
                                    </p>
                                </div>
                            </div>
                        </div>
                        <div class="item kds">
                            <div class="card text-dark nsa">
                                <div class="card-body text-start nsa">
                                    <i class="fa-solid fa-star"></i>
                                    <i class="fa-solid fa-star"></i>
                                    <i class="fa-solid fa-star"></i>
                                    <i class="fa-solid fa-star"></i>
                                    <i class="fa-regular fa-star"></i>
                                    <h6>Edwards</h6>
                                    <p>UI/UX Designer</p>
                                    <p>Lorem ipsum dolor sit amet <br>consectetur adipisicing elit. <br>
                                        Aliquid dolorum hic numquam eligendi <br>vitae autem nobis est non voluptate
                                    </p>
                                </div>
                            </div>
                        </div>
                        <div class="item kds">
                            <div class="card text-dark nsa">
                                <div class="card-body text-start nsa">
                                    <i class="fa-solid fa-star"></i>
                                    <i class="fa-solid fa-star"></i>
                                    <i class="fa-solid fa-star"></i>
                                    <i class="fa-solid fa-star"></i>
                                    <i class="fa-regular fa-star"></i>
                                    <h6> Somik</h6>
                                    <p>UI/UX Designer</p>
                                    <p>Lorem ipsum dolor sit amet <br>consectetur adipisicing elit. <br>
                                        Aliquid dolorum hic numquam eligendi <br>vitae autem nobis est non voluptate
                                    </p>
                                </div>
                            </div>
                        </div>
                        <div class="item kds">
                            <div class="card text-dark nsa ">
                                <div class="card-body text-start nsa">
                                    <i class="fa-solid fa-star"></i>
                                    <i class="fa-solid fa-star"></i>
                                    <i class="fa-solid fa-star"></i>
                                    <i class="fa-solid fa-star"></i>
                                    <i class="fa-regular fa-star"></i>
                                    <h6> Rat Donalsd</h6>
                                    <p>UI/UX Designer</p>
                                    <p>Lorem ipsum dolor sit amet <br>consectetur adipisicing elit. <br>
                                        Aliquid dolorum hic numquam eligendi <br>vitae autem nobis est non voluptate
                                    </p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- Section8 -->
        <div class="container mt-5 mb-5 pb-3">
            <h5 class=" text-center btn btn-light lf ">THIS WEEK</h5>
            <h2 class="fw-bold">Best Sellers</h2>
            <div class="smnd ">
                <div class="row ">
                    ';

$scope->locally()->obj('Thisweek', null, true); $scope->pushScope(); while (($key = $scope->next()) !== false) {
$val .= '
                        
                    <div class="col-4">
                        <div class="row g-0" style="max-width: 250px;">
                            <div class="col-md-4">
                    
                                ';

$scope->locally()->obj('week', null, true); $scope->pushScope();
$val .= '
                                    <img class="my-custom-class img-fluid rounded-start text-center" src="';

$val .= $scope->locally()->XML_val('URL', null, true);
$val .= '" alt="" />
                                    ';


; $scope->popScope(); 
$val .= '
                    
                            </div>
                            <div class="col-md-8">
                                <div class="card-body mt-0">
                                <a href="/pindah/home/Thisweek/';

$val .= $scope->locally()->XML_val('ID', null, true);
$val .= '/" style="text-decoration:none;"><h5 class="">';

$val .= $scope->locally()->XML_val('Title', null, true);
$val .= '</h5></a>
                            <a href="/pindah/home/Thisweek /';

$val .= $scope->locally()->XML_val('ID', null, true);
$val .= '" style="text-decoration:none;">  <h6 class="cs mb-0">';

$val .= $scope->locally()->XML_val('Harga', null, true);
$val .= '</h6></a>
                                    <i class="fa-regular fa-star"></i>
                                    <i class="fa-regular fa-star"></i>
                                    <i class="fa-regular fa-star"></i>
                                    <i class="fa-regular fa-star"></i>
                                    <i class="fa-regular fa-star"></i>
                                </div>
                            </div>
                        </div>
                    </div>
                ';


}; $scope->popScope(); 
$val .= '
                </div>
            </div>
        </div>


        <!-- Section 9 -->
        <div class="bg9">
            <div class="text-center">
                <h5 class=" text-center btn btn-light lf  mt-5">READ BLOG</h5>
                <h1>Recent Blog</h1>
                <div class="container text-center pb-5 pt-4 d-flex justify-content-center">
                    <div class="row">
                        <div class="col ms-5 text-center">
                            <div class="card mb-3" style="max-width: 540px;">
                                <div class="row g-0">
                                    <div class="col-md-8">
                                        <div class="card-body text-start">
                                            <p class="bg9 rounded-pill btn cs">Chair Design</p>
                                            <p class="card-text"><small class="text-muted">BY Alex Santino 09
                                                    July,2024</small></p>
                                            <h5 class="card-title fw-bold">Believe in your potential, <br>because you
                                                have
                                                the power to achieve your dreams</h5>
                                            <button class=" rounded-pill btn lm">></button>

                                        </div>
                                    </div>
                                    <div class="col-md-4 p-3 mt-4">
                                        <img src="" class="img-fluid rounded-start kd-7" alt="...">
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col  text-center">
                            <div class="card mb-3" style="max-width: 540px;">
                                <div class="row g-0">
                                    <div class="col-md-8">
                                        <div class="card-body text-start">
                                            <p class="bg9 rounded-pill btn cs">Sofa Design</p>
                                            <p class="card-text"><small class="text-muted">BY Alex Santino 09
                                                    July,2024</small></p>
                                            <h5 class=" card-title fw-bold">Believe in your potential, <br>because you
                                                have
                                                the power to achieve your dreams</h5>
                                            <button class="lm rounded-pill btn ">></button>

                                        </div>
                                    </div>
                                    <div class="col-md-4 p-3 mt-4 ">
                                        <img src="" class="img-fluid rounded-start kd-8" alt="...">
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>



        <!-- Section10 -->
        <div class="container text-center mt-5  d-flex justify-content-center    ">
            <div class="row text-center">
                <div class="col">
                    <div class="card" style="width: 18rem; background-color: #d9f3fb;">
                        <div class="card-body text-start p-4">
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
                        <div class="card-body text-start  p-4">
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
                        <div class="card-body text-start  p-4">
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


        <!-- Section11 -->
        <div class="container text-center mt-5">
            <div class="row">
                <div class="col">
                    <img src="" alt="" class="kd-1">
                </div>
                <div class="col">
                    <img src="" alt="" class="kd-2">
                </div>
                <div class="col">
                    <img src="" alt="" class="kd-3">
                </div>
                <div class="col">
                    <img src="" alt="" class="kd-4">
                </div>
                <div class="col">
                    <img src="" alt="" class="kd-5">
                </div>
            </div>
        </div>

















        <script>
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
                        autoplay: true,
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
                        autoplay: true,
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


