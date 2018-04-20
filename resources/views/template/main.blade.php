<!DOCTYPE html>

<html lang="en">

<head>

  <meta charset="utf-8">

  <title>Central Java Conference</title>

  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <meta content="" name="keywords">

  <meta content="" name="description">



  <!-- Favicons -->

  <link href="/BizPage/img/peta/logo-cjc.png" rel="icon">

  <link href="/BizPage/img/apple-touch-icon.png" rel="apple-touch-icon">



  <!-- Google Fonts -->

  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,700,700i|Montserrat:300,400,500,700" rel="stylesheet">



  <!-- Bootstrap CSS File -->

  <link href="/BizPage/lib/bootstrap/css/bootstrap.min.css" rel="stylesheet">



  <!-- Libraries CSS Files -->

  <link href="/BizPage/lib/font-awesome/css/font-awesome.min.css" rel="stylesheet">

  <link href="/BizPage/lib/animate/animate.min.css" rel="stylesheet">

  <link href="/BizPage/lib/ionicons/css/ionicons.min.css" rel="stylesheet">

  <link href="/BizPage/lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">

  <link href="/BizPage/lib/lightbox/css/lightbox.min.css" rel="stylesheet">



  <!-- Main Stylesheet File -->

  <link href="/BizPage/css/style.css" rel="stylesheet">



  <!-- =======================================================

    Theme Name: BizPage

    Theme URL: https://bootstrapmade.com/bizpage-bootstrap-business-template/

    Author: BootstrapMade.com

    License: https://bootstrapmade.com/license/

  ======================================================= -->

</head>



<body>



  <!--==========================

    Header

  ============================-->

  <header id="header">

    <div class="container-fluid">



      <div id="logo" class="pull-left">

        <!-- Uncomment below if you prefer to use an image logo -->

        <!-- <a href="#intro"><img src="img/logo.png" alt="" title="" /></a>-->

        <a href="#intro"><img src="/BizPage/img/peta/logo-cjc2.png" alt="" title="" /></a>

      </div>



      <nav id="nav-menu-container">

        <ul class="nav-menu">

          <li><a href="/">Beranda</a></li>

          <li><a href="#">Informasi</a>

            <ul>

              <li><a href="berita">Berita</a></li>

              <li><a href="#">Agenda</a></li>

              <li><a href="#">Pengumuman</a>

                <ul>

                  <li><a href="pengregional">Seminar Regional</a></li>

                  <li><a href="pengnasional">Seminar Nasional</a></li>

                  <li><a href="penginter">Seminar Internasional</a></li>

                </ul>

              </li>

            </ul>

          </li>

          <li><a href="galeri">Galeri</a></li>

          <li><a href="http://ejournal.bappeda.jatengprov.go.id/">Prosiding</a></li>

          <li><a href="alur">Daftar</a></li>

          <li><a href="kontak">Kontak</a></li>

          

          

          <li>

           @if (Route::has('login'))

                <div class="top-right links">

                    <a href="{{ url('/login') }}"><i class="ion-android-contact"></i></a>

                </div>

            @endif

            </li>

        </ul>

      </nav><!-- #nav-menu-container -->

    </div>

  </header><!-- #header -->



  <!--==========================

    Intro Section

  ============================-->

  <section id="intro">

    <div class="intro-container">

      <div id="introCarousel" class="carousel  slide carousel-fade" data-ride="carousel">



        <ol class="carousel-indicators"></ol>



        <div class="carousel-inner" role="listbox">



          <div class="carousel-item active">

            <div class="carousel-background"><img src="/BizPage/img/peta/slid.jpeg" alt=""></div>

            <div class="carousel-container">

              <div class="carousel-content">

                

<h2>Sorry, Maintenance system</h2>

                <p>Maaf sedang perbaikan sistem</p>

              </div>

            </div>

          </div>



          <div class="carousel-item">

            <div class="carousel-background"><img src="/BizPage/img/peta/slid1.jpeg" alt=""></div>

            <div class="carousel-container">

              <div class="carousel-content">

                <h2>&nbsp;</h2>

                <p>&nbsp;</p>

              </div>

            </div>

          </div>



          <div class="carousel-item">

            <div class="carousel-background"><img src="/BizPage/img/peta/slid2.jpeg" alt=""></div>

            <div class="carousel-container">

              <div class="carousel-content">

                <h2>&nbsp;</h2>

                <p>&nbsp;</p>

              </div>

            </div>

          </div>



          


        </div>



        <a class="carousel-control-prev" href="#introCarousel" role="button" data-slide="prev">

          <span class="carousel-control-prev-icon ion-chevron-left" aria-hidden="true"></span>

          <span class="sr-only">Previous</span>

        </a>



        <a class="carousel-control-next" href="#introCarousel" role="button" data-slide="next">

          <span class="carousel-control-next-icon ion-chevron-right" aria-hidden="true"></span>

          <span class="sr-only">Next</span>

        </a>



      </div>

    </div>

  </section><!-- #intro -->



@yield('content')



  <!--==========================

    Footer

  ============================-->

  <footer id="footer">

    <div class="footer-top">

      <div class="container">

        <div class="row">



          <div class="col-lg-4 col-md-4 footer-contact">

            <h4>Contact Us</h4>

            <p>

              JL. Pemuda, No .127-133 Semarang,<br> Kode Pos : 50132<br>

              Indonesia <br>

              <strong>Phone:</strong> +6224 3515591, 3515592<br>
    <strong>Fax:</strong> +6224 3546802, 3516224<br>

              <strong>Email:</strong> kelitbangan.bappeda@gmail.com<br>

            </p>

          </div>



          <div class="col-lg-4 col-md-4 footer-links">

            <h4>Social Media</h4>

              <div class="social-links">
<a href="https://www.facebook.com/litbangjateng" class="facebook"><i class="fa fa-facebook"></i></a>
    <a href="bappeda.jatengprov.go.id" class="chrome"><i class="fa fa-chrome"></i></a>

              <a href="https://twitter.com/litbangjateng" class="twitter"><i class="fa fa-twitter"></i></a>

              

              <a href="https://www.instagram.com/litbangjateng/" class="instagram"><i class="fa fa-instagram"></i></a>

              

            </div>

          </div>



          <div class="col-lg-4 col-md-4 footer-newsletter">

            <h4>Visitor</h4> <br />

            <!-- <script type="text/javascript" src="http://feedjit.com/serve/?vv=1515&amp;tft=3&amp;dd=0&amp;wid=&amp;pid=0&amp;proid=0&amp;bc=FFFFFF&amp;tc=000000&amp;brd1=012B6B&amp;lnk=135D9E&amp;hc=FFFFFF&amp;hfc=2853A8&amp;btn=C99700&amp;ww=200&amp;went=3"></script>
    <noscript><a href="http://feedjit.com/">Live Traffic Stats</a></noscript>
 -->
          </div>



        </div>

      </div>

    </div>



    <div class="container">

      <div class="copyright">

        &copy; Copyright <strong>Bappeda Pemprov Jateng</strong>. All Rights Reserved

      </div>

    </div>

  </footer><!-- #footer -->



  <a href="#" class="back-to-top"><i class="fa fa-chevron-up"></i></a>



  <!-- JavaScript Libraries -->

  <script src="/BizPage/lib/jquery/jquery.min.js"></script>

  <script src="/BizPage/lib/jquery/jquery-migrate.min.js"></script>

  <script src="/BizPage/lib/bootstrap/js/bootstrap.bundle.min.js"></script>

  <script src="/BizPage/lib/easing/easing.min.js"></script>

  <script src="/BizPage/lib/superfish/hoverIntent.js"></script>

  <script src="/BizPage/lib/superfish/superfish.min.js"></script>

  <script src="/BizPage/lib/wow/wow.min.js"></script>

  <script src="/BizPage/lib/waypoints/waypoints.min.js"></script>

  <script src="/BizPage/lib/counterup/counterup.min.js"></script>

  <script src="/BizPage/lib/owlcarousel/owl.carousel.min.js"></script>

  <script src="/BizPage/lib/isotope/isotope.pkgd.min.js"></script>

  <script src="/BizPage/lib/lightbox/js/lightbox.min.js"></script>

  <script src="/BizPage/lib/touchSwipe/jquery.touchSwipe.min.js"></script>

  <!-- Contact Form JavaScript File -->

  <script src="/BizPage/contactform/contactform.js"></script>



  <!-- Template Main Javascript File -->

  <script src="/BizPage/js/main.js"></script>
  <script type="text/javascript">
    $('input[type=radio][name=jenis]').change(function() {
        if (this.value == 'peserta') {
            $(".dis").attr("disabled", true);
            $(".dis").val('');
        }else{
          $(".dis").removeAttr("disabled");
          console.log('ada');
        }
    });
  </script>
  <script>
    
  function validateForm() {

    var x = document.forms["myForm"]["fname"].value;

    if (x == "") {

        alert("Name must be filled out");

        return false;

    }

}

</script>



</body>

</html>

