import 'dart:convert';

import 'package:flutter/services.dart';

import '../../utils/section.dart';

part 'header1.dart';
part 'header2.dart';
part 'bolum1.dart';
part 'bolum2.dart';
part 'bolum3.dart';
part 'bolum4.dart';
part 'bolum5.dart';
part 'bolum6.dart';
part 'bolum7.dart';
part 'bolum8.dart';
part 'bolum9.dart';
part 'footer.dart';
part 'navbar.dart';

const _pathPrefix = "assets/packages/webpackage/assets/uphome/files";

class UphomeWeb {
  UphomeWeb._();

  static Future<String> getHTMLStrings({required String primaryColor, required String splashLogoUrl, required Section navBar, required List<Section> itemList}) async {
    var site = '';
    site += _addDocType();
    site += _addHead();
    site += _addBodyStart();
    site += _addPreLoader();
    site += _addNavBar(navBar);
    site += _addBody(itemList);
    site += await _addBodyEnd();

    return site;
  }

  static String _addDocType() {
    return '<!DOCTYPE html><html lang="en">';
  }

  static _addHead() {
    return '''<head>
    <meta charset="UTF-8"/>
    <title>Index</title>
    <link rel="stylesheet" href="$_pathPrefix/css/libs.min.css"/>
    <link rel="stylesheet" href="$_pathPrefix/css/style.css"/>
    <link rel="apple-touch-icon" sizes="180x180" href="../img/favicons/favicon-180x180.png"/>
    <link rel="icon" type="../image/png" href="assets/img/favicons/favicon-32x32.png" sizes="32x32"/>
    <link rel="icon" type="../image/png" href="assets/img/favicons/favicon-16x16.png" sizes="16x16"/>
    <meta name="theme-color" content="#FF0000"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
  </head>
  </html>
''';
  }

  static _addBodyStart() {
    return '<body id="home"><div id="button_scroll"></div>';
  }

  static _addPreLoader() {
    if (!additionalScriptsCaches.contains('PreLoader')) {
      additionalScriptsCaches.add('PreLoader');
      additionalScripts += '''
<script>
  	var rnPre = \$('#rn-preloader-wrap');
	setTimeout(function() {
			rnPre.addClass('rn-preloaded');
		}, 1500);
		setTimeout(function() {
			rnPre.remove();
		}, 2500);
</script>
''';
    }

    return '''
    <div id="rn-preloader-wrap">
    <div class="rn-preloader-cont">
      <div class="icon_load" title="4">
        <svg version="1.1" id="Layer_1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" width="24px" height="30px" viewBox="0 0 24 30" style="enable-background:new 0 0 50 50;" xml:space="preserve">
          <rect x="0" y="0" width="4" height="10" fill="#333">
            <animateTransform attributeType="xml" attributeName="transform" type="translate" values="0 0; 0 20; 0 0" begin="0" dur="0.6s" repeatCount="indefinite"></animateTransform>
          </rect>
          <rect x="10" y="0" width="4" height="10" fill="#333">
            <animateTransform attributeType="xml" attributeName="transform" type="translate" values="0 0; 0 20; 0 0" begin="0.2s" dur="0.6s" repeatCount="indefinite"></animateTransform>
          </rect>
          <rect x="20" y="0" width="4" height="10" fill="#333">
            <animateTransform attributeType="xml" attributeName="transform" type="translate" values="0 0; 0 20; 0 0" begin="0.4s" dur="0.6s" repeatCount="indefinite"></animateTransform>
          </rect>
        </svg>
      </div>
      <h3>Loading..</h3>
    </div>
  </div>


  
    ''';
  }

  static Future<String> _addBodyEnd() async {
    return '''
<script> ${await getLibsJs()} </script>
<script> ${await getIndexJs()} </script>
 $additionalScripts
</body>
''';
  }

  static String _addBody(List<Section> itemList) {
    return itemList.fold<String>('', (previousValue, element) => previousValue + element.getHtml());
  }

  static String _addNavBar(Section item) {
    return item.getHtml();
  }

  //? Scripts
  static Future<String> getIndexJs() async {
    final langByteData = await rootBundle.load('packages/webpackage/assets/uphome/files/js/index.min.js');
    return utf8.decode(langByteData.buffer.asUint8List());
  }

  static Future<String> getLibsJs() async {
    final langByteData = await rootBundle.load('packages/webpackage/assets/uphome/files/js/libs.min.js');
    return utf8.decode(langByteData.buffer.asUint8List());
  }

  static Future<String> getIndexCss() async {
    final langByteData = await rootBundle.load('packages/webpackage/assets/uphome/files/css/style.css');
    return utf8.decode(langByteData.buffer.asUint8List());
  }

  static Future<String> getLibsCss() async {
    final langByteData = await rootBundle.load('packages/webpackage/assets/uphome/files/css/libs.min.css');
    return utf8.decode(langByteData.buffer.asUint8List());
  }
}
