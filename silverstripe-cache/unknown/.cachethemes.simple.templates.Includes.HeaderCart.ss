<?php

$val .= '
	<nav class=" navbar navbar-expand-lg navbar-light pk  primary sticky-top" style="background-color:white;">
		<div class="container-fluid">
			<div class="container">
				<div class="d-flex justify-content-between">
					<div class="d-flex text-start mt-1 scale gap-2">
						<i class="fa-solid fa-kiwi-bird  mt-2" style="scale:2;"></i>
						<a class="navbar-brand fw-bold text-start " href="/pindah"><h5 class="fw-bold" style="margin-top: 2px; margin-bottom:0;">LeadGen</h5></a>
					</div>
					<div class=" d-flex justify-content-center cdsc">
						
					</div>

					<div class=" ddkf  ">
						';


$val .= '
						';


$val .= '
					</div>

				</div>
			</div>
		</div>
	</nav>










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
