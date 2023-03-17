part of 'z_fullsite.dart';

///[document/images/bolum1.png]
class Header1 extends Section {
  final String accentTextInTitle;
  final String title;
  final String subtitle;
  final String buttonText;
  final String img1Path;
  final String img2Path;
  final String? sectionId;
  Header1({
    this.accentTextInTitle = 'Design',
    this.title = 'Design Your Perfect Day.',
    this.subtitle = 'Get the best of health and fitness, all in one place.',
    this.buttonText = 'Get the app',
    this.img1Path = '$_pathPrefix/img/app/float-1.png',
    this.img2Path = '$_pathPrefix/img/app/float-3.png',
    this.sectionId,
  });

  String getTitle() {
    return title.replaceAll(accentTextInTitle, '<span class="c-orange2">$accentTextInTitle</span>');
  }

  @override
  String getSectionId() => sectionId == null ? '' : 'id="$sectionId"';
  @override
  String getHtml() {
    return '''

 <section class="pt_banner_inner no-before banner_app_two banner_app_three"  ${getSectionId()}>
          <div class="container">
            <div class="row justify-content-center text-center">
              <div class="col-md-8 col-lg-6">
                <div class="banner_title">
                  <h1 class="margin-b-2">${getTitle()}</h1>
                  <p class="c-dark">$subtitle</p>
                </div>
                <div class="button_app padding-t-3">
                  <a href="#Download" class="btn btn_with_ico rounded-pill">
                    <span>$buttonText</span>
                    <i class="tio arrow_drop_down_circle_outlined"></i>
                  </a>
                  <div class="c-gray mt-4">
                    <span class="pr-1">Available on</span>
                    <i class="tio apple align-middle font-s-16"></i>
                    <i class="tio android align-middle font-s-16"></i>
                  </div>
                </div>
              </div>
            </div>
            <div class="mockup_ap">
              <img class="img_top floating-simple" src="$img1Path" alt="">
              <img class="img_bottom floating-simple2" src="$img2Path" alt="">
            </div>
          </div>
        </section>


''';
  }
}
