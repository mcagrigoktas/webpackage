part of 'z_fullsite.dart';

class Bolum7 extends Section {
  final String? sectionId;
  final String? title;
  final List<String> itemList;

  Bolum7({
    this.title = 'Partners',
    this.sectionId,
    this.itemList = const ['$_pathPrefix/img/logos/fitbit.png'],
  });

  String getItems() {
    String result = '';
    itemList.forEach((element) {
      result += '''
<a class="item-client" href="#" target="_blank">
                      <img src="$element" alt="" />
                   
                    </a>
''';
    });

    return result;
  }

  @override
  String getHtml() {
    return '''

<section class="logos_section text-center margin-b-6" ${getSectionId()}>
          <div class="container">
            <div class="row justify-content-center text-center">
              <div class="col-lg-5">
                <div class="title_sections_inner margin-b-5">
                  <h2>$title</h2>
                </div>
              </div>
            </div>
            <div class="row justify-content-md-center">
              <div class="col-md-10">
                <div class="wrapper_logos">
                  <div class="items bxslider">
                    ${getItems()}
                  </div>
                  <div class="logos_masks"></div>
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
