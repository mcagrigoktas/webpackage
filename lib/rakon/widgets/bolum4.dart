part of 'z_fullsite.dart';

///[document/images/bolum2.png]
class Bolum4 extends Section {
  final String accentTextInTitle;
  final String title;
  final String imgPath;
  final String? sectionId;

  /// 4 adet yollamalisiin
  final List<Bolum4Item> itemList;

  Bolum4({
    this.title = 'Branded Mobile App Features',
    this.accentTextInTitle = 'Branded',
    this.imgPath = '$_pathPrefix/img/app/fitness.png',
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
        <section class="services_section service_four fitures_Appfitness padding-t-15"  ${getSectionId()}>
          <div class="container">
            <div class="row justify-content-center text-center">
              <div class="col-lg-6">
                <div class="title_sections">
                  <h2 class="font-s-60 font-w-700">${getTitle()}</h2>
                </div>
              </div>
            </div>

            <div class="features_bb">
              <div class="row">
                <div class="col-lg-7 margin-t-5">
                  <div class="row">
                    <div class="col-md-6 col-lg-6 item">
                      <div class="items_serv sevice_block" data-aos="fade-up" data-aos-delay="0">
                  <div class="icon--top" style="background: radial-gradient(circle at center, transparent, ${itemList[0].hexColor}50);">
                           <i class="${itemList[0].icon}" style="color: ${itemList[0].hexColor}"></i>
                        </div>
                        <div class="txt">
                          <h3>${itemList[0].title}</h3>
                          <p>
                        ${itemList[0].subTitle}   </p>
                        </div>
                      </div>
                    </div>
                    <div class="col-md-6 col-lg-6 item">
                      <div class="items_serv sevice_block" data-aos="fade-up" data-aos-delay="100">
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
                    <div class="col-md-6 col-lg-6 item">
                      <div class="items_serv sevice_block" data-aos="fade-up" data-aos-delay="200">
                  <div class="icon--top" style="background: radial-gradient(circle at center, transparent, ${itemList[2].hexColor}50);">
                       <i class="${itemList[2].icon}" style="color: ${itemList[2].hexColor}"></i>

                        </div>
                        <div class="txt">
                          <h3>${itemList[2].title}</h3>
                          <p>
                           ${itemList[2].subTitle}
                          </p>
                        </div>
                      </div>
                    </div>
                    <div class="col-md-6 col-lg-6 item">
                      <div class="items_serv sevice_block" data-aos="fade-up" data-aos-delay="300">
                  <div class="icon--top" style="background: radial-gradient(circle at center, transparent, ${itemList[3].hexColor}50);">
                  <i class="${itemList[3].icon}" style="color: ${itemList[3].hexColor}"></i>

                        </div>
                        <div class="txt">
                          <h3>${itemList[3].title}</h3>
                          <p>
${itemList[3].subTitle}
                          </p>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
              <div class="Image_fitness">
                <img src="$imgPath" alt="">
              </div>
            </div>
          </div>
        </section>

''';
  }
}

class Bolum4Item {
  final String title;
  final String subTitle;

  /// Font awesome iconlari konulabilir.
  /// <i class="fa-solid fa-photo-film"></i>
  /// bu icon icin sadece fa-solid fa-photo-film
  /// burasini gonder.
  final String icon;

  ///Orn: #ff1245
  final String hexColor;
  Bolum4Item({
    this.title = 'Learn. Track. Improve.',
    this.subTitle = 'Keeping a food diary helps you understand your habits and increases your likelihood of hitting your goals.',
    this.icon = 'fa-solid fa-photo-film',
    this.hexColor = '#ff1245',
  });
}
