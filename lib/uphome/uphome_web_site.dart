import 'package:flutter/material.dart';

import '../utils/section.dart';
import 'main_widget/web.dart';
export 'widgets/z_fullsite.dart';

///[https://preview.themeforest.net/item/rakon-html-landing-page-templates/full_screen_preview/27849521?_ga=2.127252299.713182625.1678830655-545599480.1678493880]
//? Asagidaki klavuzu kullan
/// Herhangi bir dart fonksiyonu cagrilacaksa bu script maine eklenmeli
/// <script>
///    var JDataFunction;
///   var JDataFunctionInitialize = function (fun) {
///     JDataFunction = fun;
///   };
///   var JDataFunctionCall = function () {
///    JDataFunction();
///  };
///</script>
/// fonksiyon esitlemesi yapilmali
/// Future.delayed(const Duration(seconds: 2)).then((value) {
//   return js.context.callMethod('JDataFunctionInitialize', [login]);
// });
// href="javascript:window.parent.JDataFunctionCall();" son olarak JDataFunctionCall cagrilabilir.

class UphomeWebSite extends StatelessWidget {
  final List<Section> itemList;
  final Section navBar;
  final String primaryColor;
  final String splashLogoUrl;
  UphomeWebSite({
    required this.itemList,
    required this.navBar,
    this.primaryColor = '#fd7028',
    this.splashLogoUrl = '#fd7028',
  });
  @override
  Widget build(BuildContext context) {
    return UphomeWebSiteMain(
      itemList: itemList,
      navBar: navBar,
      primaryColor: primaryColor,
      splashLogoUrl: 'assets/packages/webpackage/assets/files/img/logo.svg',
    );
  }
}
