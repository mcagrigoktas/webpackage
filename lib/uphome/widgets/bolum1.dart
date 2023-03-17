part of 'z_fullsite.dart';

class Bolum1 extends Section {
  final String title;
  final String subTitle;
  final String imgText;
  final String img1;
  final String img2;

  final String? sectionId;
  Bolum1({
    this.title = 'Our mission is design & develop',
    this.subTitle = 'A large selection of houses in the south of Ukraine, call, always happy to help with the choice of your dreams',
    this.imgText = '',
    this.img1 = 'https://via.placeholder.com/585x500',
    this.img2 = 'https://via.placeholder.com/585x500',
    this.sectionId,
  });

  String getImageText() {
    return imgText.isEmpty ? '' : '<div class="desc_s">$imgText</div>';
  }

  @override
  String getHtml() {
    return '''

<section class="container welcome lax" data-lax-preset_large="eager-200" ${getSectionId()}>
    <div class="row">
      <div class="wel_f col-12 col-lg-6">
        <div class="b_t">
          <h2>$title</h2>
          <p>$subTitle</p><a class="button_medium" href="#">About Us</a>
        </div>
      </div>
      <div class="slder_b rn_surface col-12 col-lg-6">
        ${getImageText()}
        <div class="img_anm cocoen"><img src="$img1"/><img src="$img2"/></div>
      </div>
    </div>
  </section>
  

''';
  }

  @override
  String getSectionId() => sectionId == null ? '' : 'id="$sectionId"';
}
