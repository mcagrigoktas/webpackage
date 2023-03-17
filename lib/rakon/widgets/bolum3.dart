part of 'z_fullsite.dart';

///[document/images/bolum2.png]
class Bolum3 extends Section {
  final String accentTextInTitle;
  final String title;

  ///3 adet yollamalisin
  final List<Bolum3Item> itemList;
  final String? sectionId;
  Bolum3({
    this.title = 'Fitness starts with what you eat.',
    this.accentTextInTitle = 'Fitness',
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
 <section class="features_app_fitness padding-t-12 margin-b-3"  ${getSectionId()}>
          <div class="container">
            <div class="row justify-content-center text-center">
              <div class="col-lg-6">
                <div class="title_sections">
                  <h2 class="font-s-60 font-w-700">${getTitle()}</h2>
                </div>
              </div>
            </div>
            <div class="body_features">
              <div class="row justify-content-center">
                <div class="col-md-6 col-lg-4 mb-5 mb-md-0">
                  <div class="moc_app">
                    <div class="tab-content" id="v-pills-tabContent">
                      <div class="tab-pane fade" id="v-pills-screenOne" role="tabpanel"
                        aria-labelledby="v-pills-screenOne-tab">
                        <img class="slide-in-bottom" src="${itemList[0].imgPath}" alt="">
                      </div>
                      <div class="tab-pane fade show active" id="v-pills-screenTwo" role="tabpanel"
                        aria-labelledby="v-pills-screenTwo-tab">
                        <img class="slide-in-bottom" src="${itemList[1].imgPath}" alt="">
                      </div>
                      <div class="tab-pane fade" id="v-pills-screenThree" role="tabpanel"
                        aria-labelledby="v-pills-screenThree-tab">
                        <img class="slide-in-bottom" src="${itemList[2].imgPath}" alt="">
                      </div>
                    </div>

                  </div>

                </div>
                <div class="col-md-6 col-lg-6 offset-lg-1">
                  <div class="nav flex-column nav-pills" id="v-pills-tab" role="tablist" aria-orientation="vertical">
                    <a class="nav-link" id="v-pills-screenOne-tab" data-toggle="pill" href="#v-pills-screenOne"
                      role="tab" aria-controls="v-pills-screenOne" aria-selected="false">
                      <div class="row">
                        <div class="col-lg-8">
                          <div class="txt_feat">
                            <span>${itemList[0].header}</span>
                            <h3>${itemList[0].title}</h3>
                          </div>
                        </div>
                      </div>
                    </a>
                    <a class="nav-link active" id="v-pills-screenTwo-tab" data-toggle="pill" href="#v-pills-screenTwo"
                      role="tab" aria-controls="v-pills-screenTwo" aria-selected="true">
                      <div class="row">
                        <div class="col-lg-8">
                          <div class="txt_feat">
                            <span>${itemList[1].header}</span>
                            <h3>${itemList[1].title}</h3>
                          </div>
                        </div>
                        <div class="col-lg-4 my-auto">
                          <div class="play_vv">
                            <button type="button" class="btn btn_video" data-toggle="modal"
                              data-src="${itemList[1].youtubeVideo}" data-target="#mdllVideo">
                              <div class="scale rounded-circle b play_video no-before no-after">
                                <i class="tio play_outlined"></i>
                              </div>
                            </button>
                            <span class="name_vv">Play Video</span>
                          </div>
                        </div>
                      </div>
                    </a>
                    <a class="nav-link" id="v-pills-screenThree-tab" data-toggle="pill" href="#v-pills-screenThree"
                      role="tab" aria-controls="v-pills-screenThree" aria-selected="false">
                      <div class="row">
                        <div class="col-lg-8">
                          <div class="txt_feat">
                            <span>${itemList[2].header}</span>
                            <h3>${itemList[2].title}</h3>
                          </div>
                        </div>
                      </div>
                    </a>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </section>

''';
  }
}

class Bolum3Item {
  final String header;
  final String title;
  final String imgPath;

  /// Sadece 2. iteme gonderilirse calisir istedigin zaman kodu duzenleyip arttirabilirsin
  final String? youtubeVideo;
  Bolum3Item({
    this.title = 'Beats to boost your productivity.',
    this.header = 'Music For Focus',
    this.imgPath = '$_pathPrefix/img/app/001.png',
    this.youtubeVideo,
  });
}
