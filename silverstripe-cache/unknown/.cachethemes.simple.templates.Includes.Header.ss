<?php

$val .= '



    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css"
        integrity="sha512-SnH5WK+bZxgPHs44uWIX+LLJAJ9/2PkPKZ5QiAj6Ta86w+fsb2TkcmfRyVX3pBnMFcV7oQPJkl9QevSCWr3W6A=="
        crossorigin="anonymous" referrerpolicy="no-referrer" />
    <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/js/all.min.js"
        integrity="sha512-u3fPA7V8qQmhBPNT5quvaXVa1mnnLSXUep5PS1qo5NRzHwG19aHmNJnj1Q8hpA/nBWZtZD4r4AX6YOt5ynLN2g=="
        crossorigin="anonymous" referrerpolicy="no-referrer"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css"
        integrity="sha512-SnH5WK+bZxgPHs44uWIX+LLJAJ9/2PkPKZ5QiAj6Ta86w+fsb2TkcmfRyVX3pBnMFcV7oQPJkl9QevSCWr3W6A=="
        crossorigin="anonymous" referrerpolicy="no-referrer" />
    <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/js/all.min.js"
        integrity="sha512-u3fPA7V8qQmhBPNT5quvaXVa1mnnLSXUep5PS1qo5NRzHwG19aHmNJnj1Q8hpA/nBWZtZD4r4AX6YOt5ynLN2g=="
        crossorigin="anonymous" referrerpolicy="no-referrer"></script>
    <script src="https://code.jquery.com/jquery-3.4.1.js"></script>
    


    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.carousel.min.css"
        integrity="sha512-tS3S5qG0BlhnQROyJXvNjeEM4UpMXHrQfTGmbQ1gKmelCxlSEBUaxhRBj/EFTzpbP4RVSrpEikbmdJobCvhE3g=="
        crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link rel="stylesheet"
        href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.theme.default.min.css"
        integrity="sha512-sMXtMNL1zRzolHYKEujM2AqCLUR9F2C4/05cdbxjjLSRvMQIciEPCQZo++nk7go3BtSuK9kfa/s+a4f4i5pLkw=="
        crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.css" />
    ';

\SilverStripe\View\Requirements::themedCSS('home');
$val .= '
























    <nav class="navbar navbar-expand-lg bg-body-tertiary ppn text-light" style="z-index:1021;">
        <div class="container-fluid">
            <div class="container-fluid">
                <div class="row text-dark fw-bold">
                    <!-- Left Side -->
                    <div class="col-lg-4 col-md-4 col-sm-12 text-start  d-flex align-items-center gap-1 d-none d-lg-flex">
                        <div class="d-flex align-items-center">
                            <i class="fa-solid fa-phone-volume"></i>
                            <h6 class="fw-bold ms-2 mb-0">';

$val .= $scope->locally()->obj('SiteConfig', null, true)->XML_val('Nomer', null, true);
$val .= '</h6>
                        </div>
                        <div class="d-flex align-items-center ms-2">
                            <i class="fa-regular fa-envelope"></i>
                            <h6 class="fw-bold ms-2 mb-0">';

$val .= $scope->locally()->obj('SiteConfig', null, true)->XML_val('Email', null, true);
$val .= '</h6>
                        </div>
                    </div>
    
                    <!-- Center -->
                    <div class="col-lg-4 col-md-12 col-sm-12 text-center mt-2">
                        <h6 class="fw-bold" >';

$val .= $scope->locally()->obj('SiteConfig', null, true)->XML_val('Title', null, true);
$val .= '</h6>
                    </div>
    
                    <!-- Right Side -->
                    <div class="col-lg-4 col-md-4 col-sm-12 text-end ">
                        <div class="d-flex justify-content-end gap-2 d-none d-lg-flex">
                            <a href="';

$val .= $scope->locally()->obj('SiteConfig', null, true)->XML_val('Facebook', null, true);
$val .= '">
                                <button type="button" class="btn btn-circle custom-gap" style="background-color: white; color: black;">
                                    <i class="fa-brands fa-facebook"></i>
                                </button>
                            </a>
                            <a href="';

$val .= $scope->locally()->obj('SiteConfig', null, true)->XML_val('Twitter', null, true);
$val .= '">
                                <button type="button" class="btn btn-circle custom-gap" style="background-color: white; color: black;">
                                    <i class="fa-brands fa-twitter"></i>
                                </button>
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </nav>
    
        ';

$val .= \SilverStripe\View\SSViewer::execute_template([["type" => "Includes", 'Navigation'], 'Navigation'], $scope->getItem(), [], $scope, true);

$val .= '
        </header>




        <script src="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/owl.carousel.min.js"
            integrity="sha512-bPs7Ae6pVvhOSiIcyUClR7/q2OAsRiovw4vAkX+zJbw3ShAeeqezq50RIIcIURq7Oa20rW2n2q+fyXBNcU9lrw=="
            crossorigin="anonymous" referrerpolicy="no-referrer"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/owl.carousel.min.js"
            integrity="sha512-bPs7Ae6pVvhOSiIcyUClR7/q2OAsRiovw4vAkX+zJbw3ShAeeqezq50RIIcIURq7Oa20rW2n2q+fyXBNcU9lrw=="
            crossorigin="anonymous" referrerpolicy="no-referrer"></script>
        <!-- Swiper JS -->
        <script src="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.js"></script>';

