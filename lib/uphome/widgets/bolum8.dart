part of 'z_fullsite.dart';

class Bolum8 extends Section {
  final String title;
  final String accentInTitle;
  final String img;
  final String userImage;
  final String name;
  final String? sectionId;
  final String? signatureImage;
  Bolum8({
    this.title = '"WE\'RE MAKING OFFICE CHANGES & INTRODUCING OUR NEW OFFICE LOREM IPSUM DOLOR, SIT AMET CONSECTETUR"',
    this.accentInTitle = 'MAKING OFFICE',
    this.sectionId,
    this.signatureImage,
    this.img = 'https://via.placeholder.com/1920x1080',
    this.userImage = 'https://via.placeholder.com/100x100',
    this.name = 'John Doe',
  });

  String getTitle() {
    return title.replaceAll(accentInTitle, '<i>accentInTitle </i>');
  }

  String getSignatureImage() {
    return signatureImage == null ? '' : '<img class="signature" src="$signatureImage"/>';
  }

  @override
  String getHtml() {
    return '''
  <section class="block_standart_width_full reviews"  ${getSectionId()}>
<div class="row">
      <div class="img_full_w_block rn_surface col-12 col-lg-6"><img src="$img"/></div>
      <div class="info_w_block col-12 col-lg-6">
        <div class="b_t quote_b">
          <div class="reiting"><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i></div>
          <h2>"${getTitle()}"</h2><span><img src="$userImage" alt=""/>$name${getSignatureImage()}</span>
        </div>
      </div>
    </div>
     </section>
''';
  }

  @override
  String getSectionId() => sectionId == null ? '' : 'id="$sectionId"';
}
