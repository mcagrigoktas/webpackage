part of 'z_fullsite.dart';

class Bolum4 extends Section {
  final String? sectionId;
  final List<Bolum4Item> itemList;
  Bolum4({
    this.sectionId,
    this.itemList = const [],
  });

  String getItems() {
    String result = '';
    itemList.forEach((element) {
      result += '''
<div class="s_icon col-12 col-lg-4"><span class="${element.icon}"></span>
                  <div class="icon_info">
                    <h3>${element.title}</h3>
                    <p>${element.subTitle}</p>
                  </div>
                </div>
''';
    });
    return result;
  }

  @override
  String getHtml() {
    return '''

<section class="icons_block"  ${getSectionId()}>
    <div class="container">
      <div class="row icons_block_f lax" data-lax-preset_large="driftLeft-30 fadeIn-10"> 
               ${getItems()}
      </div>
    </div>
  </section>
  

''';
  }

  @override
  String getSectionId() => sectionId == null ? '' : 'id="$sectionId"';
}

class Bolum4Item {
  final String title;
  final String subTitle;

  ///<span class="flaticon-window"></span> class kismi icin
  final String icon;

  Bolum4Item({
    this.title = 'BRIGHT PROJECTS',
    this.subTitle = 'All our projects have an amazing and bright design, with a beautiful facade and a cozy location.',
    this.icon = 'flaticon-window',
  });
}
