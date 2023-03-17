part of 'z_fullsite.dart';

///Bu ekranin alt ekranina telefon sarkacak sekilde ayarlanmistir. Altina koyacagin ekrana dikkat et. Footer koyarsan guzel calisir
class Footer1 extends Section {
  final String iconPath;
  final String mail;
  final String mailHint;
  final List<SocialModel> socialMediaList;
  final List<NavigatePageItem> otherLinks;
  final String copyrightText;
  final String copyrightAccentText;
  final String copyrightUrl;
  final String? sectionId;
  Footer1({
    this.iconPath = '$_pathPrefix/img/logo.svg',
    this.mail = 'info@mail.com',
    this.socialMediaList = const [],
    this.mailHint = 'Need help? Contact us.',
    this.copyrightText = '© 2023 Elseif. All Right Reseved',
    this.copyrightAccentText = 'Elseif.',
    this.copyrightUrl = '',
    this.otherLinks = const [],
    this.sectionId,
  });

  String getSocialData() {
    String result = '';
    socialMediaList.forEach((element) {
      result += '''
 <a href="${element.url}"  target="_blank" class="btn-social c-white ${element.socialMediaType.color} border-0 mb-0 mr-2">
                <i class="${element.socialMediaType.logo}"></i>
              </a>
''';
    });

    return result;
  }

  String getOtherLinks() {
    String result = '';
    otherLinks.forEach((element) {
      result += '''
<li class="nav-item">
                  <a class="nav-link" href="${element.url}"  target="_blank" >${element.name}</a>
                </li>
''';
    });

    return result;
  }

  String getCopyRight() {
    final text = copyrightText.replaceAll(copyrightAccentText, '<a href="https://themeforest.net/user/orinostu" target="_blank">$copyrightAccentText</a>');

    return '''
<div class="copyright">
                <p>$text</p>
              </div>
''';
  }

  @override
  String getSectionId() => sectionId == null ? '' : 'id="$sectionId"';
  @override
  String getHtml() {
    return '''
  <footer class="sh_footer_email padding-b-8 bg_fitness"  ${getSectionId()}>
        <div class="container">
          <div class="row">
            <div class="col-lg-6">
              <div class="email_logo">
                <div class="media">
                  <a href="mobile-app-2.html" class="brand_logo my-auto">
                    <img src="$iconPath" alt="">
                  </a>
                  <div class="media-body my-auto">
                    <div class="txt">
                      <span>$mailHint</span>
                      <a href="mailto:$mail">
                        $mail
                      </a>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <div class="col-lg-4 ml-auto text-lg-right mt-auto">
              ${getSocialData()}
            </div>
          </div>
          <div class="dividar"></div>
          <div class="row">
            <div class="col-md-5 col-lg-4">
              ${getCopyRight()}
            </div>
            <div class="col-md-7 col-lg-8">
              <ul class="nav justify-content-md-end">
                ${getOtherLinks()}

              </ul>
            </div>
          </div>
        </div>
      </footer>
''';
  }
}
