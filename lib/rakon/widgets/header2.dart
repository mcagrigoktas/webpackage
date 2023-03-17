part of 'z_fullsite.dart';

class Header2 extends Section {
  final String accentTextInTitle;
  final String title;
  final String content;
  final String accentTextInContent;
  final String buttonText;
  final String phoneImage;
  final String otherImage;
  final String? sectionId;

  Header2({
    this.title = 'Save Big On Every Order. Join Rakon.',
    this.accentTextInTitle = 'Join Rakon.',
    this.content = 'Rakon. free deliveries. Reduced fees on eligible orders. Exclusive deals. Try Postmates Rakon now for free, cancel anytime.',
    this.accentTextInContent = 'free',
    this.buttonText = 'Try it free',
    this.phoneImage = '$_pathPrefix/img/app/c_app.svg',
    this.otherImage = '$_pathPrefix/img/app/user.svg',
    this.sectionId,
  });

  String getTitle() {
    return title.replaceAll(accentTextInTitle, '<span class="c-orange2">$accentTextInTitle</span>');
  }

  String getContent() {
    return content.replaceAll(accentTextInContent, '<span class="c-orange2">$accentTextInContent</span>');
  }

  @override
  String getHtml() {
    return '''

 <section class="demo_1 banner_section banner_demo8" ${getSectionId()}>
          <div class="container">
            <div class="row">
              <div class="col-md-8 col-lg-5 order-2 order-lg-1">
                <div class="banner_title">
                  <h1>
                   ${getTitle()}
                  </h1>
                  <p>
                    ${getContent()}
                  </p>
                  <div class="subscribe_phone">
                    <div class="row">
                      <div class="col-md-8">
                        <div class="form-group">
                          <input type="text" class="form-control rounded-8" placeholder="Enter your phone number" />
                        </div>
                        <div class="button--click">
                          <button type="button" class="btn btn_app btn_xl_primary scale c-gradient">
                            Get the app
                          </button>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
              <div class="col-lg-7 mx-auto order-1 order-lg-1">
                <div class="ill_appMobile">
                  <img class="ill_app" src="$phoneImage" />
                  <img class="ill_user" src="$otherImage" />
                  <a href="#" class="btn btn_lg_primary effect-letter try_it bg-gold c-dark rounded-8">$buttonText</a>
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
