enum ShopType {
  Shop,
  Gourmet,
}

class ShopTypeModel {
  final ShopType shopCategory;

  ShopTypeModel(this.shopCategory);

  String toJapanese() {
    switch (this.shopCategory) {
      case ShopType.Shop:
        return "【ショップ】";
      case ShopType.Gourmet:
        return "【グルメ】";
      default:
        return "";
    }
  }
}

class ProgramTitleAndDate {
  final String programTitle;
  final String datetime;
  ProgramTitleAndDate({
    this.programTitle,
    this.datetime,
  });

  String toString() {
    return "[${this.programTitle} ${this.datetime}放送]";
  }
}

class ShopIntroductionModel {
  final String shopName;
  final String address;
  final ProgramTitleAndDate source;
  final ShopTypeModel shopType;
  final String imagePath;
  final String url;

  ShopIntroductionModel({
    this.shopName,
    this.address,
    this.source,
    this.shopType,
    this.imagePath,
    this.url,
  });
}

List<ShopIntroductionModel> shopIntroductionList = [
  ShopIntroductionModel(
    shopName: "お店の名前",
    imagePath: imagePath,
    address: "宮崎市〇〇町1-1-1",
    source: ProgramTitleAndDate(
      programTitle: "わけもん！！",
      datetime: "10/10",
    ),
    shopType: ShopTypeModel(ShopType.Shop),
    url: url,
  ),
  ShopIntroductionModel(
    shopName: "お店の名前",
    imagePath: imagePath,
    address: "宮崎市〇〇町1-1-1",
    source: ProgramTitleAndDate(
      programTitle: "わけもん！！",
      datetime: "10/10",
    ),
    shopType: ShopTypeModel(ShopType.Gourmet),
    url: url,
  ),
  ShopIntroductionModel(
    shopName: "お店の名前",
    imagePath: imagePath,
    address: "宮崎市〇〇町1-1-1",
    source: ProgramTitleAndDate(
      programTitle: "わけもん！！",
      datetime: "10/10",
    ),
    shopType: ShopTypeModel(ShopType.Gourmet),
    url: url,
  ),
  ShopIntroductionModel(
    shopName: "お店の名前",
    imagePath: imagePath,
    address: "宮崎市〇〇町1-1-1",
    source: ProgramTitleAndDate(
      programTitle: "わけもん！！",
      datetime: "10/10",
    ),
    shopType: ShopTypeModel(ShopType.Shop),
    url: url,
  ),
];

String imagePath = "assets/dummy_image.png";

String url = "https://mrt.jp/";
