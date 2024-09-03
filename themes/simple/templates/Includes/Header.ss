<%-- <header class="header" role="banner">
    <div class="inner">
        <div class="unit size4of4 lastUnit">
            <a href="$BaseHref" class="brand" rel="home">
                <h1>$SiteConfig.Title</h1>
                <% if $SiteConfig.Tagline %>
                    <p>$SiteConfig.Tagline</p>
                    <% end_if %>
            </a>
            <% if $SearchForm %>
                <button class="search-dropdown-icon">L</button>
                <div class="search-bar">
                    $SearchForm
                </div>
                <% end_if %>
                    <% include Navigation %>
        </div>
    </div>
    </header> --%>



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
    <% require themedCSS('home') %>
























        <nav class="navbar navbar-expand-lg bg-body-tertiary ppn  text-light" style="z-index:1021;">
            <div class="pls container-fluid">
                <div class="container">
                    <div class="d-flex justify-content-around ">
                        <div class="col-3 text-start mt-2">
                            <i class="fa-solid fa-phone-volume float-start mt-1"></i>
                            <h6>+193193</h6>
                        </div>
                        <div class=" text-center">
                            <h6 class=" mt-2 ">TAKE CARE diskon 25% with code "UQHD"</h6>
                        </div>
                        <div class=" text-end">
                            
                            <div class="collapse navbar-collapse ppk" id="navbarNav">
                                <ul class="navbar-nav com">
                                    <li class="nav-item sd" >
                                        <div class="dropdown text-end ">
                                            <button class="btn  dropdown-toggle  text-light " type="button"
                                                data-bs-toggle="dropdown" aria-expanded="false">
                                                English
                                            </button>
                                            <ul class="dropdown-menu text-light" >
                                                <li><button class="dropdown-item" type="button">Action</button></li>
                                                <li><button class="dropdown-item" type="button">Another action</button>
                                                </li>
                                                <li><button class="dropdown-item" type="button">Something else
                                                        here</button>
                                                </li>
                                            </ul>
                                            <button class="btn  dropdown-toggle text-light" type="button"
                                                data-bs-toggle="dropdown" aria-expanded="false">
                                                USD
                                            </button>
                                            <ul class="dropdown-menu text-light">
                                                <li><button class="dropdown-item" type="button">Action</button></li>
                                                <li><button class="dropdown-item" type="button">Another action</button>
                                                </li>
                                                <li><button class="dropdown-item" type="button">Something else
                                                        here</button>
                                                </li>
                                            </ul>
                                            <button class="btn  dropdown-toggle text-light" type="button"
                                                data-bs-toggle="dropdown" aria-expanded="false">
                                                Setting
                                            </button>
                                            <ul class="dropdown-menu text-light">
                                                <li><button class="dropdown-item" type="button">Action</button></li>
                                                <li><button class="dropdown-item" type="button">Another action</button>
                                                </li>
                                                <li><button class="dropdown-item" type="button">Something else
                                                        here</button>
                                                </li>
                                            </ul>
                                        </div>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </nav>
        <% include Navigation %>
        </header>




        <script src="script.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/owl.carousel.min.js"
            integrity="sha512-bPs7Ae6pVvhOSiIcyUClR7/q2OAsRiovw4vAkX+zJbw3ShAeeqezq50RIIcIURq7Oa20rW2n2q+fyXBNcU9lrw=="
            crossorigin="anonymous" referrerpolicy="no-referrer"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/owl.carousel.min.js"
            integrity="sha512-bPs7Ae6pVvhOSiIcyUClR7/q2OAsRiovw4vAkX+zJbw3ShAeeqezq50RIIcIURq7Oa20rW2n2q+fyXBNcU9lrw=="
            crossorigin="anonymous" referrerpolicy="no-referrer"></script>
        <!-- Swiper JS -->
        <script src="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.js"></script>