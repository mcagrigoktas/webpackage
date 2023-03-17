part of 'z_fullsite.dart';

class NavBar1 extends Section {
  String iconUrl;
  String siteName;
  final String? sectionId;
  List<NavigatePageItem> itemList;
  final String buttonText;
  final Function(dynamic, dynamic)? buttonOnPressed;
  NavBar1({
    this.iconUrl = '$_pathPrefix/img/logo.svg',
    this.siteName = '',
    required this.itemList,
    this.sectionId,
    this.buttonText = 'Sign In',
    this.buttonOnPressed,
  });

  String getSubItems(NavigatePageItem item) {
    String result = '';
    item.subItems!.forEach((element) {
      final blankText = element.blank ? 'target="_blank"' : '';
      result += '''
 <li><a class="dropdown-item" href="${element.url}" $blankText >${element.name}</a></li>
''';
    });

    return result;
  }

  String getNavItems() {
    String result = '';
    itemList.forEach((element) {
      if (element.subItems == null) {
        final blankText = element.blank ? 'target="_blank"' : '';
        result += '''
               <li class="nav-item">
                  <a class="nav-link" href="${element.url}" >${element.name} $blankText</a>
                </li>
''';
      } else {
        result += '''
 <li class="nav-item dropdown dropdown-hover">
                  <a class="nav-link dropdown-toggle dropdown_menu" href="#" id="navbarDropdown" role="button"
                    data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                    ${element.name}
                    <div class="icon_arrow">
                      <i class="tio chevron_right"></i>
                    </div>

                  </a>
                  <div class="dropdown-menu single-drop sm_dropdown" aria-labelledby="navbarDropdown">
                    <ul class="dropdown_menu_nav">
${getSubItems(element)}
                    </ul>

                  </div>
                </li>''';
      }
    });

    return result;
  }

  @override
  String getSectionId() => sectionId == null ? '' : 'id="$sectionId"';

  void setFunction() {
    if (buttonOnPressed != null) {
      Future.delayed(const Duration(seconds: 2)).then((value) {
        return js.context.callMethod('JDataFunctionInitialize', [buttonOnPressed]);
      });
    }
  }

  @override
  String getHtml() {
    setFunction();
    return '''
 <header class="header-nav-center no_blur active-orange2"  id="myNavbar">
        <div class="container">
          <nav class="navbar navbar-expand-lg navbar-light px-sm-0">
            <a class="navbar-brand" href="#">
              <img class="logo" src="$iconUrl" alt="logo" />
              $siteName
            </a>

            <button class="navbar-toggler menu ripplemenu" type="button" data-toggle="collapse"
              data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false"
              aria-label="Toggle navigation">
              <svg viewBox="0 0 64 48">
                <path d="M19,15 L45,15 C70,15 58,-2 49.0177126,7 L19,37"></path>
                <path d="M19,24 L45,24 C61.2371586,24 57,49 41,33 L32,24"></path>
                <path d="M45,33 L19,33 C-8,33 6,-2 22,14 L45,37"></path>
              </svg>
            </button>

            <div class="collapse navbar-collapse" id="navbarSupportedContent">
              <ul class="navbar-nav mx-auto nav-pills">
               ${getNavItems()}
              </ul>
              <div class="nav_account">
                <a href="javascript:window.parent.JDataFunctionCall();" class="btn btn_sm_primary bg-white opacity-1 c-orange2 border-0 rounded-pill">
                  $buttonText
                </a>
              </div>
            </div>
          </nav>
        </div>
      </header> 

''';
  }
}
