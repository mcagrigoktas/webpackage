// ignore_for_file: avoid_web_libraries_in_flutter

import 'dart:html' as html;
import 'dart:math';
import 'dart:ui' as ui;

import 'package:flutter/widgets.dart';

import '../../utils/section.dart';
import '../widgets/z_fullsite.dart';

class UphomeWebSiteMain extends StatefulWidget {
  final List<Section> itemList;
  final Section navBar;
  final String primaryColor;
  final String splashLogoUrl;
  UphomeWebSiteMain({
    required this.itemList,
    required this.navBar,
    required this.primaryColor,
    required this.splashLogoUrl,
  });

  @override
  State<UphomeWebSiteMain> createState() => _UphomeWebSiteMainState();
}

class _UphomeWebSiteMainState extends State<UphomeWebSiteMain> {
  late String key = 'WebSiteKey${Random().nextInt(1000000)}';

  @override
  void initState() {
    var element = html.IFrameElement()
      ..srcdoc = UphomeWeb.getHTMLStrings(navBar: widget.navBar, itemList: widget.itemList, primaryColor: widget.primaryColor, splashLogoUrl: widget.splashLogoUrl)
      ..style.width = '100%'
      // ..src = 'https://www.mandyholding.web.app'
      ..style.height = '100%'
      ..style.border = 'none';
    // ignore: undefined_prefixed_name
    ui.platformViewRegistry.registerViewFactory('webview$key', (int viewId) => element);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return HtmlElementView(viewType: 'webview$key');
  }
}
