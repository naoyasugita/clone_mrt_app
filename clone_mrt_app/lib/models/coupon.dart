class BusinessHours {
  final String since;
  final String until;

  BusinessHours({
    this.since,
    this.until,
  });

  String toString() {
    return "${this.since}〜${this.until}";
  }
}

class Shop {
  final String name;
  final String address;
  final String tel;
  final BusinessHours businessHours;
  final String holiday;
  final String parking;
  final String siteUrl;
  final String image;

  Shop({
    this.name,
    this.address,
    this.tel,
    this.businessHours,
    this.holiday,
    this.parking,
    this.siteUrl,
    this.image,
  });
}

class Coupon {
  final String name;
  final String message;
  final String expirationDate;
  final Shop shop;

  Coupon({
    this.name,
    this.message,
    this.expirationDate,
    this.shop,
  });
}

List<Coupon> couponList = [
  Coupon(
    name: "赤鶏もも炭火焼き（小）もちかえりプレゼント",
    message: "店内ご飲食、テイクアウトご注文の方のみ\n※何度でも使用できます",
    expirationDate: "2021年3月31日",
    shop: Shop(
      name: "[宮崎市]地鶏炭火焼き　粋仙",
      address: "宮崎市広島2丁目11番3号",
      tel: "0985-23-1588",
      businessHours: BusinessHours(since: "17:00", until: "23:00"),
      holiday: "日曜日",
      parking: "なし（目の前にPあり）",
      siteUrl: "https://www.suisen-jidori.com",
      image: imagePath,
    ),
  ),
  Coupon(
    name: "生かき、日本酒サービス！！",
    message: "生かき1個サービス、\n本日の日本酒一杯サービス\n※何度でも使用できます",
    expirationDate: "2021年3月31日",
    shop: Shop(
      name: "[宮崎市]囲炉裏炉端焼き いろとりどり",
      address: "宮崎市中央通り7-25　第10吉野ビル1F",
      tel: "0985-23-2330",
      businessHours: BusinessHours(since: "17:00", until: "翌1:00"),
      holiday: "不定休",
      parking: "なし",
      siteUrl: "",
      image: imagePath,
    ),
  ),
];

String imagePath = "assets/dummy_shop_image.png";
