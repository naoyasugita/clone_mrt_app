class RadioHeaderModel {
  final String title;
  final String imagePath;
  final String url;

  RadioHeaderModel({
    this.title,
    this.imagePath,
    this.url,
  });
}

List<RadioHeaderModel> radioHeaderList = [
  RadioHeaderModel(
    title: "週間番組表",
    imagePath: "assets/dummy_broadcast.png",
    url: "https://mrt.jp/special/coronavirus",
  ),
  RadioHeaderModel(
    title: "COCOKARA",
    imagePath: "assets/dummy_broadcast.png",
    url: "https://app.mrt.jp/contents/newlifestyle/newlifestyle.html",
  ),
  RadioHeaderModel(
    title: "radiko",
    imagePath: "assets/dummy_broadcast.png",
    url: "https://www.mhlw.go.jp/stf/seisakunitsuite/bunya/cocoa_00138.html",
  ),
  RadioHeaderModel(
    title: "ラジオクラウド",
    imagePath: "assets/dummy_broadcast.png",
    url: "https://mrt.jp/event/?id=tsunagomiyazaki",
  ),
];

class RadioProgramModel {
  final String title;
  final String imagePath;
  final String url;
  final String startDate;
  final String personality;

  RadioProgramModel({
    this.title,
    this.imagePath,
    this.url,
    this.startDate,
    this.personality,
  });
}

List<RadioProgramModel> radioProgramList = [
  RadioProgramModel(
    title: "アンクル・マイクのBeautiful\n Morning",
    imagePath: "assets/dummy_broadcast.png",
    url: "https://mrt.jp/special/coronavirus",
    startDate: "月曜〜金曜 あさ7:35〜",
    personality: "アンクル・マイク",
  ),
  RadioProgramModel(
    title: "MRTラジオ 歌のない歌謡曲",
    imagePath: "assets/dummy_broadcast.png",
    url: "https://mrt.jp/special/coronavirus",
    startDate: "月曜〜金曜 あさ7:35〜",
    personality: "宮本佳奈",
  ),
  RadioProgramModel(
    title: "フレッシュAM もぎたてラジオ",
    imagePath: "assets/dummy_broadcast.png",
    url: "https://mrt.jp/special/coronavirus",
    startDate: "月曜〜金曜 午前8:30〜",
    personality: "月・火：粉川真一/高橋みち子\n水〜金：上岡信夫/山田幸子",
  ),
  RadioProgramModel(
    title: "スイッチ♪音タイム",
    imagePath: "assets/dummy_broadcast.png",
    url: "https://mrt.jp/special/coronavirus",
    startDate: "月曜〜金曜 お昼12:00〜",
    personality: "MRTアナウンサーズ",
  ),
  RadioProgramModel(
    title: "GO!GO!ワイド",
    imagePath: "assets/dummy_broadcast.png",
    url: "https://mrt.jp/special/coronavirus",
    startDate: "月曜〜金曜 午後1:00〜",
    personality: "月・火：伊賀ゆきひろ/川島恵　水：瀬藤亮太/坂井涼子　木・金：川野武文/坂井涼子",
  ),
  RadioProgramModel(
    title: "私たちの作文",
    imagePath: "assets/dummy_broadcast.png",
    url: "https://mrt.jp/special/coronavirus",
    startDate: "月曜〜金曜 夕方4:50〜",
    personality: "外種子田結",
  ),
];
