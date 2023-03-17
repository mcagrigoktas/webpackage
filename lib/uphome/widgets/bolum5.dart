part of 'z_fullsite.dart';

class Bolum5 extends Section {
  final String title;
  final String subTitle;
  final String videUrl;

  final String? sectionId;
  Bolum5({
    this.title = 'Our mission is design & develop',
    this.subTitle = 'A large selection of houses in the south of Ukraine, call, always happy to help with the choice of your dreams',
    this.videUrl = 'https://vimeo.com/188654636',
    this.sectionId,
  });

  @override
  String getHtml() {
    return '''

<section class="video_b"  ${getSectionId()}>
    <div class="info_video lax"><span class="flaticon-play-button" data-fancybox="data-fancybox" href="$videUrl" data-width="1340" data-height="760"></span>
      <h1>$title</h1>
      <p>$subTitle</p>
    </div>
    <div class="video_block">
      <iframe src="$videUrl?background=1&amp;autoplay=1&amp;loop=1&amp;byline=0&amp;title=0" frameborder="0" webkitallowfullscreen="webkitallowfullscreen" mozallowfullscreen="mozallowfullscreen" allowfullscreen="allowfullscreen"></iframe>
    </div>
  </section>
  

''';
  }

  @override
  String getSectionId() => sectionId == null ? '' : 'id="$sectionId"';
}
