<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css"
integrity="sha512-SnH5WK+bZxgPHs44uWIX+LLJAJ9/2PkPKZ5QiAj6Ta86w+fsb2TkcmfRyVX3pBnMFcV7oQPJkl9QevSCWr3W6A=="
crossorigin="anonymous" referrerpolicy="no-referrer" />
<script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/js/all.min.js"
integrity="sha512-u3fPA7V8qQmhBPNT5quvaXVa1mnnLSXUep5PS1qo5NRzHwG19aHmNJnj1Q8hpA/nBWZtZD4r4AX6YOt5ynLN2g=="
crossorigin="anonymous" referrerpolicy="no-referrer"></script>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css"
integrity="sha512-SnH5WK+bZxgPHs44uWIX+LLJAJ9/2PkPKZ5QiAj6Ta86w+fsb2TkcmfRyVX3pBnMFcV7oQPJkl9QevSCWr3W6A=="
crossorigin="anonymous" referrerpolicy="no-referrer" />
<script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/js/all.min.js"
integrity="sha512-u3fPA7V8qQmhBPNT5quvaXVa1mnnLSXUep5PS1qo5NRzHwG19aHmNJnj1Q8hpA/nBWZtZD4r4AX6YOt5ynLN2g=="
crossorigin="anonymous" referrerpolicy="no-referrer"></script>
<script src="https://code.jquery.com/jquery-3.4.1.js"></script>
<link href="https://getbootstrap.com/docs/5.3/assets/css/docs.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.carousel.min.css"
integrity="sha512-tS3S5qG0BlhnQROyJXvNjeEM4UpMXHrQfTGmbQ1gKmelCxlSEBUaxhRBj/EFTzpbP4RVSrpEikbmdJobCvhE3g=="
crossorigin="anonymous" referrerpolicy="no-referrer" />
<link rel="stylesheet"
href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.theme.default.min.css"
integrity="sha512-sMXtMNL1zRzolHYKEujM2AqCLUR9F2C4/05cdbxjjLSRvMQIciEPCQZo++nk7go3BtSuK9kfa/s+a4f4i5pLkw=="
crossorigin="anonymous" referrerpolicy="no-referrer" />
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.css" />
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap"
rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11.12.4/dist/sweetalert2.all.min.js"></script>
<link href="https://cdn.jsdelivr.net/npm/sweetalert2@11.12.4/dist/sweetalert2.min.css" rel="stylesheet">









<div class="container shadow-lg p-3 mb-5 bg-body rounded mt-5">
  <form class="needs-validation" method="post" novalidate id="forms" name="contactform">
    <h1 class="text-center fw-bold">Register</h1>
  <div class=" form-group row  mt-1">
    <label for="firstname" class="col-sm-3 col-form-label">First Name:</label>
    <div class="col-sm-9">
    <input type="text" name="fname" class=" form-control" id="firstname" autocomplete="off" required="">
    <div class="invalid-feedback">
      Please enter first name.
    </div>
  </div>
  </div>
  <div class="form-group row mt-1">
  <label for="email" class="col-sm-2 col-form-label">Email:</label>
  <div class="col-sm-10">
  <input type="email" class="form-control" id="email" name="email" autocomplete="off" required="">
  <div class="invalid-feedback">
    Please enter Email @.
  </div>
  </div>
  </div>
  <div class="form-group row mt-1">
    <label for="username" class="col-sm-2 col-form-label">Username:</label>
    <div class="col-sm-10">
    <input type="text" class="form-control" id="username" name="username" autocomplete="off" required="">
    <div class="invalid-feedback">
      Please enter Username.
    </div>
  </div>
</div>
  <div class="form-group row mt-1">
    <label for="password" class="col-sm-2 col-form-label">Password:</label>
    <div class="col-sm-10">
    <input type="password" class="form-control" id="password" name="password" autocomplete="off" required="">
    <div class="invalid-feedback">
      Please enter Password
    </div>
  </div>
</div>
  <div class="form-group row mt-1">
    <label for="confirmpassword" class="col-sm-4 col-form-label">Confirm Password:</label>
    <div class="col-sm-8">
    <input type="password" class="form-control" id="confirmpassword" name="confirmpassword" autocomplete="off" required="">
    <div class="invalid-feedback">
      Please enter Password
    </div>
  </div>
</div>

<button class="btn btn-dark mt-3 mb-3" type="submit" style=" background-color: #d2b48c ">Daftar</button>
Do You Have Account ?<a href="{$BaseHref}/member" class="fw-bold" style="text-decoration:none; color: #d2b48c">Login</a>
</form>
</div>







<script>
(function(){
  window.addEventListener('load', function(){
    var forms = document.getElementsByClassName('needs-validation');
    var validation = Array.prototype.filter.call(forms, function(form){
      form.addEventListener('submit', function(event){
        if (form.checkValidity() === false ){
        event.preventDefault();
        event.stopPropagation();
        }
        form.classList.add('was-validated');
      }, false);
    });
  }, false);
})();
</script>

<script>
  $(document).ready(function () {
      $("#forms").submit(function(){
          $.post("http://localhost/pindah/register-page/prosesregister",
          {
              FirstName: $("#firstname").val(),
              Email: $("#email").val(), 
              Username:  $("#username").val(),
              Password:  $("#password").val(),
              ConfirmPassword:  $("#confirmpassword").val()
          } )
          .done(function (data) {
                var response = JSON.parse(data);
                if (response.success) {
                  Swal.fire({
                    title: "SUCCESS",
                    text: "Succes",
                    icon: "success",
                    confirmButtonColor: "#3085d6",
                    text:"Click to go log in page",
                    confirmButtonText: "GO"
                    }).then((result) => {
                    if (result.isConfirmed) {
                        window.location.href="{$BaseHref}/member"; 
                    }
                  });
                } else {
                  Swal.fire({
                    icon: "error",
                    title: "Oops...",
                    text: response.message,
                    showConfirmButton: false,
                    timer: 1500,
                    });
                }
                
            }).fail(function () {
                alert("Error");
            });
          return false;
      });
  });
  </script>




















<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.7.1/jquery.min.js"
  integrity="sha512-v2CJ7UaYy4JwqLDIrZUI/4hqeoQieOmAZNXBeQyjo21dadnwR+8ZaIJVT8EE2iyI61OV8e6M8PP2/4hpQINQ/g=="
  crossorigin="anonymous" referrerpolicy="no-referrer"></script>

