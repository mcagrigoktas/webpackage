part of 'z_fullsite.dart';

class Bolum9 extends Section {
  final String miniTitle1;
  final String accentMiniTitle1;
  final String? title1;
  final String? count;
  final List<Bolum9Item> itemList;

  /// 7 adet yolla
  final List<String> imgList;
  final String? sectionId;

  Bolum9({
    this.miniTitle1 = 'Clients Trust',
    this.accentMiniTitle1 = 'Trust',
    this.title1 = 'Trust us and feel free to try our service',
    this.count = '185000',
    required this.itemList,
    this.sectionId,
    required this.imgList,
  });

  String getMiniTitle1() {
    return miniTitle1.replaceAll(accentMiniTitle1, '<span class="c-orange2">$accentMiniTitle1</span>');
  }

  String getItemList() {
    String result = '';
    itemList.forEach((element) {
      result += ''''
 <div class="col-md-2">
                        <div class="it__em">
                          <div class="icon">
                            <img src="${element.imgUrl}" />
                          </div>
                          <div class="info_txt">
                            <h4>${element.countText}</h4>
                            <p>
                              ${element.title}
                            </p>
                          </div>
                        </div>
                      </div>
                      ''';
    });

    return result;
  }

  String getImageList() {
    String result = '';
    itemList.forEach((element) {
      result += ''''
 <img src="$element" />
                      ''';
    });

    return result;
  }

  @override
  String getHtml() {
    if (!additionalScriptsCaches.contains('Bolum9')) {
      additionalScriptsCaches.add('Bolum9');
      additionalScripts += '''
 <script>
          jQuery(document).on('ready', function(){
       var scene = new ScrollMagic.Scene({
            triggerElement: "#triggerBlur",
          })
          // trigger animation by adding a css class
          .setClassToggle("#Statistic", "animetext")
          .addIndicators({
            name: "1 - add a class",
          }) // add indicators (requires plugin)
          .addTo(controller);
      });
        </script>
''';
    }

    return '''

  <section class="padding-t-12 section_state state_demo2" id="Statistic">
          <!-- particle background -->
          <div id="particles-js"></div>
          <div class="container">
            <div id="triggerBlur"></div>
            <div class="row justify-content-center text-center">
              <div class="col-md-8 col-lg-6">
                <div class="title_sections">
                  <div class="before_title">
                    ${getMiniTitle1()}
                  </div>
                  <h2>Trust us and feel free to try our service</h2>
                </div>
              </div>
            </div>
            <div class="row">
              <div class="col-12">
                <div class="bb_qgency_state">
                  <div class="number_state">
                    <div class="txt">
                      185 000
                    </div>
                  </div>
                  <div class="blur_item"></div>
                  <div class="content_state">
                    <div class="row justify-content-md-center">
                      ${getItemList()}
                    </div>
                  </div>
                  <div class="users_profile">
                    ${getImageList()}
                  </div>
                 <!--    <div class="link_state">
                    <a href="#" class="btn btn_xl_primary btn_join bg-gold c-dark effect-letter rounded-8 mb-3 mb-sm-0">
                      Join The Agency</a>
                    <a href="#" class="btn btn_xl_primary btn_touch rounded-8">
                      <img src="../../assets/img/icons/1f607.png" />
                      Get a touch
                    </a>
                  </div> -->
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

class Bolum9Item {
  final String countText;
  final String title;
  final String imgUrl;
  Bolum9Item({
    this.countText = '25 000',
    this.title = 'Followers from all countries of the world',
    this.imgUrl = '$_pathPrefix/img/icons/1f647-2640.png',
  });
}
