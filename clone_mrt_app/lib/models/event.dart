import 'package:flutter/material.dart';

enum EventType {
  Music,
  Stage,
  Sport,
  Other,
}

class EventCategory {
  final EventType eventType;

  EventCategory(this.eventType);

  IconData toIcon() {
    switch (this.eventType) {
      case EventType.Music:
        return Icons.music_note;
      case EventType.Stage:
        return Icons.account_balance;
      case EventType.Sport:
        return Icons.directions_run;
      case EventType.Other:
        return Icons.assistant_photo;
      default:
        return Icons.accessibility_new;
    }
  }

  String toCategoryName() {
    switch (this.eventType) {
      case EventType.Music:
        return "音楽";
      case EventType.Stage:
        return "舞台";
      case EventType.Sport:
        return "スポーツ";
      case EventType.Other:
        return "その他";
      default:
        return "";
    }
  }

  Color getBackgroundColor() {
    switch (this.eventType) {
      case EventType.Music:
        return Colors.deepOrangeAccent;
      case EventType.Stage:
        return Colors.purple[300];
      case EventType.Sport:
        return Colors.lightBlue[600];
      case EventType.Other:
        return Colors.lime[800];
      default:
        return Colors.deepOrangeAccent;
    }
  }

  Color getBackgroundIconColor() {
    switch (this.eventType) {
      case EventType.Music:
        return Colors.deepOrangeAccent[400];
      case EventType.Stage:
        return Colors.purple;
      case EventType.Sport:
        return Colors.lightBlue[900];
      case EventType.Other:
        return Colors.lime[900];
      default:
        return Colors.deepOrange;
    }
  }
}

class EventModel {
  final String title;
  final String siteUrl;
  // final EventCategory category;

  EventModel({
    this.title,
    // this.category,
    this.siteUrl,
  });
}

List<EventModel> musicEventList = [
  EventModel(
    title: shirtTitle,
    siteUrl: "http://mrt.jp/event/",
  ),
  EventModel(
    title: middleTitle,
    siteUrl: "http://mrt.jp/event/",
  ),
  EventModel(
    title: longTitle,
    siteUrl: "http://mrt.jp/event/",
  ),
  EventModel(
    title: longTitle,
    siteUrl: "http://mrt.jp/event/",
  ),
];

List<EventModel> stageEventList = [
  EventModel(
    title: shirtTitle,
    siteUrl: "http://mrt.jp/event/",
  ),
];

List<EventModel> sportEventList = [
  EventModel(
    title: shirtTitle,
    siteUrl: "http://mrt.jp/event/",
  ),
  EventModel(
    title: shirtTitle,
    siteUrl: "http://mrt.jp/event/",
  ),
];

List<EventModel> otherEventList = [
  EventModel(
    title: shirtTitle,
    siteUrl: "http://mrt.jp/event/",
  ),
  EventModel(
    title: shirtTitle,
    siteUrl: "http://mrt.jp/event/",
  ),
];

class EventModelList {
  final String title;
  final EventCategory category;
  final List<EventModel> eventModel;

  EventModelList({
    this.title,
    this.category,
    this.eventModel,
  });
}

List<EventModelList> eventModelList = [
  EventModelList(
    title: "音楽",
    category: EventCategory(
      EventType.Music,
    ),
    eventModel: musicEventList,
  ),
  EventModelList(
    title: "舞台",
    category: EventCategory(
      EventType.Stage,
    ),
    eventModel: stageEventList,
  ),
  EventModelList(
    title: "スポーツ",
    category: EventCategory(
      EventType.Sport,
    ),
    eventModel: sportEventList,
  ),
  EventModelList(
    title: "その他",
    category: EventCategory(
      EventType.Other,
    ),
    eventModel: otherEventList,
  ),
];

String shirtTitle = "サンプルサンプル";
String middleTitle = "サンプルサンプルサンプルサンプルサンプルサンプルサンプルサンプルサンプルサンプルサンプルサンプルサンプルサンプル";
String longTitle =
    "サンプルサンプルサンプルサンプルサンプルサンプルサンプルサンプルサンプルサンプルサンプルサンプルサンプルサンプルサンプルサンプルサンプルサンプルサンプルサンプルサンプルサンプルサンプルサンプルサンプルサンプルサンプルサンプル";
