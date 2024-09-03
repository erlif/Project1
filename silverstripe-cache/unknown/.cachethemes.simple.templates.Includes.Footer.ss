<?php
$val .= '<footer class="p-4 mt-5" style="background-color: #000;">
	<div class="container-fluid text-light  text-center">
		<div class="row  mt-3">
			<div class="col mt-5 text-start">
				<img src="" alt="" class="kd-6">
				<p class="text-muted mt-4 mb-3 ">It helps designers plan out where the content will sit, the content
					to be written and approved</p>
			</div>
			<div class="col mt-5 text-start link-underline-dark">
				<h6 class="mb-4">Services</h6>
				<a href="' . (\SilverStripe\View\SSViewer::getRewriteHashLinksDefault()
    ? \SilverStripe\Core\Convert::raw2att( preg_replace("/^(\\/)+/", "/", $_SERVER['REQUEST_URI'] ) )
    : "") . '#"  style="text-decoration: none;" >
					<p class="text-muted">Log In</p>
				</a>
				<a href="' . (\SilverStripe\View\SSViewer::getRewriteHashLinksDefault()
    ? \SilverStripe\Core\Convert::raw2att( preg_replace("/^(\\/)+/", "/", $_SERVER['REQUEST_URI'] ) )
    : "") . '#"  style="text-decoration: none;" >
					<p class="text-muted">Wishlist</p>
				</a>
				<a href="' . (\SilverStripe\View\SSViewer::getRewriteHashLinksDefault()
    ? \SilverStripe\Core\Convert::raw2att( preg_replace("/^(\\/)+/", "/", $_SERVER['REQUEST_URI'] ) )
    : "") . '#"  style="text-decoration: none;" >
					<p class="text-muted">Return Policy</p>
				</a>
				<a href="' . (\SilverStripe\View\SSViewer::getRewriteHashLinksDefault()
    ? \SilverStripe\Core\Convert::raw2att( preg_replace("/^(\\/)+/", "/", $_SERVER['REQUEST_URI'] ) )
    : "") . '#"  style="text-decoration: none;" >
					<p class="text-muted">Privacy Policy</p>
				</a>
				<a href="' . (\SilverStripe\View\SSViewer::getRewriteHashLinksDefault()
    ? \SilverStripe\Core\Convert::raw2att( preg_replace("/^(\\/)+/", "/", $_SERVER['REQUEST_URI'] ) )
    : "") . '#"  style="text-decoration: none;" >
					<p class="text-muted">Shopping FAQS</p>
				</a>

			</div>
			<div class="col mt-5 text-start">
				<h6 class="mb-4">Company</h6>
				<a href="' . (\SilverStripe\View\SSViewer::getRewriteHashLinksDefault()
    ? \SilverStripe\Core\Convert::raw2att( preg_replace("/^(\\/)+/", "/", $_SERVER['REQUEST_URI'] ) )
    : "") . '#"  style="text-decoration: none;" >
					<p class="text-muted">Home</p>
				</a>
				<a href="' . (\SilverStripe\View\SSViewer::getRewriteHashLinksDefault()
    ? \SilverStripe\Core\Convert::raw2att( preg_replace("/^(\\/)+/", "/", $_SERVER['REQUEST_URI'] ) )
    : "") . '#"  style="text-decoration: none;" >
					<p class="text-muted">About Us</p>
				</a>
				<a href="' . (\SilverStripe\View\SSViewer::getRewriteHashLinksDefault()
    ? \SilverStripe\Core\Convert::raw2att( preg_replace("/^(\\/)+/", "/", $_SERVER['REQUEST_URI'] ) )
    : "") . '#"  style="text-decoration: none;" >
					<p class="text-muted">Pages</p>
				</a>
				<a href="' . (\SilverStripe\View\SSViewer::getRewriteHashLinksDefault()
    ? \SilverStripe\Core\Convert::raw2att( preg_replace("/^(\\/)+/", "/", $_SERVER['REQUEST_URI'] ) )
    : "") . '#"  style="text-decoration: none;" >
					<p class="text-muted">Blog</p>
				</a>
				<a href="' . (\SilverStripe\View\SSViewer::getRewriteHashLinksDefault()
    ? \SilverStripe\Core\Convert::raw2att( preg_replace("/^(\\/)+/", "/", $_SERVER['REQUEST_URI'] ) )
    : "") . '#"  style="text-decoration: none;" >
					<p class="text-muted">Contact Us</p>
				</a>
			</div>
			<div class="col mt-5 text-start">
				<h6 class="mb-4">Contact</h6>
				<p class="text-muted">4517 Washington Ave. <br> Manchester,Kentucky 39495</p>
				<button type="button" class="btn  btn-circle me-4  "  style="background-color: #b18b5e; color: white;"><i class="fa-solid fa-location-dot"></i></button>
				711-2880 Nuila St.
				<br>
				<br>
				<button type="button" class="btn btn-circle me-4 "style="background-color: #b18b5e; color: white;"><i class="fa-solid fa-phone"></i></button>
				+964 742 44 763
				
				
				<p class="text-muted mt-3">Mon-Sat: 9 AM - 5 PM</p>
			</div>
			<div class="text-start">
				<button type="button" class="btn btn-circle custom-gap" style="background-color: white; color: black;" > <i
				class="fa-brands fa-facebook"></i></button>
		<button type="button" class="btn btn-circle custom-gap" style="background-color: white; color: black;"><i
				class="fa-brands fa-twitter"></i></i></button>
		<button type="button" class="btn btn-circle custom-gap" style="background-color: white; color: black;"> <i
				class="fa-brands fa-linkedin"></i></i></button>
		<button type="button" class="btn btn-circle custom-gap" style="background-color: white; color: black;" ><i
				class="fa-brands fa-instagram"></i></i></button>
			</div>
		</div>
		<hr class="footer-separator mt-5">
		<div class="container text-start">
			<div class="row">
				<div class="col">
					<h6>All Copyright 2024 by Online</h6>
				</div>
				<div class="col text-center">
					<img src="';

$val .= $scope->locally()->XML_val('resourceURL', ['themes/simple/images/59img_6919-removebg-preview.png'], true);
$val .= '" alt="" class="img-fluid bg-light" width="100"
						height="100">
					<img src="';

$val .= $scope->locally()->XML_val('resourceURL', ['themes/simple/images/Logo_Mastercard_HiRes-removebg-preview.png'], true);
$val .= '" alt="" class="img-fluid bg-light"
						width="75" height="20">
					<img src="';

$val .= $scope->locally()->XML_val('resourceURL', ['themes/simple/images/images-removebg-preview.png'], true);
$val .= '" alt="" class="img-fluid bg-light" width="150"
						height="100">
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
<script>
	$(document).ready(function () {
		$.ajax({
			url: "https://jsonplaceholder.typicode.com/photos", success: function (result) {
				';


$val .= '
				';


$val .= '
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
</script>';

