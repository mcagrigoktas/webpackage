part of 'z_fullsite.dart';

class Header1 extends Section {
  final List<Header1Item> itemList;
  final String? sectionId;
  final String videoSrc;
  final bool autoPlay;
  final bool muted;
  final bool control;

  Header1({
    this.videoSrc = 'https://player.vimeo.com/video/171139017?background=1&amp;autoplay=1&amp;loop=1&amp;byline=0&amp;title=0',
    required this.itemList,
    this.sectionId,
    this.autoPlay = false,
    this.muted = false,
    this.control = false,
  });

  String getItems() {
    String result = '';
    itemList.forEach((element) {
      result += '''
 <div class="sld_f">
              <div class="text_s"><span>${element.miniTitle}</span>
                <h2>${element.title}</h2><a class="button_medium" href="#">View projects</a>
              </div>
            </div>
''';
    });

    return result;
  }
  // <iframe src="$videoSrc" width="640" height="360" frameborder="0" allow="autoplay; fullscreen" allowfullscreen="allowfullscreen"></iframe>

  String _autoPlay() => autoPlay ? 'autoplay' : '';
  String _muted() => muted ? 'muted' : '';
  String _control() => muted ? 'control' : '';

  @override
  String getHtml() {
    if (autoPlay && !additionalScriptsCaches.contains('Header1')) {
      additionalScriptsCaches.add('Header1');
      additionalScripts += '''
<script>
    const video8bv = document.getElementById("video8bv");
    setTimeout(() => {
        video8bv.play();
    }, 300);
</script>
''';
    }

    return '''

 <section  ${getSectionId()}>
         <div class="slider_f">
    <div class="slide_t">
            ${getItems()}
      <div class="video_block" >
     
      <video  id="video8bv" style="width: 100%;height: 100%; object-fit: cover;"  ${_muted()} ${_control()}>
  <source src="$videoSrc" type="video/mp4">
</video>
      </div><span class="b_scroll"></span>
      <div class="arrows">
        <div class="arrow_l"></div>
        <div class="arrow_r"></div>
      </div>
    </div>
  </div>
        </section>

''';
  }

  @override
  String getSectionId() => sectionId == null ? '' : 'id="$sectionId"';
}

class Header1Item {
  final String title;
  final String miniTitle;
  Header1Item({this.title = 'Two Storey Modern Flat', this.miniTitle = 'Choice around the world'});
}
