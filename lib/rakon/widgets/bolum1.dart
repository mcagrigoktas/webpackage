part of 'z_fullsite.dart';

class Bolum1 extends Section {
  final String accentInMiniTitle;
  final String miniTitle;
  final String title;
  final String subTitle;
  final String? appStoreUrl;
  final String? googlePlayUrl;
  final String? sectionId;

  /// 6 adet olabilir
  final List<Bolum1Item> itemList;
  final String mainImage;
  Bolum1({
    this.miniTitle = 'Rakon. Products',
    this.accentInMiniTitle = 'Products',
    this.title = 'Start your experience with Rakon.',
    this.subTitle = 'Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.',
    this.sectionId,
    this.appStoreUrl,
    this.googlePlayUrl,
    required this.itemList,
    this.mainImage = '$_pathPrefix/img/app/app.png',
  });

  String getMiniTitle() {
    return miniTitle.replaceAll(accentInMiniTitle, '<span class="c-orange2">$accentInMiniTitle</span>');
  }

  String getMarketTile() {
    if (appStoreUrl == null && googlePlayUrl == null) return '';
    return '''
<div class="z_apps">
                    <a href="$appStoreUrl" target="_blank" class="item__app bg_apple mb-3 mb-sm-0">
                      <div class="media">
                        <i class="tio apple icon"></i>
                        <div class="media-body">
                          <div class="txt">
                            <span>Available on the</span>
                            <h4>App Store</h4>
                          </div>
                        </div>
                      </div>
                    </a>
                    <a href="$googlePlayUrl" target="_blank" class="item__app bg_google">
                      <div class="media">
                        <img class="icon" src="$_pathPrefix/img/icons/google-play.svg" />
                        <div class="media-body">
                          <div class="txt">
                            <span>Get it on</span>
                            <h4>Google Play</h4>
                          </div>
                        </div>
                      </div>
                    </a>
                  </div>
''';
  }

  @override
  String getHtml() {
    return '''

 <section class="feature_app feature_demo2 margin-t-12 padding-t-12 padding-b-12" ${getSectionId()}>
          <div class="container">
            <div class="row justify-content-md-center">
              <div class="col-md-10 col-lg-6 text-center">
                <div class="title_sections">
                  <div class="before_title">
                    ${getMiniTitle()}
                  </div>
                  <h2>$title</h2>
                  <p>
                  $subTitle
                  </p>
                  ${getMarketTile()}
                </div>
              </div>
            </div>
            <div class="row d-flex">
              <div class="col-md-6 col-lg-4 d-none d-sm-block order-1 order-sm-1">
                <div class="item_box item_one">
                  <div class="img_bbo">
                    <img src="${itemList[0].imgUrl}" />
                  </div>
                  <h3>${itemList[0].title}</h3>
                  <p class="c-blue">
                   ${itemList[0].subTitle}
                  </p>
                </div>
                <div class="item_box item_two">
                  <div class="img_bbo">
                    <img src="${itemList[1].imgUrl}" />
                  </div>
                  <h3>${itemList[1].title}</h3>
                  <p class="c-green">
                     ${itemList[1].subTitle}
                  </p>
                </div>
                <div class="item_box item_three">
                  <div class="img_bbo">
                    <img src="${itemList[2].imgUrl}" />
                  </div>
                  <h3>${itemList[2].title}</h3>
                  <p class="c-red">
                     ${itemList[2].subTitle}
                  </p>
                </div>
              </div>
              <div class="col-md-6 col-lg-4 order-3 order-sm-2" data-aos="fade-up" data-aos-delay="0">
                <div class="app_mobile">
                  <img class="apoo" src="$mainImage" />
                </div>
              </div>
              <div class="col-md-6 col-lg-4 d-none d-sm-block order-2 order-sm-3">
                <div class="item_box item_four">
                  <div class="img_bbo">
                    <img src="${itemList[3].imgUrl}" />
                  </div>
                  <h3>${itemList[3].title}</h3>
                  <p class="c-aquamarine">
                    ${itemList[3].subTitle}
                  </p>
                </div>
                <div class="item_box item_five">
                  <div class="img_bbo">
                    <img src="${itemList[4].imgUrl}" />
                  </div>
                  <h3>${itemList[4].title}</h3>
                  <p class="c-blue">
                     ${itemList[4].subTitle}
                  </p>
                </div>
                <div class="item_box item_six">
                  <div class="img_bbo">
                    <img src="${itemList[5].imgUrl}" />
                  </div>
                  <h3>${itemList[5].title}</h3>
                  <p class="c-orange">
                     ${itemList[5].subTitle}
                  </p>
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

class Bolum1Item {
  final String imgUrl;
  final String title;
  final String subTitle;
  Bolum1Item({this.title = 'Fried Egg Sandwich', this.imgUrl = '$_pathPrefix/img/app/04.png', this.subTitle = '25'});
}
