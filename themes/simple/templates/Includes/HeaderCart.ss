<%-- <nav class="primary">
	<ul>
		<% loop $Menu(1) %>
			<li class="$LinkingMode"><a href="$Link" title="$Title.XML">$MenuTitle.XML</a></li>
			<% end_loop %>
	</ul>
	</nav> --%>
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
						<%-- <button type="button" class="btn  position-relative sixe justify-content-end">
							<i class="fa-regular fa-heart"></i>
							<span class="total-love">
								0
								<span class="visually-hidden">unread messages</span>
							</span>
						</button>
						<a href="http://localhost/pindah/cart">
						<button type="button" class="btn position-relative me-2 sixe">
							<i class="fa-solid fa-bag-shopping"></i>
							<span class=" total-quantity">
								0
								<span class="visually-hidden">unread messages</span>
							</span>
						</button>
					</a> --%>
						<%-- <button class="navbar-toggler mt-1 garis justify-content-end" type="button" data-bs-toggle="collapse"
							data-bs-target="#navbarNavDropdown" aria-controls="navbarNav" aria-expanded="false"
							aria-label="Toggle navigation">
							<span class="navbar-toggler-icon"></span>
						</button> --%>
					</div>

				</div>
			</div>
		</div>
	</nav>










	<script>
		document.addEventListener('DOMContentLoaded', function () {
			updateCartQuantity();
	
			function updateCartQuantity() {
				var cartItems = JSON.parse(localStorage.getItem('cartItems')) || [];
				var totalQuantity = cartItems.reduce(function (acc, item) {
					return acc + parseInt(item.quantity);
				}, 0);
	
				document.querySelectorAll('.total-quantity').forEach(function (element) {
					element.textContent = totalQuantity;
				});
			}
	
			// Optional: Update quantity dynamically if items are added or removed in other parts of your code
			// This would require a custom event or a periodic check
		});
	</script>

	<% require themedCSS('layout') %>
		<% require themedCSS('typography') %>
			<% require themedCSS('home') %>
			<% require themedCSS('nav') %>