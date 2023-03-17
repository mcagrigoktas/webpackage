part of 'z_fullsite.dart';

class Bolum3 extends Section {
  final String title;
  final String subTitle;
  final String? sectionId;
  final List<Bolum3Item> itemList;
  Bolum3({
    this.title = 'PROJECT UP HOME',
    this.subTitle = 'A large selection of houses in the south of Ukraine, call, always happy to help with the choice of your dreams',
    this.sectionId,
    this.itemList = const [],
  });

  String getItems() {
    String result = '';
    itemList.forEach((element) {
      result += '''
<div class="proj swiper-slide">
                          <div class="img_proj jarallax rn_surface" style="background: url(&quot;${element.img}&quot;)"></div>
                          <div class="info_proj lax" data-lax-preset="zoomIn-0.9"><span>
                              <div class="flaticon-full-size"></div><i data-hover="${element.text1}">${element.text1}</i></span><span class="price_proj"><i data-hover="${element.text2}">${element.text2}</i></span></div>
                          <div class="i_proj"><a href="/build/single_project.html">
                              <h3>${element.title}</h3></a>
                            <p>${element.subTitle}</p><a class="button_small" href="/build/single_project.html">Read More</a>
                          </div>
                        </div>
''';
    });
    return result;
  }

  @override
  String getHtml() {
    return '''

 <section class="projects_b jarallax" style="background-image: url($_pathPrefix/img/bg_home_black.png)"  ${getSectionId()}>
    <div class="container">
            <div class="head_block">
              <h2 class="lax" data-lax-preset_large="zoomIn-0.9">$title</h2>
              <div class="line_title lax" data-lax-preset_large="zoomIn-0.7">
               <img src="icons/icon.png" width="21px" height="21px" >
              </div>
              <p class="lax" data-lax-preset_large="fadeInOut-10 crazy-10">$subTitle</p>
            </div>
      <div class="slider_global">
        <div class="swiper-container">
          <div class="projects_blocks swiper-wrapper">           
                        ${getItems()}
          </div>
        </div>
        <div class="swiper-pagination"></div>
        <div class="swiper_buttons_n">
          <div class="swiper-button-next"></div>
          <div class="swiper-button-prev"></div>
        </div>
      </div>
    </div>
  </section>
  

''';
  }

  @override
  String getSectionId() => sectionId == null ? '' : 'id="$sectionId"';
}

class Bolum3Item {
  final String text1;
  final String text2;
  final String title;
  final String subTitle;
  final String img;

  Bolum3Item({
    this.img = 'https://via.placeholder.com/1920x1080',
    this.text1 = '400m2',
    this.text2 = '1500 000 \$',
    this.title = 'Two-storey house with a terrace',
    this.subTitle = 'The two-storey house with a large spacious terrace has a simple but very unique design.',
  });
}
