part of 'z_fullsite.dart';

class Bolum9 extends Section {
  final String? sectionId;
  final List<String> itemList;
  Bolum9({
    this.sectionId,
    this.itemList = const ['$_pathPrefix/img/icons/sprite.svg#logo_01_s'],
  });

  String getItems() {
    String result = '';
    itemList.forEach((element) {
      result += '''
<div class="logo_brand">
        <svg>
          <use xlink:href="$element"></use>
        </svg>
      </div>
''';
    });
    return result;
  }

  @override
  String getHtml() {
    return '''

 <section class="blocks_logos container"  ${getSectionId()}>
    <div class="row">
      
     ${getItems()}
    </div>
  </section>
  

''';
  }

  @override
  String getSectionId() => sectionId == null ? '' : 'id="$sectionId"';
}
