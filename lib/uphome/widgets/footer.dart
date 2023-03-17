part of 'z_fullsite.dart';

class Footer extends Section {
  final String copyrightText;
  final String messageTitle;
  final String? sectionId;
  Footer({
    this.copyrightText = '© 2019 Envato Pty Ltd. Trademarks and brands are the property of their respective owners.',
    this.sectionId,
    this.messageTitle = 'Template for Interior Design & Architecture.',
  });

  @override
  String getHtml() {
    return '''

 <footer>
    <div class="container footer_b"  ${getSectionId()}>
      <div class="row">
        <div class="f_m col-12 col-lg-12">
          <p>$messageTitle</p>
          <div class="input_widget_min">
            <input placeholder="Message"/>
            <button><i class="fas fa-share"></i></button>
          </div>
        </div>
      
      </div>
    </div>
    <div class="footer_buttom col-12">
      <div class="container rev_flex">
        <p>$copyrightText</p>
      </div>
    </div>
  </footer>

''';
  }

  @override
  String getSectionId() => sectionId == null ? '' : 'id="$sectionId"';
}
