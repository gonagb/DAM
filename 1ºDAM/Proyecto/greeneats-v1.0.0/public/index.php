<?php include "../public/php/conexionbd.php"; ?>

<!DOCTYPE html>
<html lang="es" dir="ltr">

  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">


    <!-- ===============================================-->
    <!--    Document Title-->
    <!-- ===============================================-->
    <title> GreenEats | Tu buscador de restaurantes veganos</title>


    <!-- ===============================================-->
    <!--    Favicons-->
    <!-- ===============================================-->
    <link rel="apple-touch-icon" sizes="180x180" href="assets/img/favicons/apple-touch-icon.png">
    <link rel="icon" type="image/png" sizes="32x32" href="assets/img/favicons/icon-32x32.png">
    <link rel="icon" type="image/png" sizes="16x16" href="assets/img/favicons/icon-16x16.png">
    <link rel="shortcut icon" type="image/x-icon" href="assets/img/favicons/favicon.ico">
    <link rel="manifest" href="assets/img/favicons/manifest.json">
    <meta name="msapplication-TileImage" content="assets/img/favicons/mstile-150x150.png">
    <meta name="theme-color" content="#ffffff">


    <!-- ===============================================-->
    <!--    Stylesheets-->
    <!-- ===============================================-->
    <link href="assets/css/theme.css" rel="stylesheet" />

  </head>


  <body>

    <!-- ===============================================-->
    <!--    Main Content-->
    <!-- ===============================================-->
    <main class="main" id="top">
      <nav class="navbar navbar-expand-lg navbar-light bg-light fixed-top" data-navbar-on-scroll="data-navbar-on-scroll">
        <div class="container"><a class="navbar-brand d-inline-flex" href="index.html"><img class="d-inline-block" src="assets/img/gallery/logo.png" alt="logo" /><span class="text-1000 fs-3 fw-bold ms-2 text-gradient">GreenEats</span></a>
          <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"> </span></button>
          <div class="collapse navbar-collapse border-top border-lg-0 my-2 mt-lg-0" id="navbarSupportedContent">
            <div class="mx-auto pt-5 pt-lg-0 d-block d-lg-none d-xl-block">
              <p class="mb-0 fw-bold text-lg-center">Te encuentras en: <i class="fas fa-map-marker-alt text-warning mx-2"></i><span class="fw-normal"></span><span>Tu ubicación</span></p>
            </div>
            <form class="d-flex mt-4 mt-lg-0 ms-lg-auto ms-xl-0" action=php/inicio.php method="POST">
              <div class="input-group-icon pe-2"><i class="fas fa-search input-box-icon text-primary"></i>
                <input class="form-control border-0 input-box bg-100" type="search" placeholder="Encuentra restaurante" aria-label="Search" />
              </div>
              <button class="btn btn-white shadow-warning text-warning" type="submit" href="php/inicio.php"> <i class="fas fa-user me-2"></i>Log In</button>
            </form>
          </div>
        </div>
      </nav>
     <section class="py-5 overflow-hidden bg-primary" id="home">
  <div class="container">
    <div class="row flex-center">
      <div class="col-md-5 col-lg-6 order-0 order-md-1 mt-8 mt-md-0 d-flex justify-content-center align-items-center">
        <iframe src="https://www.google.com/maps/d/embed?mid=1jHTBUMSnUCEr9rUnTlhvnU6a9DXZvu0&ehbc=2E312F" width="100%" height="512px" style="margin: 10px;"></iframe>
      </div>
      <div class="col-md-7 col-lg-6 py-8 text-md-start text-center">
        <h1 class="display-1 fs-md-5 fs-lg-6 fs-xl-8 text-light">A donde vamos?</h1>
        <h1 class="text-800 mb-5 fs-4">Encuentra el restaurante que más te acomode<br class="d-none d-xxl-block" />con las opciones que desees</h1>
        <div class="card w-xxl-75">
          <div class="card-body">
            <div class="tab-content mt-3" id="nav-tabContent">
              <div class="tab-pane fade show active" id="nav-home" role="tabpanel" aria-labelledby="nav-home-tab">
                <form class="row gx-2 gy-2 align-items-center">
                  <div class="col">
                    <div class="input-group-icon"><i class="fas fa-map-marker-alt text-danger input-box-icon"></i>
                      <label class="visually-hidden" for="inputDelivery">Dirección</label>
                      <input class="form-control input-box form-foodwagon-control" id="inputDelivery" type="text" placeholder="Introduce tu dirección" />
                    </div>
                  </div>
                  <div class="d-grid gap-3 col-sm-auto">
                    <button class="btn btn-danger" type="submit">Encuentra comida</button>
                  </div>
                </form>
              </div>
              <div class="tab-pane fade" id="nav-profile" role="tabpanel" aria-labelledby="nav-profile-tab">
                <form class="row gx-4 gy-2 align-items-center">
                  <div class="col">
                    <div class="input-group-icon"><i class="fas fa-map-marker-alt text-danger input-box-icon"></i>
                      <label class="visually-hidden" for="inputPickup">Dirección</label>
                      <input class="form-control input-box form-foodwagon-control" id="inputPickup" type="text" placeholder="Enter Your Address" />
                    </div>
                  </div>
                  <div class="d-grid gap-3 col-sm-auto">
                    <button class="btn btn-danger" type="submit">Aquí tu restaurante!</button>
                  </div>
                </form>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>



      <!-- ============================================-->
      <!-- <section> begin ============================-->
      <section class="py-0">

        <div class="container">
          <div class="row h-100 gx-2 mt-7">
            <div class="col-sm-6 col-lg-3 mb-3 mb-md-0 h-100 pb-4">
              <div class="card card-span h-100">
                <div class="position-relative"> <img class="img-fluid rounded-3 w-100" src="assets/img/gallery/ruzafa.jpg" alt="..." />
                  <div class="card-actions">   
                  </div>
                </div>
                <div class="card-body px-0">
                  <h5 class="fw-bold text-1000 text-truncate">Ruzafa</h5>
                </div><a class="stretched-link" href="#"></a>
              </div>
            </div>
            <div class="col-sm-6 col-lg-3 mb-3 mb-md-0 h-100 pb-4">
              <div class="card card-span h-100">
                <div class="position-relative"> <img class="img-fluid rounded-3 w-100" src="assets/img/gallery/el-carmen.jpg" alt="..." />
                  <div class="card-actions"> 
                  </div>
                </div>
                <div class="card-body px-0">
                  <h5 class="fw-bold text-1000 text-truncate">El Carmen</h5>
                </div><a class="stretched-link" href="#"></a>
              </div>
            </div>
            <div class="col-sm-6 col-lg-3 mb-3 mb-md-0 h-100 pb-4">
              <div class="card card-span h-100">
                <div class="position-relative"> <img class="img-fluid rounded-3 w-100" src="assets/img/gallery/aragon.jpg" alt="..." />
                  <div class="card-actions">
                  </div>
                </div>
                <div class="card-body px-0">
                  <h5 class="fw-bold text-1000 text-truncate">Aragón</h5>
                </div><a class="stretched-link" href="#"></a>
              </div>
            </div>
            <div class="col-sm-6 col-lg-3 mb-3 mb-md-0 h-100 pb-4">
              <div class="card card-span h-100">
                <div class="position-relative"> <img class="img-fluid rounded-3 w-100" src="assets/img/gallery/el-cabanyal.jpg" alt="..." />
                  <div class="card-actions">
                    
                  </div>
                </div>
                <div class="card-body px-0">
                  <h5 class="fw-bold text-1000 text-truncate">El Cabanyal</h5>
                </div><a class="stretched-link" href="#"></a>
              </div>
            </div>
          </div>
        </div><!-- end of .container-->

      </section>
      <!-- <section> close ============================-->
      <!-- ============================================-->

      <!-- ============================================-->


      <section>
        <div class="bg-holder" style="background-image:url(assets/img/gallery/cta-one-bg.jpg);background-position:center;background-size:cover;">
        </div>
        <!--/.bg-holder-->

        <div class="container">
          <div class="row justify-content-center">
            <div class="col-xxl-10">
              <div class="card card-span shadow-warning" style="border-radius: 35px;">
                <div class="card-body py-5">
                  <div class="row justify-content-evenly">
                    <div class="col-md-3">
                      <div class="d-flex d-md-block d-xl-flex justify-content-evenly justify-content-lg-between"><img src="assets/img/icons/vegan.png" width="100" alt="..." />
                        <div class="d-flex d-lg-block d-xl-flex flex-center">
                          <h2 class="fw-bolder text-1000 mb-0 text-gradient">Vegana <br class="d-none d-md-block" /> </h2>
                        </div>
                      </div>
                    </div>
                    <div class="col-md-3 hr-vertical">
                      <div class="d-flex d-md-block d-xl-flex justify-content-evenly justify-content-lg-between"><img src="assets/img/icons/olive-oil.png" width="100" alt="..." />
                        <div class="d-flex d-lg-block d-xl-flex flex-center">
                          <h2 class="fw-bolder text-1000 mb-0 text-gradient">Mediterranea</h2>
                        </div>
                      </div>
                    </div>
                    <div class="col-md-3 hr-vertical">
                      <div class="d-flex d-md-block d-xl-flex justify-content-evenly justify-content-lg-between"><img src="assets/img/icons/gluten-free.png" width="100" alt="..." />
                        <div class="d-flex d-lg-block d-xl-flex flex-center">
                          <h2 class="fw-bolder text-1000 mb-0 text-gradient">  Sin   Gluten</h2>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div class="row flex-center mt-md-8">
            <div class="col-lg-5 d-none d-lg-block" style="margin-bottom: -122px;"> <img class="w-100" src="assets/img/gallery/phone-cta-one.png" alt="..." height="auto" width="auto" /></div>
            <div class="col-lg-5 mt-7 mt-md-0">
              <h1 class="text-primary">Instala la APP</h1>
              <p style="color: white";>Deléitate con una amplia variedad de opciones culinarias
                <br class="d-none d-xl-block" /> al alcance de tu mano.</p>
              <a class="pe-2" href="https://www.apple.com/app-store/" target="_blank">
                <img src="assets/img/gallery/app-store.svg" width="160" alt="" />
              </a>
              <a href="https://play.google.com/store/apps" target="_blank">
                <img src="assets/img/gallery/google-play.svg" width="160" alt="" />
              </a>
            </div>
          </div>
        </div>
      </section>


      <!-- ============================================-->
      
      <!-- ============================================-->


      <section class="py-0">
        <div class="bg-holder" style="background-image:url(assets/img/gallery/valenciamapa.png);background-position:center;background-size:cover;">
        </div>
        <!--/.bg-holder-->

        <div class="container">
          <div class="row flex-center">
            <div class="col-xxl-9 py-7 text-center">
              <h1 class="fw-bold mb-4 text-dark fs-6">¿Conoces más restaurantes con las opciones que ofrecemos?<br />¿Nos ayudarías a conocer más restaurantes? </h1><a class="btn btn-danger" href="#"> DANOS A CONOCER MÁS RESTURANTES<i class="fas fa-chevron-right ms-2"></i></a>
            </div>
          </div>
        </div>
      </section>


      <!-- ============================================-->
      <!-- <section> begin ============================-->
      <section class="py-0 pt-7 bg-1000">

        <div class="container">
                   <hr class="text-900" />
          <div class="row">
            <div class="col-6 col-md-4 col-lg-3 col-xxl-2 mb-3">
              <h5 class="lh-lg fw-bold text-white">NUESTRA COMPAÑIA</h5>
              <ul class="list-unstyled mb-md-4 mb-lg-0">
                <li class="lh-lg"><a class="text-200 text-decoration-none" href="#!">Sobre Nosotros</a></li>
                <li class="lh-lg"><a class="text-200 text-decoration-none" href="#!">Equipo</a></li>
                <li class="lh-lg"><a class="text-200 text-decoration-none" href="#!">Empleo</a></li>
                <li class="lh-lg"><a class="text-200 text-decoration-none" href="#!">Blog</a></li>
              </ul>
            </div>
            <div class="col-6 col-md-4 col-lg-3 col-xxl-2 col-lg-3 mb-3">
              <h5 class="lh-lg fw-bold text-white">CONTACTO</h5>
              <ul class="list-unstyled mb-md-4 mb-lg-0">
                <li class="lh-lg"><a class="text-200 text-decoration-none" href="#!">Ayuda &amp; Soporta</a></li>
                <li class="lh-lg"><a class="text-200 text-decoration-none" href="#!">Colabora con nosotros </a></li>
                <li class="lh-lg"><a class="text-200 text-decoration-none" href="#!">Trabaja con nosotros</a></li>
              </ul>
            </div>
            <div class="col-6 col-md-4 col-lg-3 col-xxl-2 mb-3">
              <h5 class="lh-lg fw-bold text-white">LEGAL</h5>
              <ul class="list-unstyled mb-md-4 mb-lg-0">
                <li class="lh-lg"><a class="text-200 text-decoration-none" href="#!">Terminos &amp; Condiciones</a></li>
                <li class="lh-lg"><a class="text-200 text-decoration-none" href="#!">Politica de Privacidad</a></li>
                <li class="lh-lg"><a class="text-200 text-decoration-none" href="#!">Politica de Cookies</a></li>
              </ul>
            </div>
            <div class="col-6 col-md-4 col-lg-3 col-xxl-2 mb-3">
              <h5 class="lh-lg fw-bold text-white">LINKS DE INTERES</h5>
              <ul class="list-unstyled mb-md-4 mb-lg-0">
                <li class="lh-lg"><a class="text-200 text-decoration-none" href="#!"> IMF-Capitol</a></li>
                <li class="lh-lg"><a class="text-200 text-decoration-none" href="#!">JOCARSA</a></li>
              </ul>
            </div>
            <div class="col-12 col-md-8 col-lg-6 col-xxl-4">
              <h5 class="lh-lg fw-bold text-500">SIGUENOS EN NUESTRAS <br> REDES SOCIALES</h5>
              <div class="text-start my-3"> <a href="#!">
                  <svg class="svg-inline--fa fa-instagram fa-w-14 fs-2 me-2" aria-hidden="true" focusable="false" data-prefix="fab" data-icon="instagram" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 448 512">
                    <path fill="#BDBDBD" d="M224.1 141c-63.6 0-114.9 51.3-114.9 114.9s51.3 114.9 114.9 114.9S339 319.5 339 255.9 287.7 141 224.1 141zm0 189.6c-41.1 0-74.7-33.5-74.7-74.7s33.5-74.7 74.7-74.7 74.7 33.5 74.7 74.7-33.6 74.7-74.7 74.7zm146.4-194.3c0 14.9-12 26.8-26.8 26.8-14.9 0-26.8-12-26.8-26.8s12-26.8 26.8-26.8 26.8 12 26.8 26.8zm76.1 27.2c-1.7-35.9-9.9-67.7-36.2-93.9-26.2-26.2-58-34.4-93.9-36.2-37-2.1-147.9-2.1-184.9 0-35.8 1.7-67.6 9.9-93.9 36.1s-34.4 58-36.2 93.9c-2.1 37-2.1 147.9 0 184.9 1.7 35.9 9.9 67.7 36.2 93.9s58 34.4 93.9 36.2c37 2.1 147.9 2.1 184.9 0 35.9-1.7 67.7-9.9 93.9-36.2 26.2-26.2 34.4-58 36.2-93.9 2.1-37 2.1-147.8 0-184.8zM398.8 388c-7.8 19.6-22.9 34.7-42.6 42.6-29.5 11.7-99.5 9-132.1 9s-102.7 2.6-132.1-9c-19.6-7.8-34.7-22.9-42.6-42.6-11.7-29.5-9-99.5-9-132.1s-2.6-102.7 9-132.1c7.8-19.6 22.9-34.7 42.6-42.6 29.5-11.7 99.5-9 132.1-9s102.7-2.6 132.1 9c19.6 7.8 34.7 22.9 42.6 42.6 11.7 29.5 9 99.5 9 132.1s2.7 102.7-9 132.1z"></path>
                  </svg></a><a href="#!">
                  <svg class="svg-inline--fa fa-facebook fa-w-16 fs-2 mx-2" aria-hidden="true" focusable="false" data-prefix="fab" data-icon="facebook" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 512">
                    <path fill="#BDBDBD" d="M504 256C504 119 393 8 256 8S8 119 8 256c0 123.78 90.69 226.38 209.25 245V327.69h-63V256h63v-54.64c0-62.15 37-96.48 93.67-96.48 27.14 0 55.52 4.84 55.52 4.84v61h-31.28c-30.8 0-40.41 19.12-40.41 38.73V256h68.78l-11 71.69h-57.78V501C413.31 482.38 504 379.78 504 256z"></path>
                  </svg></a><a href="#!">
                  <svg class="svg-inline--fa fa-twitter fa-w-16 fs-2 mx-2" aria-hidden="true" focusable="false" data-prefix="fab" data-icon="twitter" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 512">
                    <path fill="#BDBDBD" d="M459.37 151.716c.325 4.548.325 9.097.325 13.645 0 138.72-105.583 298.558-298.558 298.558-59.452 0-114.68-17.219-161.137-47.106 8.447.974 16.568 1.299 25.34 1.299 49.055 0 94.213-16.568 130.274-44.832-46.132-.975-84.792-31.188-98.112-72.772 6.498.974 12.995 1.624 19.818 1.624 9.421 0 18.843-1.3 27.614-3.573-48.081-9.747-84.143-51.98-84.143-102.985v-1.299c13.969 7.797 30.214 12.67 47.431 13.319-28.264-18.843-46.781-51.005-46.781-87.391 0-19.492 5.197-37.36 14.294-52.954 51.655 63.675 129.3 105.258 216.365 109.807-1.624-7.797-2.599-15.918-2.599-24.04 0-57.828 46.782-104.934 104.934-104.934 30.213 0 57.502 12.67 76.67 33.137 23.715-4.548 46.456-13.32 66.599-25.34-7.798 24.366-24.366 44.833-46.132 57.827 21.117-2.273 41.584-8.122 60.426-16.243-14.292 20.791-32.161 39.308-52.628 54.253z"></path>
                  </svg></a></div>
             
            </div>
          </div>
          <hr class="border border-800" />
          <div class="row flex-center pb-3">
            <div class="col-md-6 order-0">
              <p class="text-200 text-center text-md-start">Gonzalo Aguirre Boix - 1º DAM &copy; GreenEats, 2023</p>
            </div>
            <div class="col-md-6 order-1">
              <p class="text-200 text-center text-md-end"> Hecho con&nbsp;
                <svg class="bi bi-suit-heart-fill" xmlns="http://www.w3.org/2000/svg" width="15" height="15" fill="#FFB30E" viewBox="0 0 16 16">
                  <path d="M4 1c2.21 0 4 1.755 4 3.92C8 2.755 9.79 1 12 1s4 1.755 4 3.92c0 3.263-3.234 4.414-7.608 9.608a.513.513 0 0 1-.784 0C3.234 9.334 0 8.183 0 4.92 0 2.755 1.79 1 4 1z"></path>
                </svg>&nbsp;por mi gente de&nbsp;<a class="text-200 fw-bold" href="https://themewagon.com/" target="_blank">ThemeWagon </a>
              </p>
            </div>
          </div>
        </div><!-- end of .container-->

      </section>
      <!-- <section> close ============================-->
      <!-- ============================================-->


    </main>
    <!-- ===============================================-->
    <!--    End of Main Content-->
    <!-- ===============================================-->




    <!-- ===============================================-->
    <!--    JavaScripts-->
    <!-- ===============================================-->
    <script src="vendors/@popperjs/popper.min.js"></script>
    <script src="vendors/bootstrap/bootstrap.min.js"></script>
    <script src="vendors/is/is.min.js"></script>
    <script src="https://polyfill.io/v3/polyfill.min.js?features=window.scroll"></script>
    <script src="vendors/fontawesome/all.min.js"></script>
    <script src="assets/js/theme.js"></script>

    <link href="https://fonts.googleapis.com/css2?family=Source+Sans+Pro:wght@200;300;400;600;700;900&amp;display=swap" rel="stylesheet">
  </body>

</html>