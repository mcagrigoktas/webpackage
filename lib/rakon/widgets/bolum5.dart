part of 'z_fullsite.dart';

///[document/images/bolum1.png]
class Bolum5 extends Section {
  final String accentTextInTitle;
  final String title;
  final String? sectionId;

  ///4 adet yollamalisin
  final List<Bolum5Item> itemList;

  Bolum5({
    this.accentTextInTitle = 'What',
    this.title = 'What our users have to say',
    required this.itemList,
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

  <section class="reviews_app_random"  ${getSectionId()}>

          <div class="container">
            <div class="body_text">
              <div class="row justify-content-center text-center">
                <div class="col-lg-8">
                  <div class="title_sections mb-0">
                    <h2 class="font-s-60 font-w-700 margin-b-4">${getTitle()}</h2>
                 <!--  Eger buton koymak istiyorsan burayi acmalisin
                   <button type="button" class="btn btn_md_primary sweep_letter sweep_top rounded-pill btn_review">
                      <div class="inside_item">
                        <span data-hover="Let's go 💪">More Reviews</span>
                      </div>
                    </button>-->
                  </div>
                </div>
              </div>
            </div>

            <div class="emoji_shap">
              <img src="$_pathPrefix/img/app/1f44d.png" alt="">
              <img src="$_pathPrefix/img/app/1f60d.png" alt="">
              <img src="$_pathPrefix/img/app/1f4aa.png" alt="">
              <img src="$_pathPrefix/img/app/1f600.png" alt="">
            </div>


            <div class="col-md-3 item_review review_one">
              <p class="content">
                "${itemList[0].comment}"
              </p>
              <div class="footer_content">
                <div class="media user_oo">
                  <img src="$_pathPrefix/img/app/app_store.png" alt="">
                  <div class="media-body">
                    <h4>${itemList[0].userName}</h4>
                    <span>App Store</span>
                  </div>
                </div>
                <div class="rated">
                  <i class="tio star"></i>
                  <i class="tio star"></i>
                  <i class="tio star"></i>
                  <i class="tio star"></i>
                  <i class="tio star"></i>
                </div>
              </div>
            </div>

            <div class="col-md-3 item_review review_two">
              <p class="content">
                "${itemList[1].comment}"
              </p>
              <div class="footer_content">
                <div class="media user_oo">
                  <img src="$_pathPrefix/img/app/app_store.png" alt="">
                  <div class="media-body">
                    <h4>${itemList[1].userName}</h4>
                    <span>App Store</span>
                  </div>
                </div>
                <div class="rated">
                  <i class="tio star"></i>
                  <i class="tio star"></i>
                  <i class="tio star"></i>
                  <i class="tio star"></i>
                  <i class="tio star"></i>
                </div>
              </div>
            </div>

            <div class="col-md-3 item_review review_three">
              <p class="content">
                "${itemList[2].comment}"
              </p>
              <div class="footer_content">
                <div class="media user_oo">
                  <img src="$_pathPrefix/img/app/googleplay.png" alt="">
                  <div class="media-body">
                    <h4>${itemList[2].userName}</h4>
                    <span>Google Play</span>
                  </div>
                </div>
                <div class="rated">
                  <i class="tio star"></i>
                  <i class="tio star"></i>
                  <i class="tio star"></i>
                  <i class="tio star"></i>
                  <i class="tio star"></i>
                </div>
              </div>
            </div>

            <div class="col-md-3 item_review review_four">
              <p class="content">
                 "${itemList[3].comment}"
              </p>
              <div class="footer_content">
                <div class="media user_oo">
                  <img src="$_pathPrefix/img/app/googleplay.png" alt="">
                  <div class="media-body">
                    <h4>${itemList[3].userName}</h4>
                    <span>Google Play</span>
                  </div>
                </div>
                <div class="rated">
                  <i class="tio star"></i>
                  <i class="tio star"></i>
                  <i class="tio star"></i>
                  <i class="tio star"></i>
                  <i class="tio star"></i>
                </div>
              </div>
            </div>

          </div>

        </section>


''';
  }
}

class Bolum5Item {
  final String comment;
  final String userName;

  Bolum5Item({
    this.userName = 'Kanbei',
    this.comment = 'Just super :) We have a better feeling now when our daughter is on her way home alone...accurate to within a few meters. Great app therefore also 5 stars',
  });
}
