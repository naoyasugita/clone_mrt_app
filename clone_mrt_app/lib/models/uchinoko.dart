class Uchinoko {
  final String title;
  final String content;
  final String thumbnailPath;
  final String siteUrl;

  Uchinoko({
    this.title,
    this.content,
    this.thumbnailPath,
    this.siteUrl,
  });
}

List<Uchinoko> uchinokoList = [
  Uchinoko(
      title: "ねこ",
      thumbnailPath: "assets/dummy_cat.png",
      content: contentText,
      siteUrl: "https://mrt.jp/special/uchinoko/"),
  Uchinoko(
      title: "いぬ",
      thumbnailPath: "assets/dummy_dog.png",
      content: contentText,
      siteUrl: "https://mrt.jp/special/uchinoko/"),
  Uchinoko(
      title: "ねこねこ",
      thumbnailPath: "assets/dummy_cat_43.png",
      content: contentText,
      siteUrl: "https://mrt.jp/special/uchinoko/"),
  Uchinoko(
      title: "CAT",
      thumbnailPath: "assets/dummy_cat_11.png",
      content: contentText,
      siteUrl: "https://mrt.jp/special/uchinoko/"),
];

String contentText =
    "親譲りの無鉄砲で小供の時から損ばかりしている。小学校に居る時分学校の二階から飛び降りて一週間ほど腰を抜かした事がある。なぜそんな無闇をしたと聞く人があるかも知れぬ。別段深い理由でもない。新築の二階から首を出していたら、同級生の一人が冗談に、いくら威張っても、そこから飛び降りる事は出来まい。弱虫やーい。と囃したからである。小使に負ぶさって帰って来た時、おやじが大きな眼をして二階ぐらいから飛び降りて腰を抜かす奴があるかと云ったから、この次は抜かさずに飛んで見せますと答えた。（青空文庫より）";

class UchinokoHeaderModel {
  final String title;
  final String imagePath;
  final String url;

  UchinokoHeaderModel({
    this.title,
    this.imagePath,
    this.url,
  });
}

List<UchinokoHeaderModel> uchinokoHeaderList = [
  UchinokoHeaderModel(
    title: "うちのこひなたっこ",
    imagePath: "assets/dummy_broadcast.png",
    url: "https://mrt.jp/",
  ),
  UchinokoHeaderModel(
    title: "宮崎動物愛護センター",
    imagePath: "assets/dummy_broadcast.png",
    url: "https://mrt.jp/",
  ),
];
