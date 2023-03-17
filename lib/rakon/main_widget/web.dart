// ignore_for_file: avoid_web_libraries_in_flutter

import 'dart:html' as html;
import 'dart:math';
import 'dart:ui' as ui;

import 'package:flutter/widgets.dart';

import '../../utils/section.dart';
import '../widgets/z_fullsite.dart';

class RakonWebSiteMain extends StatefulWidget {
  final List<Section> itemList;
  final Section navBar;
  final String primaryColor;
  final String splashLogoUrl;
  RakonWebSiteMain({
    required this.itemList,
    required this.navBar,
    required this.primaryColor,
    required this.splashLogoUrl,
  });

  @override
  State<RakonWebSiteMain> createState() => _RakonWebSiteMainState();
}

class _RakonWebSiteMainState extends State<RakonWebSiteMain> {
  late String key = 'WebSiteKey${Random().nextInt(1000000)}';

  @override
  void initState() {
    var element = html.IFrameElement()
      ..srcdoc = RakonWeb.getHTMLStrings(navBar: widget.navBar, itemList: widget.itemList, primaryColor: widget.primaryColor, splashLogoUrl: widget.splashLogoUrl)
      ..style.width = '100%'
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
