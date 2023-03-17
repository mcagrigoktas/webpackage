part of 'z_fullsite.dart';

///Bu ekranin alt ekranina telefon sarkacak sekilde ayarlanmistir. Altina koyacagin ekrana dikkat et padding-t-12 ekleyebilirsin. Footer koyarsan guzel calisir
class Bolum6 extends Section {
  final String title;
  final String buttonText;
  final String imgPath;
  final String? appStoreLink;
  final String? googlePlayLink;
  final String? sectionId;
  Bolum6({
    this.title = 'Get it now for free',
    this.buttonText = 'Get the app',
    this.imgPath = '$_pathPrefix/img/app/002.png',
    this.appStoreLink,
    this.googlePlayLink,
    this.sectionId,
  });
  @override
  String getSectionId() => sectionId == null ? '' : 'id="$sectionId"';
  @override
  String getHtml() {
    return '''

  <section class="download_section_app padding-t-10"  ${getSectionId()}>
          <div class="container">
            <div class="row justify-content-center text-center">
              <div class="col-lg-4">
                <div class="title_sections margin-b-6">
                  <h2 class="font-s-60 c-white font-w-700">$title
                  </h2>
                </div>
              </div>
              <div class="col-12">
                <div class="button_apoo">
                  <div class="app-mobile-btn">
                    <a href="$appStoreLink" target="_blank" class="btn btn_apple rounded-pill">
                      <div class="media">
                        <div class="txt">
                          <span>Download on the</span>
                          <p>Apple Store</p>
                        </div>
                        <div class="media-body my-auto">
                          <div class="icoon">
                            <i class="tio apple"></i>
                          </div>
                        </div>
                      </div>
                    </a>
                    <a href="$googlePlayLink" target="_blank" class="btn btn_google rounded-pill">
                      <div class="media">
                        <div class="txt">
                          <span>Download on the</span>
                          <p>Google Play</p>
                        </div>
                        <div class="media-body my-auto">
                          <div class="icoon">
                            <svg id="google-play" xmlns="http://www.w3.org/2000/svg" width="16.78" height="18.977"
                              viewBox="0 0 16.78 18.977">
                              <path id="Path_1617" data-name="Path 1617"
                                d="M262.218,169.194,259,167.338l-4.4,3.29,4.4,3.29,3.225-1.862a1.67,1.67,0,0,0-.011-2.861Z"
                                transform="translate(-246.252 -161.129)" fill="#ff9100" />
                              <path id="Path_1618" data-name="Path 1618"
                                d="M39.063,21.784l-3.9,5.009L30.1,30.783a1.691,1.691,0,0,1-.5-1.2V13.96a1.691,1.691,0,0,1,.5-1.2l5.065,4.017Z"
                                transform="translate(-29.601 -12.285)" fill="#25d9f8" />
                              <path id="Path_1619" data-name="Path 1619" d="M255.714,218.735l-1.113,1.436V217.3Z"
                                transform="translate(-246.252 -209.236)" fill="#00c0f1" />
                              <path id="Path_1620" data-name="Path 1620"
                                d="M55.358,6.2l-3.3,3.3L43.1.474a2.51,2.51,0,0,1,.345-.256,1.648,1.648,0,0,1,1.692.033l5.811,3.415Z"
                                transform="translate(-42.6 0)" fill="#7fe881" />
                              <path id="Path_1621" data-name="Path 1621"
                                d="M259.009,101.338l-3.3,3.3L254.6,103.52V98.8Z" transform="translate(-246.252 -95.134)"
                                fill="#5bc980" />
                              <path id="Path_1622" data-name="Path 1622"
                                d="M55.358,259.3l-4.408,2.538-5.822,3.4a1.7,1.7,0,0,1-.857.245,1.728,1.728,0,0,1-.824-.223A2.516,2.516,0,0,1,43.1,265l8.961-9Z"
                                transform="translate(-42.6 -246.501)" fill="#ff637b" />
                              <path id="Path_1623" data-name="Path 1623"
                                d="M259.009,259.3l-4.408,2.538v-4.72L255.714,256Z"
                                transform="translate(-246.252 -246.501)" fill="#e63950" />
                            </svg>

                          </div>
                        </div>
                      </div>
                    </a>
                  </div>
                </div>
              </div>
            </div>
            <div class="row justify-content-center text-center">
              <div class="col-md-6 col-lg-4">
                <div class="mockupapp_footer">
                  <img src="$imgPath" alt="">
                </div>
              </div>
            </div>
          </div>
        </section>


''';
  }
}
