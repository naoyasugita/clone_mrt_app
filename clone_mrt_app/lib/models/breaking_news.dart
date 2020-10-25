import 'package:flutter/material.dart';

enum NewsCategpryType {
  Caution,
  Info,
  Earthquake,
  News,
}

class BreakinngNewsCategoty {
  final NewsCategpryType categpryType;
  // String categoryName;

  BreakinngNewsCategoty(this.categpryType);

  IconData toIcon() {
    switch (this.categpryType) {
      case NewsCategpryType.Caution:
        return Icons.warning;
      case NewsCategpryType.Info:
        return Icons.info;
      case NewsCategpryType.Earthquake:
        return Icons.public;
      case NewsCategpryType.News:
        return Icons.fiber_new;
      default:
        return Icons.arrow_forward;
    }
  }

  // String toString() {
  //   switch (this.categpryType) {
  //     case NewsCategpryType.Caution:
  //       return "警報・注意報";
  //     case NewsCategpryType.Info:
  //       return "";
  //     case NewsCategpryType.Earthquake:
  //       return "震源・震度情報";
  //     case NewsCategpryType.News:
  //       return "ニュース速報";
  //     default:
  //       return "";
  //   }
  // }
}

class BreakingNewsDatatime {
  final String datetime;

  BreakingNewsDatatime(this.datetime);

  String getMonthDay() {
    return this.datetime.split(" ")[0];
  }

  String getHourMinutes() {
    return this.datetime.split(" ")[1];
  }
}

class BreakingNewsModel {
  final String title;
  final BreakinngNewsCategoty categpry;
  final BreakingNewsDatatime datetime;
  final String content;

  BreakingNewsModel({this.title, this.categpry, this.datetime, this.content});
}

List<BreakingNewsModel> breakingNewsList = [
  BreakingNewsModel(
    title: shortTitle,
    categpry: BreakinngNewsCategoty(NewsCategpryType.Info),
    datetime: BreakingNewsDatatime("10月20日(月) 18:30"),
    content: contentText,
  ),
  BreakingNewsModel(
    title: shortTitle,
    categpry: BreakinngNewsCategoty(NewsCategpryType.Info),
    datetime: BreakingNewsDatatime("10月16日(金) 11:30"),
    content: shortTitle,
  ),
  BreakingNewsModel(
    title: "震源・震度情報",
    categpry: BreakinngNewsCategoty(NewsCategpryType.Earthquake),
    datetime: BreakingNewsDatatime("10月14日(水) 10:01"),
    content: contentText,
  ),
  BreakingNewsModel(
    title: "警報・注意報",
    categpry: BreakinngNewsCategoty(NewsCategpryType.Caution),
    datetime: BreakingNewsDatatime("10月12日(月) 20:51"),
    content: contentText,
  ),
  BreakingNewsModel(
    title: "ニュース速報",
    categpry: BreakinngNewsCategoty(NewsCategpryType.News),
    datetime: BreakingNewsDatatime("10月11日(日) 13:00"),
    content: contentText,
  ),
];

String contentText =
    "親譲りの無鉄砲で子供の時から損ばかりしている。小学校に居る時分学校の二階から飛び降りて一週間程腰を抜かした事がある。なぜそんな無闇（むやみ）をしたと聞く人があるかもしれぬ。別段深い理由でもない。";

String longTitle = "テストテストテストテストテストテストテストテストテストテストテストテストテストテストテスト";

String shortTitle = "テストテストテスト";
