

<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11.12.4/dist/sweetalert2.all.min.js"></script>
<link href="https://cdn.jsdelivr.net/npm/sweetalert2@11.12.4/dist/sweetalert2.min.css" rel="stylesheet">

    <style>
        .bold-line {
            border: 0;
            height: 1px;
            /* Adjust the thickness of the line */
            background-color: black;
            /* Set the col kecilor of the line */
            margin: 10px 0;
            /* Adjust spacing around the line */
            width: auto;
            /* Make the line width auto */
        }

        .kecil {
            scale: 80%;
        }

        .custom-bold-outline {
            border-width: 2.5px;
            /* Adjust the thickness of the border */
        }

        .btn-rounded {
            border-width: 3px;
            /* Custom border thickness */
            border-radius: 12px;
            /* Adjust the radius for rounded corners */
        }
    </style>



    <div class="container">
        <div class="container-fluid">
            <h2 class="fw-bold">CONTACT US</h2>
            <hr class="bold-line">
            <div class="row mt-5">
                <div class="col kecil ">
                    <h6 class="fw-bold">Los Angeles</h6>
                    <p class="text-muted">22 Tengger Rejo Mulyo <br> Surabaya, Indonesia</p>
                    <p class="text-muted">+39 93434324</p>
                    <p class="fw-bold">loremipsum@gmail.com</p>
                </div>
                <div class="col kecil">
                    <h6 class="fw-bold">Los Angeles</h6>
                    <p class="text-muted">22 Tengger Rejo Mulyo <br> Surabaya, Indonesia</p>
                    <p class="text-muted">+39 93434324</p>
                    <p class="fw-bold">loremipsum@gmail.com</p>
                </div>
                <div class="col kecil">
                    <h6 class="fw-bold">Los Angeles</h6>
                    <p class="text-muted">22 Tengger Rejo Mulyo <br> Surabaya, Indonesia</p>
                    <p class="text-muted">+39 93434324</p>
                    <p class="fw-bold">loremipsum@gmail.com</p>
                </div>
            </div>
        </div>
    </div>
<iframe src="https://www.google.com/maps/embed?pb=!1m10!1m8!1m3!1d989.4693974973708!2d112.654606!3d-7.254770000000001!3m2!1i1024!2i768!4f13.1!5e0!3m2!1sid!2sid!4v1724833706438!5m2!1sid!2sid" 
width="100%" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>


    <div class="container">
        <form method="post" id="Formlogin">
            <div class="text-start">
                <h4>GET IN TOUCH.</h4>
                <p class="fw-bold">Explore your country and you can make all if you want send me message if you
                    interest.</p>
                <div class="form-floating mt-2 ">
                    <textarea class="form-control shadow-none border-none" id="message" name="message" rows="3"placeholder="Message" required></textarea>
                    <label for="message">Message</label>
                </div>
               
            </div>
            
            <button class="btn btn-rounded btn-outline-dark custom-bold-outline mt-4 fw-bold" type="submit">SEND</button>
        </form>
    </div>

    <script>
        $(document).ready(function () {
        $("#Formlogin").submit(function (event) {
           

            $.ajax({
                url: "{$BaseHref}/contact/mail",
                type: "POST",
                data: {
                    email: $("#email").val(),
                    message: $("#message").val()
                },
                success: function (response) {
                    Swal.fire({
                        title: "Succes",
                        text: "Your Message Sending",
                        icon: "success",
                        showConfirmButton: false,
                        timer: 1500
                    });
                },
                error: function (xhr, status, error) {
                    alert("Failed to send message: " + error); // Add error message
                }
            });
            return false;
        });
    });
        </script>


















