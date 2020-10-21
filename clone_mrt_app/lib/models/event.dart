enum EventCategory {
  Music,
  Stage,
  Sport,
  Other,
}

class EventModel {
  final String title;
  final String category;
  final String siteUrl;

  EventModel({
    this.title,
    this.category,
    this.siteUrl,
  });
}

List<EventModel> eventModelList = [
  EventModel(
    title: shirtTitle,
    category: "assets/dummy_live_camera.png",
    siteUrl: "http://mrt.jp/event/",
  ),
  EventModel(
    title: middleTitle,
    category: "assets/dummy_live_camera.png",
    siteUrl: "http://mrt.jp/event/",
  ),
  EventModel(
    title: longTitle,
    category: "assets/dummy_live_camera.png",
    siteUrl: "http://mrt.jp/event/",
  ),
  EventModel(
    title: longTitle,
    category: "assets/dummy_live_camera.png",
    siteUrl: "http://mrt.jp/event/",
  ),
];

String shirtTitle = "サンプルサンプル";
String middleTitle = "サンプルサンプルサンプルサンプルサンプルサンプルサンプルサンプルサンプルサンプルサンプルサンプルサンプルサンプル";
String longTitle =
    "サンプルサンプルサンプルサンプルサンプルサンプルサンプルサンプルサンプルサンプルサンプルサンプルサンプルサンプルサンプルサンプルサンプルサンプルサンプルサンプルサンプルサンプルサンプルサンプルサンプルサンプルサンプルサンプル";
