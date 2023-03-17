part of 'z_fullsite.dart';

class Bolum6 extends Section {
  final String title;
  final String subTitle;

  ///<span class="flaticon-painting-tool"></span> burasi icin
  final String icon;

  final String? sectionId;
  Bolum6({
    this.title = 'WE’ ARE HIRRING',
    this.subTitle = 'A large selection of houses in the south of Ukraine, call, always happy to help with the choice of your dreams',
    this.icon = 'flaticon-painting-tool',
    this.sectionId,
  });

  @override
  String getHtml() {
    return '''
<section class="blocks_act jarallax" style="background-image: url(assets/img/bg_home_black_03.jpg)"  ${getSectionId()}>
    <div class="container">
      <div class="row">
        <div class="head_block_left col-12 col-lg-6"><span class="$icon"></span>
          <div class="b_d">
            <h2>$title</h2>
            <p>$subTitle</p>
          </div>
        </div>
        <div class="head_block_right col-12 col-lg-6"><a class="button_medium" href="#">Contact Now</a></div>
      </div>
    </div>
  </section>

''';
  }

  @override
  String getSectionId() => sectionId == null ? '' : 'id="$sectionId"';
}
