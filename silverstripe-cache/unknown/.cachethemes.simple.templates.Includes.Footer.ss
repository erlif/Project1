<?php
$val .= '<footer class="p-4 mt-5" style="background-color: #000;">
	<div class="container-fluid text-light  text-center">
		<div class="row  mt-3">
			<div class="col mt-5 text-start">
				';

$scope->locally()->obj('SiteConfig', null, true); $scope->pushScope();
$val .= '
					<img class=" ms-lg-5 img-fluid" id="Image" src="';

$val .= $scope->locally()->obj('Image', null, true)->XML_val('getURL', null, true);
$val .= '" alt="Site Image">
				';


; $scope->popScope(); 
$val .= '
				
				
				
				<p class=" mt-1 mb-3 " style="scale:0.8; transform-origin:top;">';

$val .= $scope->locally()->obj('SiteConfig', null, true)->XML_val('Tagline', null, true);
$val .= '</p>
				
			</div>
			<div class="col mt-5 text-start link-underline-dark">
				<h6 class="mb-4">Products</h6>
				';

$scope->locally()->obj('Product', null, true)->obj('Limit', [6], true); $scope->pushScope(); while (($key = $scope->next()) !== false) {
$val .= '
					<a href="/pindah/shop-page/detailobject/';

$val .= $scope->locally()->XML_val('ID', null, true);
$val .= '"  style="text-decoration: none;" >
						<p class="text-light">';

$val .= $scope->locally()->XML_val('Title', null, true);
$val .= '</p>
					</a>	
				';


}; $scope->popScope(); 
$val .= '

			</div>
			<div class="col mt-5 text-start">
				<h6 class="mb-4">Page</h6>
				<a href="';

$val .= $scope->locally()->XML_val('BaseHref', null, true);
$val .= '"  style="text-decoration: none;" >
					<p class="text-light">Home</p>
				</a>
				<a href="';

$val .= $scope->locally()->XML_val('BaseHref', null, true);
$val .= '/about"  style="text-decoration: none;" >
					<p class="text-light">About Us</p>
				</a>
				<a href="';

$val .= $scope->locally()->XML_val('BaseHref', null, true);
$val .= '/shop"  style="text-decoration: none;" >
					<p class="text-light">Shop</p>
				</a>
				<a href="';

$val .= $scope->locally()->XML_val('BaseHref', null, true);
$val .= '/pages"  style="text-decoration: none;" >
					<p class="text-light">Pages</p>
				</a>
				<a href="';

$val .= $scope->locally()->XML_val('BaseHref', null, true);
$val .= '/blog"  style="text-decoration: none;" >
					<p class="text-light">Blog</p>
				</a>
				<a href="';

$val .= $scope->locally()->XML_val('BaseHref', null, true);
$val .= '/contact"  style="text-decoration: none;" >
					<p class="text-light">Contact Us</p>
				</a>
			</div>
			<div class="col mt-5 text-start">
				<h6 class="mb-4">Contact</h6>
				<p class="">';

$val .= $scope->locally()->obj('SiteConfig', null, true)->XML_val('Address', null, true);
$val .= '</p>
				<button type="button" class="btn  btn-circle me-4  "  style="background-color: #b18b5e; color: white;"><i class="fa-solid fa-location-dot"></i></button>
				711-2880 Nuila St.
				<br>
				<br>
				<button type="button" class="btn btn-circle me-4 "style="background-color: #b18b5e; color: white;"><i class="fa-solid fa-phone"></i></button>
				';

$val .= $scope->locally()->obj('SiteConfig', null, true)->XML_val('Nomer', null, true);
$val .= '
				
				
				<p class=" mt-3">Mon-Sat: 9 AM - 5 PM</p>
			</div>
			<div class="col-12 ms-lg-4 ms-md-3 text-start container">
				<a href="';

$val .= $scope->locally()->obj('SiteConfig', null, true)->XML_val('Facebook', null, true);
$val .= '"><button type="button" class="btn btn-circle custom-gap" style="background-color: white; color: black;" > <i
				class="fa-brands fa-facebook"></i></button></a>
				<a href="';

$val .= $scope->locally()->obj('SiteConfig', null, true)->XML_val('Twitter', null, true);
$val .= '"><button type="button" class="btn btn-circle custom-gap" style="background-color: white; color: black;"><i
							class="fa-brands fa-twitter"></i></i></button></a>
				<a href="';

$val .= $scope->locally()->obj('SiteConfig', null, true)->XML_val('LinkedIn', null, true);
$val .= '"><button type="button" class="btn btn-circle custom-gap" style="background-color: white; color: black;"> <i
							class="fa-brands fa-linkedin"></i></i></button></a>
				<a href="';

$val .= $scope->locally()->obj('SiteConfig', null, true)->XML_val('Instagram', null, true);
$val .= '"><button type="button" class="btn btn-circle custom-gap" style="background-color: white; color: black;" ><i
							class="fa-brands fa-instagram"></i></i></button></a>
			</div>
		</div>
		<hr class="footer-separator mt-5">
		<div class="container text-start">
			<div class="row">
				<div class="col">
					<h6>All Copyright 2024 by Online</h6>
				</div>
				<div class="col text-center">

				</div>
				<div class="col text-end">
					<h6>Terms & Condition | Privacy Policy</h6>
				</div>
			</div>
		</div>
	</div>

';

\SilverStripe\View\Requirements::themedCSS('home');
$val .= '
</footer>



';


