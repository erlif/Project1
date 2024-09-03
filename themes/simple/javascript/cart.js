// $.get('http://www.emsifa.com/api-wilayah-indonesia/api/provinces.json', function(provinces) {
//     console.log(provinces);
//   }).fail(function(error) {
//     console.error('Error:', error);
//   });






$(document).ready(function () {
  var cartItems = JSON.parse(localStorage.getItem('cartItems')) || [];
  var cartRow = '';






  function renderCartItems() {
    $('.cart-items').empty(); // Clear the cart items container

    cartItems.forEach(function (item, index) {
      cartRow = `
          <div class="cart-row" data-index="${index}">
              <div class="cart-item cart-column">
                  <img class="cart-item-image" id="Image" src="${item.imageSrc}" width="100" height="100">
                  <span class="cart-item-title" id="Title" name="Title">${item.title}</span>
              </div>
              <span class="cart-price cart-column" id="Harga" name="Harga">${item.price}</span>
              <div class="cart-quantity cart-column  gap-3">
                  <div class="input-group">
                      <button class="btn btn-outline-secondary btn-sm qty-decrease" type="button">-</button>
                      <input class="cart-quantity-input form-control" type="number" id ="Quantity" name="Quantity" value="${item.quantity}">
                      <button class="btn btn-outline-secondary btn-sm qty-increase" type="button">+</button>
                  </div>
                  <button class="btn btn-danger btn-sm mt-2" type="button">REMOVE</button>
              </div>
          </div>
      `;
      $('.cart-items').append(cartRow);
    });

    updateTotalPrice(); // Update total price after rendering items
    console.log(cartItems)
  }


  function updateTotalPrice() {
    var total = 0;
    cartItems.forEach(function (item) {
      var price = parseFloat(item.price.replace('$', ''));
      var quantity = parseInt(item.quantity);
      total += price * quantity;
    });
    total = total.toFixed(2);
    $('.cart-total-price').text('$' + total);
  }

  // Render cart items on page load
  renderCartItems();
  $('#exampleModal').on('shown.bs.modal', function () {

    $("#item-detail").append($('.cart-items').html());


    var cartdetail = '';

    cartItems.forEach(function (item, index) {
      cartdetail = `
      <input type="hidden" name="item[title][]" id="title" value="${item.title}">
      <input type="hidden" name="item[price][]" id="price" value="${item.price}">
      <input type="hidden" name="item[quantity][]"  id="quantity" value="${item.quantity}">
  `;
      $("#item-detail").append(cartdetail);
    })
  });




  // Event delegation for removing items
  $('.cart-items').on('click', '.btn-danger', function () {
    var index = $(this).closest('.cart-row').data('index');
    cartItems.splice(index, 1);
    localStorage.setItem('cartItems', JSON.stringify(cartItems));
    renderCartItems();
  });

  // Event delegation for changing quantity
  $('.cart-items').on('click', '.qty-increase', function () {
    var index = $(this).closest('.cart-row').data('index');
    cartItems[index].quantity++;
    localStorage.setItem('cartItems', JSON.stringify(cartItems));
    renderCartItems();
  });

  $('.cart-items').on('click', '.qty-decrease', function () {
    var index = $(this).closest('.cart-row').data('index');
    if (cartItems[index].quantity > 1) {
      cartItems[index].quantity--;
      localStorage.setItem('cartItems', JSON.stringify(cartItems));
      renderCartItems();
    }
  });

  // Update quantity and total price when quantity input changes
  $('.cart-items').on('change', '.cart-quantity-input', function () {
    var index = $(this).closest('.cart-row').data('index');
    var newQuantity = $(this).val();
    if (newQuantity < 1) {
      newQuantity = 1;
    }
    cartItems[index].quantity = newQuantity;
    localStorage.setItem('cartItems', JSON.stringify(cartItems));
    updateTotalPrice();
  });
});









$.ajax({
  url: 'http://www.emsifa.com/api-wilayah-indonesia/api/provinces.json',
  method: 'GET',
  success: function (provinces) {
    console.log(provinces);
  },
  error: function (jqXHR, textStatus, errorThrown) {
    console.error('Error:', textStatus, errorThrown);
  }
});
