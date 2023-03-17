part of 'z_fullsite.dart';

class Bolum7 extends Section {
  final String? sectionId;

  /// 6 tane olmak zorunda
  final List<Bolum7Item> itemList;
  Bolum7({
    this.sectionId,
    this.itemList = const [],
  });

  String getItems() {
    String result = '';
    itemList.forEach((element) {
      result += '''
<figure class="jarallax">
                  <figcaption>
                    <h3>${element.title}</h3>
                    <p>${element.subTitle}</p><i class="fas fa-arrow-right"></i>
                  </figcaption><a class="img_par rn_surface" data-fancybox="gallery" href="${element.img}"><img class="jarallax-img" src="${element.img}"/></a>
                </figure>
''';
    });
    return result;
  }

  @override
  String getHtml() {
    return '''

 <section class="grid_img"  ${getSectionId()}>
    <div class="container">
            <div class="head_block">
              <h2 class="lax" data-lax-preset_large="zoomIn-0.9">Gallery</h2>
              <div class="line_title lax" data-lax-preset_large="zoomIn-0.7">
                <svg>
                  <use xlink:href="assets/img/icons/sprite.svg#lamp_white_s"></use>
                </svg>
              </div>
              <p class="lax" data-lax-preset_large="fadeInOut-10 crazy-10">A large selection of houses in the south of Ukraine, call, always happy to help with the choice of your dreams</p>
            </div>
      <div class="grid_images">
                
               ${getItems()} 
      </div><a class="button_small" href="/build/gallery.html">View All</a>
    </div>
  </section>
  

''';
  }

  @override
  String getSectionId() => sectionId == null ? '' : 'id="$sectionId"';
}

class Bolum7Item {
  final String title;
  final String subTitle;
  final String img;

  Bolum7Item({
    this.title = 'Title info',
    this.subTitle = 'Lorem ipsum dolor sit amet consectetur adipisicing elit.',
    this.img = 'https://via.placeholder.com/500x1250',
  });
}
