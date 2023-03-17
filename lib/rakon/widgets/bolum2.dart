part of 'z_fullsite.dart';

class Bolum2 extends Section {
  ///3 adet yolllamalisin
  final List<Bolum2Item> itemList;
  final String buttonText;
  final String buttonHoverText;
  final String? sectionId;
  Bolum2({required this.itemList, this.buttonText = 'Let\'s go 💪', this.buttonHoverText = 'Start Now 💪', this.sectionId});

  @override
  String getHtml() {
    return '''

<section class="services_section service_four padding-t-4" ${getSectionId()} >
          <div class="container">
            <div class="row justify-content-center text-center">
              <div class="col-md-4 item mx-auto">
                <div class="items_serv sevice_block" data-aos="fade-up" data-aos-delay="100">
                  <div class="icon--top" style="background: radial-gradient(circle at center, transparent, ${itemList[0].hexColor}50);">
                    <i class="${itemList[0].icon}" style="color: ${itemList[0].hexColor}"></i>

                  </div>
                  <div class="txt">
                    <h3>${itemList[0].title}</h3>
                    <p>
                      ${itemList[0].subTitle}
                    </p>
                  </div>
                </div>
              </div>
            </div>
            <div class="row justify-content-center text-center">
              <div class="col-md-4 item">
                <div class="items_serv sevice_block" data-aos="fade-up" data-aos-delay="0">
                  <div class="icon--top" style="background: radial-gradient(circle at center, transparent, ${itemList[1].hexColor}50);">
                    <i class="${itemList[1].icon}" style="color: ${itemList[1].hexColor}"></i>
                  </div>
                  <div class="txt">
                    <h3>${itemList[1].title}</h3>
                    <p>
                      ${itemList[1].subTitle}
                    </p>
                  </div>
                </div>
              </div>
              <div class="col-md-4 col-lg-3 item my-md-auto order-3 order-md-0">
                <div data-aos="fade-up" data-aos-delay="100">
                  <button type="button"
                    class="btn btn_md_primary sweep_letter bg-orange2 c-white sweep_top rounded-pill">
                    <div class="inside_item">
                      <span data-hover="$buttonHoverText">$buttonText</span>
                    </div>
                  </button>
                </div>
              </div>
              
              <div class="col-md-4 item">
                <div class="items_serv sevice_block" data-aos="fade-up" data-aos-delay="200">
                  <div class="icon--top" style="background: radial-gradient(circle at center, transparent, ${itemList[2].hexColor}50);">
                  <i class="${itemList[2].icon}" style="color: ${itemList[2].hexColor}"></i>
                  </div>
                  <div class="txt">
                    <h3>${itemList[2].title}</h3>
                    <p>${itemList[2].subTitle}</p>
                  </div>
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

class Bolum2Item {
  final String title;
  final String subTitle;

  /// Font awesome iconlari konulabilir.
  /// <i class="fa-solid fa-photo-film"></i>
  /// bu icon icin sadece fa-solid fa-photo-film
  /// burasini gonder.
  final String icon;

  ///Orn: #ff1245
  final String hexColor;
  Bolum2Item({
    this.title = 'Learn. Track. Improve.',
    this.subTitle = 'Keeping a food diary helps you understand your habits and increases your likelihood of hitting your goals.',
    this.icon = 'fa-solid fa-photo-film',
    this.hexColor = '#ff1245',
  });
}
