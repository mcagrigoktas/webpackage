// ignore_for_file: avoid_web_libraries_in_flutter

import 'dart:js' as js;

import '../../utils/section.dart';

part 'bolum1.dart';
part 'header2.dart';
part 'bolum2.dart';
part 'bolum3.dart';
part 'bolum4.dart';
part 'bolum5.dart';
part 'bolum6.dart';
part 'bolum7.dart';
part 'bolum8.dart';
part 'bolum9.dart';
part 'footer1.dart';
part 'header1.dart';
part 'navbar1.dart';

const _pathPrefix = "assets/packages/webpackage/assets/rakon/files";

class RakonWeb {
  RakonWeb._();

  static String getHTMLStrings({required String primaryColor, required String splashLogoUrl, required Section navBar, required List<Section> itemList}) {
    return _bodyPrefix() + navBar.getHtml() + _bodyCenter() + itemList.fold<String>('', (previousValue, element) => previousValue + element.getHtml()) + _bodySufix(primaryColor, splashLogoUrl);
  }

  static String _bodyPrefix() {
    return '''
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
  <meta http-equiv="X-UA-Compatible" content="IE=edge" />
  <meta http-equiv="X-UA-Compatible" content="ie=edge" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />

  
  <!-- Bootstrap 4.5 -->
  <link rel="stylesheet" href="$_pathPrefix/css/bootstrap.min.css" type="text/css" />
  <!-- animate -->
  <link rel="stylesheet" href="$_pathPrefix/css/animate.css" type="text/css" />
  <!-- Swiper -->
  <link rel="stylesheet" href="$_pathPrefix/css/swiper.min.css" />
  <!-- icons -->
  <link rel="stylesheet" href="$_pathPrefix/css/icons.css" type="text/css" />
  <!-- aos -->
  <link rel="stylesheet" href="$_pathPrefix/css/aos.css" type="text/css" />
  <!-- main css -->
  <link rel="stylesheet" href="$_pathPrefix/css/main.css" type="text/css" />
  <!-- normalize -->
  <link rel="stylesheet" href="$_pathPrefix/css/normalize.css" type="text/css" />
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.3.0/css/all.min.css" type="text/css" />
  
  
<script>
   var JDataFunction;
    var JDataFunctionInitialize = function (fun) {
      JDataFunction = fun;
    };
    var JDataFunctionCall = function () {
      JDataFunction();
    };
  </script>
</head>

<body class="app_fitness oh-x"><div id="wrapper"><div id="content">

 
''';
  }

  static String _bodyCenter() {
    return '<main data-spy="scroll" data-target="#navbar-example2" data-offset="0">';
  }

  static String _bodySufix(String primaryColor, String splashLogoUrl) {
    return '''
 </main>
 </div>

    <!-- Video Modal -->
    <div class="modal mdll_video fade" id="mdllVideo" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
      aria-hidden="true">
      <!-- Close -->
      <button type="button" class="close bbt_close ripple_circle" data-dismiss="modal" aria-label="Close">
        <i class="tio clear"></i>
      </button>
      <div class="modal-dialog modal-dialog-centered modal-lg">
        <div class="modal-content">
          <div class="modal-body">
            <div class="embed-responsive embed-responsive-16by9">
              <iframe class="embed-responsive-item" src="" id="video" allowscriptaccess="always"
                allow="autoplay"></iframe>
            </div>
          </div>
        </div>
      </div>
    </div>

    <!-- Back to top with progress indicator-->
    <div class="prgoress_indicator">
      <svg class="progress-circle svg-content" width="100%" height="100%" viewBox="-1 -1 102 102">
        <path d="M50,1 a49,49 0 0,1 0,98 a49,49 0 0,1 0,-98" />
      </svg>
    </div>

    <!-- Tosts 
    <div aria-live="polite" aria-atomic="true" class="d-flex justify-content-center align-items-center">
      <div class="toast toast_demo" id="myTost" role="alert" aria-live="assertive" aria-atomic="true"
        data-animation="true" data-autohide="false">
        <div class="toast-body">
          <button type="button" class="ml-2 mb-1 close" data-dismiss="toast" aria-label="Close">
            <i class="tio clear"></i>
          </button>
          <h5>Hi there 👋</h5>
          <p>We are glad you joined us <a href="#">Join us</a></p>
        </div>
      </div>
    </div>
    End. Toasts -->

    <!-- Start Section Loader -->
    <section class="loading_overlay">
      <div class="loader_logo">
        <img class="logo" src="$splashLogoUrl" />
      </div>
    </section>
    <!-- End. Loader -->
  </div>


 <!-- jquery -->
  <script src="$_pathPrefix/js/jquery-3.5.0.js" type="text/javascript"></script>
  <!-- jquery-migrate -->
  <script src="$_pathPrefix/js/jquery-migrate.min.js" type="text/javascript"></script>
  <!-- popper -->
  <script src="$_pathPrefix/js/popper.min.js" type="text/javascript"></script>
  <!-- bootstrap -->
  <script src="$_pathPrefix/js/bootstrap.min.js" type="text/javascript"></script>
  <!--
  ============
  vendor file
  ============
   -->
  <!-- particles -->
  <script src="$_pathPrefix/js/vendor/particles.min.js" type="text/javascript"></script>
  <!-- TweenMax -->
  <script src="$_pathPrefix/js/vendor/TweenMax.min.js" type="text/javascript"></script>
  <!-- ScrollMagic -->
  <script src="$_pathPrefix/js/vendor/ScrollMagic.js" type="text/javascript"></script>
  <!-- animation.gsap -->
  <script src="$_pathPrefix/js/vendor/animation.gsap.js" type="text/javascript"></script>
  <!-- addIndicators -->
  <script src="$_pathPrefix/js/vendor/debug.addIndicators.min.js" type="text/javascript"></script>
  <!-- Swiper js -->
  <script src="$_pathPrefix/js/vendor/swiper.min.js" type="text/javascript"></script>
  <!-- countdown -->
  <script src="$_pathPrefix/js/vendor/countdown.js" type="text/javascript"></script>
  <!-- simpleParallax -->
  <script src="$_pathPrefix/js/vendor/simpleParallax.min.js" type="text/javascript"></script>
  <!-- waypoints -->
  <script src="$_pathPrefix/js/vendor/waypoints.min.js" type="text/javascript"></script>
  <!-- counterup -->
  <script src="$_pathPrefix/js/vendor/jquery.counterup.min.js" type="text/javascript"></script>
  <!-- charming -->
  <script src="$_pathPrefix/js/vendor/charming.min.js" type="text/javascript"></script>
  <!-- imagesloaded -->
  <script src="$_pathPrefix/js/vendor/imagesloaded.pkgd.min.js" type="text/javascript"></script>
  <!-- BX-Slider -->
  <script src="$_pathPrefix/js/vendor/jquery.bxslider.min.js" type="text/javascript"></script>
  <!-- Sharer -->
  <script src="$_pathPrefix/js/vendor/sharer.js" type="text/javascript"></script>
  <!-- sticky -->
  <script src="$_pathPrefix/js/vendor/sticky.min.js" type="text/javascript"></script>
  <!-- Aos -->
  <script src="$_pathPrefix/js/vendor/aos.js" type="text/javascript"></script>
  <!-- main file -->
  <script src="$_pathPrefix/js/main.js" type="text/javascript"></script>
   

  $additionalScripts

  <style>
.c-orange {
     color: $primaryColor !important;
          }
.c-orange2 {
     color: $primaryColor !important;
          }
.nav-pills .nav-link.active .txt_feat span{
     color: $primaryColor !important;
          }

.banner_app_three .button_app .btn_with_ico {
     background-color: $primaryColor !important;
          }
.bg-orange2 {
     background-color: $primaryColor !important;
          }
.download_section_app {
     background-color: $primaryColor !important;
          }
.serv_app .amo_pic {
     background-color: ${primaryColor}30 !important;
          }
.feature_demo2 .app_mobile:before {
     background-color: ${primaryColor}30 !important;
          }

</style>

</body>

</html>
''';
  }
}
