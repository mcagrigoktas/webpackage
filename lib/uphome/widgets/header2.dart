part of 'z_fullsite.dart';

class Header2 extends Section {
  final List<Header2Item> itemList;
  final String? sectionId;

  final String mainImage;
  Header2({
    required this.itemList,
    this.sectionId,
    this.mainImage = '$_pathPrefix/img/app/app.png',
  });

  String getItems() {
    String result = '';
    itemList.forEach((element) {
      result += '''
<div class="sld_f">
              <div class="text_s"><span>${element.miniTitle}</span>
                <h2>${element.title}</h2><a class="button_medium" href="#">View projects</a>
              </div>
              <div class="sld_f_s">
                <div class="slider" style="background-image:url(&quot;${element.imgUrl}&quot;)"></div>
              </div>
            </div>
''';
    });

    return result;
  }

  @override
  String getHtml() {
    return '''
 <section  ${getSectionId()}>
        <div class="slider_f">
    <div class="slide_t">
            ${getItems()}
            <span class="b_scroll"><i>
                         <img src="icons/icon.png" width="21px" height="21px" >
</i></span>
      <div class="arrows">
        <div class="arrow_l"></div>
        <div class="arrow_r"></div>
      </div>
    </div>
  </div>
        </section>
''';
  }

  @override
  String getSectionId() => sectionId == null ? '' : 'id="$sectionId"';
}

class Header2Item {
  final String title;
  final String miniTitle;
  final String imgUrl;
  Header2Item({
    this.title = 'Two Storey Modern Flat',
    this.miniTitle = 'Choice around the world',
    this.imgUrl = 'https://via.placeholder.com/1920x1080',
  });
}
