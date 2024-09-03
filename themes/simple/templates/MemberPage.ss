        <% require themedCSS('login') %>
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
   
   
   <style>
    @media (max-width: 400px) {
        form{
            scale: 1.5;
        }    
    }
      
   </style>


   
   
   
   
   
   <div class="container d-flex justify-content-center mt-5">
        <form  method="post" id="Formlogin" class="scale shadow-lg p-3 mb-5 bg-body rounded mt-5 " style="width:500px; height:500;">
                <h2 class="text-center fw-bold">Login </h2>
                <div class=" mt-5">
                <div class="col-12">
                    <div class="form-floating mb-3">
                        <input type="email" class="form-control shadow-none" id="floatingInput" placeholder="name@example.com" required>
                        <label for="floatingInput">Email address</label>
                    </div>
                </div>
                <div class="col-12">
                    <div class="form-floating d-flex" id="show_hide_password">
                        <input type="password" class="form-control shadow-none" id="floatingPassword" placeholder="Password" required>
                        <label for="floatingPassword">Password </label>
                        <a href="" class="" style="color:black !important; background-color:#d2b48c; padding:10px;border-radius: .25rem;">
                        <div class="form-control-addon" >
                        <i class="fa fa-eye-slash" style="margin-top:10px;" aria-hidden="true"></i>
                        </div>
                        </a>
                    </div>
                </div>
            </div>
            <div class="col-12 text-center pb-2 mt-5">
            <a href="{$BaseHref}/register-page" class="text-center" style="text-decoration:none; color: #d2b48c">Don't have account?
            </a>
            </div>
                <div class="col-12 text-center ">
                    <div class="form-check justify-content-center">
                        <input class="form-check-input" type="checkbox" value="" id="invalidCheck2" required
                            style="float: none;">
                        <label class="form-check-label " for="invalidCheck2">
                            Agree to terms and conditions
                        </label>
                    </div>
                </div>
                <div class="col-12 text-center">
                    <button class="btn " type="submit" style=" background-color: #d2b48c " >Masuk</button>
                </div>
            </div>
        </form>
    </div>
<script>
    $(document).ready(function () {
        $("#Formlogin").submit(function(){
            $.post("{$BaseHref}/member/proseslogin",
            {
                Email: $("#floatingInput").val(),
                Password:  $("#floatingPassword").val()
            } )
            .done(function (data) {
                var response = JSON.parse(data);
                if (response.success) {
                    Swal.fire({
                        title: "SUCCESS",
                        text: "You are Log in ",
                        icon: "success",
                        confirmButtonColor: "#3085d6",
                        text:"If you click this button you go to home",
                        confirmButtonText: "GO"
                        }).then((result) => {
                        if (result.isConfirmed) {
                            window.location.href="$BaseHref"; 
                        }
                        
                        });
                        setInterval(href, 5000);

                      function href(){
                        window.location.href="$BaseHref"; 
                      }
                
                } else {
                    Swal.fire({
                        icon: "error",
                        title: "Oops...",
                        text: "Email or Passworrd Incorrect",
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


    $(document).ready(function() {
    $("#show_hide_password a").on('click', function(event) {
        event.preventDefault();
        if($('#show_hide_password input').attr("type") == "text"){
            $('#show_hide_password input').attr('type', 'password');
            $('#show_hide_password i').addClass( "fa-eye-slash" );
            $('#show_hide_password i').removeClass( "fa-eye" );
        }else if($('#show_hide_password input').attr("type") == "password"){
            $('#show_hide_password input').attr('type', 'text');
            $('#show_hide_password i').removeClass( "fa-eye-slash" );
            $('#show_hide_password i').addClass( "fa-eye" );
        }
    });
});
    </script>
    
        

    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.7.1/jquery.min.js"
        integrity="sha512-v2CJ7UaYy4JwqLDIrZUI/4hqeoQieOmAZNXBeQyjo21dadnwR+8ZaIJVT8EE2iyI61OV8e6M8PP2/4hpQINQ/g=="
        crossorigin="anonymous" referrerpolicy="no-referrer"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/owl.carousel.min.js"
        integrity="sha512-bPs7Ae6pVvhOSiIcyUClR7/q2OAsRiovw4vAkX+zJbw3ShAeeqezq50RIIcIURq7Oa20rW2n2q+fyXBNcU9lrw=="
        crossorigin="anonymous" referrerpolicy="no-referrer"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/owl.carousel.min.js"
        integrity="sha512-bPs7Ae6pVvhOSiIcyUClR7/q2OAsRiovw4vAkX+zJbw3ShAeeqezq50RIIcIURq7Oa20rW2n2q+fyXBNcU9lrw=="
        crossorigin="anonymous" referrerpolicy="no-referrer"></script>
        <!-- Swiper JS -->
        <script src="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.js"></script>










