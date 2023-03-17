part of 'z_fullsite.dart';

class Bolum8 extends Section {
  final String? sectionId;
  final String? img1Path;
  final String? img2Path;
  final String miniTitle1;
  final String accentMiniTitle1;
  final String? title1;
  final String? subTitle1;
  final String miniTitle2;
  final String accentMiniTitle2;
  final String? title2;
  final String? subTitle2;

  Bolum8({
    this.img1Path = '$_pathPrefix/img/app/s10-ss0.png',
    this.img2Path = '$_pathPrefix/img/app/s10-ss0.png',
    this.sectionId,
    this.miniTitle1 = 'Save Money',
    this.accentMiniTitle1 = 'Money',
    this.title1 = 'Save big on every order. Join Orino.',
    this.subTitle1 = 'Unlimited free deliveries. Reduced fees on eligible orders. Exclusive deals. Try Postmates Unlimited now for free, cancel anytime.',
    this.miniTitle2 = 'Save Money',
    this.accentMiniTitle2 = 'Money',
    this.title2 = 'Save big on every order. Join Orino.',
    this.subTitle2 = 'Unlimited free deliveries. Reduced fees on eligible orders. Exclusive deals. Try Postmates Unlimited now for free, cancel anytime.',
  });

  String getMiniTitle1() {
    return miniTitle1.replaceAll(accentMiniTitle1, '<span class="c-orange2">$accentMiniTitle1</span>');
  }

  String getMiniTitle2() {
    return miniTitle2.replaceAll(accentMiniTitle2, '<span class="c-orange2">$accentMiniTitle2</span>');
  }

  @override
  String getHtml() {
    if (!additionalScriptsCaches.contains('Bolum8')) {
      additionalScriptsCaches.add('Bolum8');
      additionalScripts += '''
 <script>
          jQuery(document).on('ready', function(){
        var tween = TweenMax.fromTo(
          "#animate2",
          3, {
            top: 90,
          }, {
            top: -280,
            repeat: -1,
            yoyo: true,
            ease: Circ.easeInOut,
          }
        );

        // build scene
        var scene = new ScrollMagic.Scene({
            triggerElement: "#trigger2",
            duration: 300,
            offset: 100,
          })
          .setTween(tween)
          .addIndicators({
            name: "loop",
          }) // add indicators (requires plugin)
          .addTo(controller);

       
        // build tween
        var tween = TweenMax.fromTo(
          "#animate3",
          3, {
            top: 90,
          }, {
            top: -280,
            repeat: -1,
            yoyo: true,
            ease: Circ.easeInOut,
          }
        );

        // build scene
        var scene = new ScrollMagic.Scene({
            triggerElement: "#trigger3",
            duration: 300,
            offset: 100,
          })

          .setTween(tween)
          .addIndicators({
            name: "loop",
          }) // add indicators (requires plugin)
          .addTo(controller);
      });
        </script>
''';
    }

    return '''

 <div id="trigger2"></div>
        <!-- Section Service -->
        <section class="serv_app padding-t-12" ${getSectionId()}>
          <div class="container">
            <div class="row justify-content-center">
              <div class="col-lg-5 mb-4 mb-lg-0">
                <div class="amo_pic">
                  <img id="animate2" src="$img1Path" />
                </div>
              </div>
              <div class="col-lg-5 my-auto mx-auto">
                <div class="title_sections mb-0">
                  <div class="before_title">
                    ${getMiniTitle1()}
                  </div>
                  <h2> $title1</h2>
                  <p>
                         $subTitle1
                  </p>
                <!-- Buton koymak istersen ac  <a href="#" class="btn btn_lg_primary effect-letter rounded-8 margin-t-4 bg-gold c-dark">
                    Try it free</a> -->
                </div>
              </div>
            </div>
          </div>
        </section>
        

        <div id="trigger3"></div>
        <!-- Section Service -->
        <section class="serv_app padding-t-12">
          <div class="container">
            <div class="row justify-content-center">
              <div class="col-lg-5 my-auto order-2 order-lg-1">
                <div class="title_sections mb-0">
                  <div class="before_title">
                     ${getMiniTitle2()}
                  </div>
                  <h2> $title2</h2>
                  <p>
                     $subTitle2
                  </p>
                  
                </div>
              </div>
              <div class="col-lg-5 mx-auto mb-4 mb-lg-0 order-1 order-lg-1">
                <div class="amo_pic">
                  <img id="animate3" src="$img2Path" />
                </div>
              </div>
            </div>
          </div>
        </section>
       
       

''';
  }

  @override
  String getSectionId() => sectionId == null ? '' : 'id="$sectionId"';
}
