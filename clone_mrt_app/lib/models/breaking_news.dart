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
    datetime: BreakingNewsDatatime("10月11日(月) 18:30"),
    content: contentText,
  ),
  BreakingNewsModel(
    title: shortTitle,
    categpry: BreakinngNewsCategoty(NewsCategpryType.Info),
    datetime: BreakingNewsDatatime("10月11日(月) 18:30"),
    content: contentText,
  ),
  BreakingNewsModel(
    title: "震源・震度情報",
    categpry: BreakinngNewsCategoty(NewsCategpryType.Earthquake),
    datetime: BreakingNewsDatatime("10月11日(月) 18:30"),
    content: contentText,
  ),
  BreakingNewsModel(
    title: "警報・注意報",
    categpry: BreakinngNewsCategoty(NewsCategpryType.Caution),
    datetime: BreakingNewsDatatime("10月11日(月) 18:30"),
    content: contentText,
  ),
  BreakingNewsModel(
    title: "ニュース速報",
    categpry: BreakinngNewsCategoty(NewsCategpryType.News),
    datetime: BreakingNewsDatatime("10月11日(月) 18:30"),
    content: contentText,
  ),
];

String contentText =
    "親譲りの無鉄砲で小供の時から損ばかりしている。親譲りの無鉄砲で小供の時から損ばかりしている。親譲りの無鉄砲で小供の時から損ばかりしている。";

String longTitle = "テストテストテストテストテストテストテストテストテストテストテストテストテストテストテスト";

String shortTitle = "テストテストテスト";
