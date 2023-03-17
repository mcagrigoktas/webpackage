part of 'z_fullsite.dart';

class Bolum2 extends Section {
  final String? sectionId;
  final List<Bolum2Item> itemList;
  Bolum2({
    this.sectionId,
    this.itemList = const [],
  });

  String getItems() {
    String result = '';
    itemList.forEach((element) {
      result += '''
<div class="b_num col-12 col-lg-4 col-md-4">
              <div class="num_b">
                <h3>${element.count}</h3><span>${element.countText}</span>
              </div>
              <p>${element.text}</p>
            </div>
''';
    });
    return result;
  }

  @override
  String getHtml() {
    return '''

 <section class="progress_block container"  ${getSectionId()}>
    <div class="row">
            ${getItems()}
    </div>
  </section>
  

''';
  }

  @override
  String getSectionId() => sectionId == null ? '' : 'id="$sectionId"';
}

class Bolum2Item {
  final String count;
  final String countText;
  final String text;

  Bolum2Item({
    this.count = '20K',
    this.countText = 'CLIENTS',
    this.text = 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Tempore nisi aliquid eaque.',
  });
}
