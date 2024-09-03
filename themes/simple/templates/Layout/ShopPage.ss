<% require themedCSS('Shop') %>


    <div class="icon  mt-5 ">
        <div class="container text-center  mt-3">
            <div class="d-flex justify-content-center gap-5 ">
                <div>
                    <a href="#Chair" style="text-decoration:none;">
                        <button type="button" class="btn btn-outline-dark floa">
                            <i class="fa-solid fa-chair" style="width: 30px; height: 30px;"></i>
                        </button>
                        <h6 class="mt-2">CHAIR</h6>
                    </a>
                </div>
                <div class="">
                    <a href="#Sofa" style="text-decoration:none;">
                        <button type="button" class="btn btn-outline-dark">
                            <i class="fa-solid fa-couch" style="width: 30px; height: 30px;"></i>
                        </button>
                        <h6 class="mt-2">SOFA</h6>
                    </a>
                </div>
                <div class="">
                    <a href="#Lamp" style="text-decoration:none;">
                        <button type="button" class="btn btn-outline-dark">
                            <i class="fa-solid fa-lightbulb" style="width: 30px; height: 30px;"></i>
                        </button>
                        <h6 class="mt-2">LAMP</h6>
                    </a>
                </div>
            </div>
        </div>
    </div>

    <div class="bg">

        <div class="container" id="Lamp">
            <div class="text">
                <h2 class="text-center shadow p-3 mb-5 bg-body rounded fw-bold">Lamp</h2>
            </div>
        </div>
        <div class="container d-flex justify-content-center gap-3 shadow p-3 mb-5 bg-body rounded">
            <div class="card">
                <div class="row">
                    <% loop $Lamp %>
                        <div class="col">
                            <a href="/pindah/shop-page/detailobject/$ID " style="text-decoration:none;">
                                <% with $ImageThumbnail %>
                                    <img class="my-custom-class card-img-top  " src="$URL">
                                    <% end_with %>
                                        <div class="card-body text-center">
                                            <h5 class="fw-bold">$Title</h5>
                                            <p class="card-text">Rp. $Harga </p>
                                        </div>
                            </a>
                        </div>
                        <% end_loop %>
                </div>

            </div>
        </div>




        <div class=" container Chair" id="Chair">
            <div class="text">
                <h2 class="text-center shadow p-3 mb-5 bg-body rounded fw-bold">Chair</h2>
            </div>
        </div>
        <div class="container content d-flex gap-3 ">
            <div class="row">
                <% loop $Chair %>
                    <div class="col col-sm-4 d-flex justify-content-center mt-3">
                        <div class="card text-center" style="width: 18rem;">
                            <a href="/pindah/shop-page/detailobject/$ID" style="text-decoration:none;">
                                <% with $ImageThumbnail %>
                                    <img src="$URL" class="my-custom-class card-img-top" width="50" height="300">
                                    <% end_with %>
                                        <div class="card-body">
                                            <h5 class="fw-bold">$Title</h5>
                                            <p class="card-text">Rp. $Harga</p>
                                        </div>
                            </a>
                        </div>
                    </div>
                    <% end_loop %>

            </div>
        </div>

        <div class="container sofa mt-5" id="Sofa">
            <div class="">
                <div class="text">
                    <h2 class="text-center shadow p-3 mb-5 bg-body rounded fw-bold">Sofa</h2>
                </div>

                <div class="row">
                    <% loop $Sofa %>
                        <div class="col mt-3 d-flex justify-content-center  ">
                            <div class="card text-center" style="width: 18rem;">
                                <% with $ImageThumbnail %>
                                    <img class="my-custom-class card-img-top" src="$URL">
                                    <% end_with %>

                                        <div class="card-body text-center">
                                            <h5 class="fw-bold">$Title</h5>
                                            <p class="card-text">Rp. $Harga</p>
                                            <a href="/pindah/shop-page/detailobject/$ID" class="btn btn-primary">BUY
                                            </a>
                                        </div>
                            </div>
                        </div>
                        <% end_loop %>

                </div>
            </div>
        </div>


    </div>













































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
    </body>

    </html>