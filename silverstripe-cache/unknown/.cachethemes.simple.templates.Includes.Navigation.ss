<?php

$val .= '


    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">

    <!-- jQuery (if using any jQuery dependent Bootstrap features) -->
    <script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>

    <!-- Bootstrap Bundle JS (includes Popper) -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>

    <style>
        @import url(\'https://fonts.googleapis.com/css2?family=Baskervville+SC&family=Poppins:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap\');


        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }


        body,
        html {
            margin: 0;
            padding: 0;
        }



        h1,
        h2,
        h3,
        h4,
        h5 {
            font-family: Poppins;
        }

        p,
        a {
            font-family: Poppins;
        }

        .toogle {
            color: transparent !important;
        }

        .ppn {
            background-color: #b18b5e !important;
        }

        .dropdown {
            z-index: 10000;
        }

        .pl {
            background-color: #b18b5e !important;
        }

        .bgk {
            background-color: #f5f3ed;
        }

        .ls {
            border-color: #b18b5e;
            color: #b18b5e;
        }

        .lm {
            background-color: #f5f1e6;
            color: #b18b5e;
        }

        .kd {
            background-color: #ebe5d9;
        }

        .com {
            list-style-type: none;
        }


        @media (max-width: 385px) {
            .navbar {
                .pls {

                    h5 {
                        font-size: 60%;
                    }

                    i,
                    h6 {
                        font-size: 60%;
                    }
                }
            }
        }

        @media (max-width: 1000) {
            .dropdown {
                justify-content: left;
            }
        }

        .swiper {
            width: 100%;
            height: 450px;
            margin-top: 20px;
        }


        .swiper-slide {
            display: flex;
            justify-content: center;
            align-items: center;

        }

        .swiper-slide img {
            display: block;
            width: auto;
            max-width: 100%;
            max-height: 100%;
            object-fit: cover;
        }

        styling */ .swiper-pagination {
            bottom: 10px;
            text-align: center;
            z-index: 10;
        }

        .swiper-pagination-bullet {
            width: 10px;
            height: 10px;
            background: #000;
            opacity: 0.7;
        }

        .swiper-pagination-bullet-active {
            background: #000000;
            opacity: 1;
        }

        ling */ .swiper-button-next,
        .swiper-button-prev {
            color: #040404;
            width: 44px;
            height: 44px;
            margin-top: -22px;
        }

        .swiper-button-next::after,
        .swiper-button-prev::after {
            font-size: 20px;
        }

        .swiper-button-next:hover,
        .swiper-button-prev:hover {
            color: #dbe2ea;
        }


        @media (max-width: 991px) {
            .swiper {
                height: 350px;
            }
        }

        @media (max-width:767px) {
            .swiper {
                height: 250px;
            }
        }


        .circle-container {
            position: relative;
            display: inline-block;
        }

        .circle {
            position: absolute;
            top: 50%;
            left: 50%;
            width: 300px;
            /* Sesuaikan ukuran lingkaran */
            height: 300px;
            background-color: #d2bea6;
            /* Warna lingkaran */
            border-radius: 50%;
            transform: translate(-50%, -50%);
            z-index: 0;
        }

        .image {
            position: relative;
            z-index: 1;
            display: block;
        }


        .ap {
            color: #b18b5e;
            font-size: 40px;
        }


        .cil {
            size: 20%;
        }

        .lf {
            background-color: #ebe5d9;
            color: #b18b5e;
        }


        .fa-star {
            color: yellow;
        }

        .sdr {
            background-color: #f5f1e6;
        }

        .cs {
            color: #b18b5e;
        }

        .sctn4 {
            background-color: #f5f1e6;
        }

        .outline-light {
            border: 2px solid #f8f9fa;
            /* Use Bootstrap\'s light color */
        }

        .dot {
            height: 10px;
            width: 10px;
            background-color: #007bff;
            border-radius: 50%;
            display: inline-block;
        }

        .nav-tabs .nav-item {
            border: none;
            padding: 0;
            /* Adjust as needed */
        }


        /* Remove active tab background */
        .nav-tabs .nav-item.active {
            background-color: transparent;
            /* or specify your own background */
            border-color: transparent;
            /* optional */
        }

        .nav-item {
            color: #000;
        }


        .nav-item {
            position: relative;
            transition: color 0.3s ease, border-bottom-color 0.3s ease;
            /* Transition both color and bottom border */
            border-bottom: 2px solid transparent;
            /* Transparent initially */
        }

        ul li a {
            color: inherit;
        }

        .nav-item:hover {
            color: #b18b5e;
            /* Example hover color */
            border-bottom-color: #b18b5e;
            
            /* Change bottom border color on hover */
        }

        .nad {
            background-color: #f5f1e6;
        }

        .launch-time {
            display: flex;
            justify-content: center;
            gap: 5px;
        }

        .launch-time .card {
            flex: 0 120px;
            background-color: rgba(255, 255, 255, 0.5);
            border: 1px solid rgba(255, 255, 255, 0.2);
            padding: 5px;
            text-align: center;
        }

        .launch-time .card-header p {
            margin: 0;
            font-size: 1rem;
        }

        .launch-time .card-body span {
            font-size: 1rem;
        }

        .bg7 {
            position: relative;
            width: 100%;
            height: 100vh;
            background-image: url(\'../images/bg3.jpg\');
            background-size: cover;
            background-position: center;
            background-repeat: no-repeat;
        }

        .overlay {
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background-color: rgba(0, 0, 0, 0.95);
            /* Adjust the opacity as needed */
        }

        .ksd {
            width: 100%;
            /* Adjust the width as needed */
            margin: 0;
            /* Center the carousel */
        }

        .kds {
            padding: 1px;
            /* Adjust padding for smaller items */
        }

        .nsa {
            width: 100%;
            /* Ensure card takes full width of the item */
            max-width: 300px;
            /* Set a maximum width for the cards */
            margin: 0 auto;
            /* Center the cards */
        }


        .owl-nav {
            position: absolute;
            top: 105%;
            transform: translateY(-50%);
            width: 100%;
            text-align: center;
        }

        .owl-prev,
        .owl-next {
            background-color: #d2b48c;
            /* Light brown background color */
            color: #fff;
            /* Text color */
            border-radius: 50%;
            width: 40px;
            height: 40px;
            line-height: 40px;
            font-size: 20px;
            cursor: pointer;
            display: inline-block;
            margin: 0 10px;
        }

        .owl-prev:hover,
        .owl-next:hover {
            background-color: #a77d4b;
            /* Darker brown color on hover */
        }

        .owl-prev:before,
        .owl-next:before {
            content: \'2039\';
            /* Unicode for left arrow */
            font-family: \'Arial\', sans-serif;
            font-weight: bold;
        }

        .owl-next:before {
            content: \'203a\';
            /* Unicode for right arrow */
        }

        .bg9 {
            background-color: #f5f1e6;
        }

        a {
            text-decoration: none;
        }

        .btn-circle {
            width: 30px;
            height: 30px;
            border-radius: 50% !important;
            text-align: center !important;
            padding: 0 !important;
        }

        .btn-circleda {
            width: 30px;
            height: 30px;
            border-radius: 50%;
            text-align: center;
            padding: 0;
            background-color: #ffffff;
            color: rgb(0, 0, 0);
            padding-right: 1px;
        }

        .btn-circle i {
            line-height: 50px;
            /* Aligns icon vertically */
            size: 30%;
        }

        .custom-gap {
            margin-right: 15px;
            /* Adjust this value as needed */
        }

        .footer-separator {
            border: none;
            height: 1px;
            background-color: #ffffff;
            margin-top: 20px;
            margin-bottom: 20px;
        }

        .room-image {
            position: relative;
        }

        .tooltip-point {
            position: absolute;
            top: 20%;
            /* Atur posisi untuk titik pertama */
            left: 100%;
            /* Atur posisi untuk titik pertama */
            width: 10px;
            height: 10px;
            background-color: rgb(213, 139, 79);
            /* Warna titik */
            border-radius: 50%;
            cursor: pointer;
        }

        .tooltip-point:nth-child(2) {
            top: 40%;
            /* Atur posisi untuk titik kedua */
            left: 50%;
            /* Atur posisi untuk titik kedua */
        }


        @media (max-width: 990px) {
            .pewp {
                margin-bottom: 55px;
            }
        }

        .mj {
            margin-left: 20px;
        }


        .p {
            margin-bottom: 0;

        }



        .kda {
            gap: 15px;
        }

        .sixe {
            scale: 100%;
        }

        .float {
            float: left;
        }

        @media (max-width: 350px) {
            .scale {
                transform: scale(0.8);
            }
        }


        .total-quantity,
        .total-love {
            position: absolute;
            top: -13px;
            right: 0;
            font-size: x-large;
            background-color: #b18b5e;
            width: 40px;
            height: 40px;
            color: #fff;
            font-weight: bold;
            display: flex;
            justify-content: center;
            align-items: center;
            border-radius: 50%;
            transform: translateX(20px);
            scale: 0.5;
        }

        a {
            color: #000 !important;
        }


        .item-side:hover{
            background-color:black;
            color:white;
        }
        
        @media(max-width: 700px){
            .ontop{
                margin-top:5px !important;
            }
        }

    </style>









    <nav class=" navbar navbar-expand-lg navbar-light pk  primary sticky-top" style="background-color:white; ">
        <div class="container container-fluid d-flex justify-content-between p-2">

            <div class=" text-start mt-1 scale d-flex">
                <i class="fa-solid fa-kiwi-bird ontop" style="margin-top: 8px;scale:2;"></i>
                <a class="navbar-brand fw-bold text-start  ms-2" href="/pindah"><p class="h3 fw-bold" style="margin-bottom:0;">';

$val .= $scope->locally()->obj('SiteConfig', null, true)->XML_val('Title', null, true);
$val .= '</p></a>
            </div>
            <div class=" d-flex justify-content-center cdsc">
                <div class="collapse navbar-collapse fw-bold">
                    <ul class="navbar-nav com gap-5 text-end">
                        ';

$scope->locally()->obj('Menu', [1], true); $scope->pushScope(); while (($key = $scope->next()) !== false) {
$val .= '
                            <li class="';

$val .= $scope->locally()->XML_val('LinkingMode', null, true);
$val .= ' nav-item"><a href="';

$val .= $scope->locally()->XML_val('Link', null, true);
$val .= '" title="';

$val .= $scope->locally()->obj('Title', null, true)->XML_val('XML', null, true);
$val .= '"
                                    style="text-decoration:none;">';

$val .= $scope->locally()->obj('MenuTitle', null, true)->XML_val('XML', null, true);
$val .= '</a></li>
                            ';


}; $scope->popScope(); 
$val .= '
                    </ul>
                </div>
            </div>

            <div class=" ddkf position-relative ">
                <button type="button" class="btn  justify-content-end shadow-none" data-bs-toggle="offcanvas"
                    data-bs-target="#offcanvasWithBackdrop" aria-controls="offcanvasWithBackdrop">
                    <i class="fa-solid  fa-user-tie  justify-content-end"></i>
                </button>
                <a href="/pindah/cart">
                    <button type="button" class="btn  me-2 sixe">
                        <i class="fa-solid fa-bag-shopping"></i>
                        <span class=" total-quantity">
                            0
                            <span class="visually-hidden">unread messages</span>
                        </span>
                    </button>
                </a>
                <button class="navbar-toggler mt-1 garis justify-content-end toogle" data-bs-toggle="collapse"
                    data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
                    aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
            </div>

        </div>
        <div class=" container cdsc   d-sm-block d-lg-none ">
            <div class="collapse navbar-collapse fw-bold " id="navbarSupportedContent">
                <ul class="navbar-nav com gap-2 text-end">
                    ';

$scope->locally()->obj('Menu', [1], true); $scope->pushScope(); while (($key = $scope->next()) !== false) {
$val .= '
                        <li class="';

$val .= $scope->locally()->XML_val('LinkingMode', null, true);
$val .= ' nav-item"><a href="';

$val .= $scope->locally()->XML_val('Link', null, true);
$val .= '" title="';

$val .= $scope->locally()->obj('Title', null, true)->XML_val('XML', null, true);
$val .= '"
                                style="text-decoration:none;">';

$val .= $scope->locally()->obj('MenuTitle', null, true)->XML_val('XML', null, true);
$val .= '</a></li>
                        ';


}; $scope->popScope(); 
$val .= '
                </ul>
            </div>
        </div>
    </nav>
    
    
    <div class="offcanvas offcanvas-end" tabindex="5" id="offcanvasWithBackdrop"
        aria-labelledby="offcanvasWithBackdropLabel">
        <div class="offcanvas-header" style="background-color: #b18b5e;">
            <h3 class="offcanvas-title fw-bold " id="offcanvasWithBackdropLabel">';

$val .= $scope->locally()->obj('SiteConfig', null, true)->XML_val('Title', null, true);
$val .= '</h3>
            <button type="button" class="btn-close text-reset shadow-none" data-bs-dismiss="offcanvas" aria-label="Close"></button>
        </div>
        <div class="user">
            <div class="d-flex gap-1">
                <i class="p-2 fa-solid  fa-user-tie  justify-content-end" style="margin-top:15px;"></i>
                <div class="p-2 flex-grow-1">
                    <p style="margin-bottom:0;">';

$val .= $scope->locally()->obj('Member', null, true)->XML_val('Surname', null, true);
$val .= '</p>
                    <p class="text-muted" style="margin-bottom:0;">';

$val .= $scope->locally()->obj('Member', null, true)->XML_val('Email', null, true);
$val .= '</p>
                </div>
                <a class="p-2 " href="';

$val .= $scope->locally()->XML_val('BaseHref', null, true);
$val .= '/member" style="margin-top:15px;"><i class="fa-solid fa-right-from-bracket"></i></a>
            </div>
        </div>
        <hr>
        <div class="offcanvas-body">
            <a href="';

$val .= $scope->locally()->XML_val('BaseHref', null, true);
$val .= '/history-bank" ><div class="item-side d-flex gap-1" style="scale:1.1;">
        <i class="p-2 fa-solid fa-file-invoice" style="margin-top:2px;"></i>
                <p class="p-2 flex-grow-1">History Bank</p>
            </div></a>
            <a  href="';

$val .= $scope->locally()->XML_val('BaseHref', null, true);
$val .= '/history"><div class=" item-side d-flex gap-1" style="scale:1.1;">
                <i class="p-2 fa-solid fa-file-invoice-dollar" style="margin-top:2px;"></i>
                <p class="p-2 flex-grow-1">History Tunai</p>
            </div></a>
            <a  href=""><div class=" item-side d-flex gap-1" style="scale:1.1;">
                <i class="p-2 fa-solid fa-gear" style="margin-top:2px;"></i>
                <p class="p-2 flex-grow-1">Setting</p>
            </div></a>
            <a  href=""><div class=" item-side d-flex gap-1" style="scale:1.1;">
                <i class="p-2 fa-solid fa-headset" style="margin-top:2px;"></i>
                <p class="p-2 flex-grow-1">Support</p>
            </div></a>
        </div>
    </div>


    <script>
        document.addEventListener(\'DOMContentLoaded\', function () {
            updateCartQuantity();

            function updateCartQuantity() {
                var cartItems = JSON.parse(localStorage.getItem(\'cartItems\')) || [];
                var totalQuantity = cartItems.reduce(function (acc, item) {
                    return acc + parseInt(item.quantity);
                }, 0);

                document.querySelectorAll(\'.total-quantity\').forEach(function (element) {
                    element.textContent = totalQuantity;
                });
            }

            // Optional: Update quantity dynamically if items are added or removed in other parts of your code
            // This would require a custom event or a periodic check
        });
    </script>

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
