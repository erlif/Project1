<footer class="p-4 mt-5" style="background-color: #000;">
	<div class="container-fluid text-light  text-center">
		<div class="row  mt-3">
			<div class="col mt-5 text-start">
				<% with $SiteConfig %>
					<img class=" ms-lg-5 img-fluid" id="Image" src="$Image.getURL()" alt="Site Image">
				<% end_with %>
				
				
				
				<p class=" mt-1 mb-3 " style="scale:0.8; transform-origin:top;">$SiteConfig.Tagline</p>
				
			</div>
			<div class="col mt-5 text-start link-underline-dark">
				<h6 class="mb-4">Products</h6>
				<% loop $Product.Limit(6) %>
					<a href="/pindah/shop-page/detailobject/$ID"  style="text-decoration: none;" >
						<p class="text-light">$Title</p>
					</a>	
				<% end_loop %>

			</div>
			<div class="col mt-5 text-start">
				<h6 class="mb-4">Page</h6>
				<a href="{$BaseHref}"  style="text-decoration: none;" >
					<p class="text-light">Home</p>
				</a>
				<a href="{$BaseHref}/about"  style="text-decoration: none;" >
					<p class="text-light">About Us</p>
				</a>
				<a href="{$BaseHref}/shop"  style="text-decoration: none;" >
					<p class="text-light">Shop</p>
				</a>
				<a href="{$BaseHref}/pages"  style="text-decoration: none;" >
					<p class="text-light">Pages</p>
				</a>
				<a href="{$BaseHref}/blog"  style="text-decoration: none;" >
					<p class="text-light">Blog</p>
				</a>
				<a href="{$BaseHref}/contact"  style="text-decoration: none;" >
					<p class="text-light">Contact Us</p>
				</a>
			</div>
			<div class="col mt-5 text-start">
				<h6 class="mb-4">Contact</h6>
				<p class="">$SiteConfig.Address</p>
				<button type="button" class="btn  btn-circle me-4  "  style="background-color: #b18b5e; color: white;"><i class="fa-solid fa-location-dot"></i></button>
				711-2880 Nuila St.
				<br>
				<br>
				<button type="button" class="btn btn-circle me-4 "style="background-color: #b18b5e; color: white;"><i class="fa-solid fa-phone"></i></button>
				$SiteConfig.Nomer
				
				
				<p class=" mt-3">Mon-Sat: 9 AM - 5 PM</p>
			</div>
			<div class="col-12 ms-lg-4 ms-md-3 text-start container">
				<a href="$SiteConfig.Facebook"><button type="button" class="btn btn-circle custom-gap" style="background-color: white; color: black;" > <i
				class="fa-brands fa-facebook"></i></button></a>
				<a href="$SiteConfig.Twitter"><button type="button" class="btn btn-circle custom-gap" style="background-color: white; color: black;"><i
							class="fa-brands fa-twitter"></i></i></button></a>
				<a href="$SiteConfig.LinkedIn"><button type="button" class="btn btn-circle custom-gap" style="background-color: white; color: black;"> <i
							class="fa-brands fa-linkedin"></i></i></button></a>
				<a href="$SiteConfig.Instagram"><button type="button" class="btn btn-circle custom-gap" style="background-color: white; color: black;" ><i
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

<% require themedCSS('home') %>
</footer>



<%-- <script>
	$(document).ready(function () {
		$.ajax({
			url: "https://jsonplaceholder.typicode.com/photos", success: function (result) {
				console.log(result)
				console.log(result[0].id)
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
</script> --%>