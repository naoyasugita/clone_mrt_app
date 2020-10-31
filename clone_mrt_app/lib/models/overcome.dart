class OvercomeModel {
  final String title;
  final String imagePath;
  final String url;

  OvercomeModel({
    this.title,
    this.imagePath,
    this.url,
  });
}

List<OvercomeModel> overcomeModelList = [
  OvercomeModel(
    title: "コロナ",
    imagePath: "assets/dummy_broadcast.png",
    url: "https://mrt.jp/special/coronavirus",
  ),
  OvercomeModel(
    title: "新しい生活様式",
    imagePath: "assets/dummy_broadcast.png",
    url: "https://app.mrt.jp/contents/newlifestyle/newlifestyle.html",
  ),
  OvercomeModel(
    title: "COCOA",
    imagePath: "assets/dummy_broadcast.png",
    url: "https://www.mhlw.go.jp/stf/seisakunitsuite/bunya/cocoa_00138.html",
  ),
  OvercomeModel(
    title: "つなごうみやざき",
    imagePath: "assets/dummy_broadcast.png",
    url: "https://mrt.jp/event/?id=tsunagomiyazaki",
  ),
  OvercomeModel(
    title: "感知るみやざき",
    imagePath: "assets/dummy_broadcast.png",
    url: "https://www.kanko-miyazaki.jp/kanjirumiyazaki/",
  ),
  OvercomeModel(
    title: "TAKEOUT",
    imagePath: "assets/dummy_broadcast.png",
    url: "https://www.miyazaki-city.tourism.or.jp/feature/takeout-and-delivery",
  ),
  OvercomeModel(
    title: "みやざきとともに",
    imagePath: "assets/dummy_broadcast.png",
    url: "https://mrt.jp/special/miyazaki_to_tomoni/",
  ),
  OvercomeModel(
    title: "県内の感染状況(警戒レベル)及び注意すべき県外の地域",
    imagePath: "assets/dummy_broadcast.png",
    url:
        "https://www.pref.miyazaki.lg.jp/kansensho-taisaku/covid-19/yobo/hassei.html",
  ),
  OvercomeModel(
    title: "宮崎県における感染者状況一覧",
    imagePath: "assets/dummy_broadcast.png",
    url:
        "https://www.pref.miyazaki.lg.jp/kansensho-taisaku/covid-19/hassei_list.html",
  ),
];

class TsunagoModel {
  final String title;
  final String content;
  final String thumbnailPath;
  final String youtubeUrl;

  TsunagoModel({
    this.title,
    this.content,
    this.thumbnailPath,
    this.youtubeUrl,
  });
}

List<TsunagoModel> tsunagouList = [
  TsunagoModel(
    title: "#つなごうみやざきno.04",
    thumbnailPath: thumbnailPath,
    content: contentText,
    youtubeUrl: youtubeUrl,
  ),
  TsunagoModel(
    title: "#つなごうみやざきno.03",
    thumbnailPath: thumbnailPath,
    content: contentText,
    youtubeUrl: youtubeUrl,
  ),
  TsunagoModel(
    title: "#つなごうみやざきno.02",
    thumbnailPath: thumbnailPath,
    content: contentText,
    youtubeUrl: youtubeUrl,
  ),
  TsunagoModel(
    title: "#つなごうみやざきno.01",
    thumbnailPath: thumbnailPath,
    content: contentText,
    youtubeUrl: youtubeUrl,
  ),
];

String contentText =
    "親譲りの無鉄砲で小供の時から損ばかりしている。小学校に居る時分学校の二階から飛び降りて一週間ほど腰を抜かした事がある。なぜそんな無闇をしたと聞く人があるかも知れぬ。別段深い理由でもない。新築の二階から首を出していたら、同級生の一人が冗談に、いくら威張っても、そこから飛び降りる事は出来まい。弱虫やーい。と囃したからである。小使に負ぶさって帰って来た時、おやじが大きな眼をして二階ぐらいから飛び降りて腰を抜かす奴があるかと云ったから、この次は抜かさずに飛んで見せますと答えた。（青空文庫より）";

String youtubeUrl = "https://www.youtube.com/user/MRTmiyazaki";

String thumbnailPath = "assets/dummy_image.png";
