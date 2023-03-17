part of 'z_fullsite.dart';

class NavBar extends Section {
  String iconUrl;

  /// Style 0 yada Style 1
  Style style;

  ///Yan style da kullanilmiyo
  String siteName;
  final String? sectionId;
  List<NavigatePageItem> itemList;
  final String phoneText;
  NavBar({
    this.iconUrl = '$_pathPrefix/img/icons/sprite.svg#logo_s',
    this.siteName = '',
    required this.itemList,
    this.sectionId,
    this.phoneText = '+ 123 456 789 09',
    this.style = Style.style1,
  });

  String getSubItems(NavigatePageItem item) {
    String result = '';
    item.subItems!.forEach((element) {
      final blankText = element.blank ? 'target="_blank"' : '';
      result += '''
<a href="${element.url}" $blankText>${element.name}</a>
''';
    });

    return result;
  }

  String getStyleConfig() {
    return style == Style.style1 ? 'left_menu' : 'container';
  }

  String getSiteName() {
    return style == Style.style2 ? '<span>$siteName</span>' : '<span>$siteName</span>';
  }

  String getNavItems() {
    String result = '';
    itemList.forEach((element) {
      if (element.subItems == null) {
        final blankText = element.blank ? 'target="_blank"' : '';
        result += '''
             <li><a href="${element.url}" $blankText>${element.name}</a></li>
''';
      } else {
        result += '''
<li class="active"><a href="index.html">${element.name}<i class="fas fa-chevron-down"></i></a>
            <div class="dropdown-menu">${getSubItems(element)}</div>
          </li>
                ''';
      }
    });

    return result;
  }

  @override
  String getSectionId() => sectionId == null ? '' : 'id="$sectionId"';

  @override
  String getHtml() {
    return '''
<nav class="${getStyleConfig()} navbar navbar-expand-xl"  ${getSectionId()}>

      <div class="logo">
        <svg>
          <use xlink:href="$_pathPrefix/img/icons/sprite.svg#logo_s"></use>
        </svg>
        ${getSiteName()}
        
      </div>
     
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarToggleExternalContent" aria-controls="navbarToggleExternalContent" aria-expanded="false" aria-label="Toggle navigation"><span class="fas fa-bars fa-1x"></span></button>
     
      <div class="menu_b collapse navbar-collapse" id="navbarToggleExternalContent">
      
        <div class="navbar-nav">
      
           ${getNavItems()}
        </div>
      <div class="other-nav">
       <!-- Diger itemler icin
            <li class="other_nav"><a class="shop_icon"><i class="fas fa-shopping-cart"></i><span>0</span></a><a><i class="fas fa-user"></i></a></li>--->
          <div class="phone_num">$phoneText</div>
        </div> 
      </div>
  </nav>

''';
  }
}
