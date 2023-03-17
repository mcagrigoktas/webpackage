String additionalScripts = '';
List<String> additionalScriptsCaches = [];

abstract class Section {
  String getHtml();
  String getSectionId();
}

class EmptySection extends Section {
  @override
  String getHtml() => '';

  @override
  String getSectionId() => '';
}

class SocialModel {
  final String url;
  final SocialMediaType socialMediaType;
  SocialModel({required this.socialMediaType, required this.url});
}

enum SocialMediaType {
  facebook('tio facebook', 'color-facebook'),
  instagram('tio instagram', 'color-instagram'),
  linkedin('tio linkedin', 'color-linkedin'),
  skype('tio skype', 'color-skype'),
  tiktok('tio tik_tok', 'color-tik_tok'),
  twitter('tio twitter', 'color-twitter'),
  youtube('tio youtube', 'color-youtube');

  final String logo;
  final String color;
  const SocialMediaType(this.logo, this.color);
}

class NavigatePageItem {
  final String? url;
  final String name;
  final List<NavigatePageItem>? subItems;
  final bool blank;
  NavigatePageItem({required this.name, this.url, this.subItems, this.blank = false});
}

enum Style {
  style1,
  style2,
}
