class LiveCamera {
  final String title;
  final String content;
  final String thumbnailPath;
  final String youtubeUrl;

  LiveCamera({
    this.title,
    this.content,
    this.thumbnailPath,
    this.youtubeUrl,
  });
}

List<LiveCamera> liveCameraList = [
  LiveCamera(
      title: "〇〇川",
      thumbnailPath: "assets/dummy_live_camera.png",
      content: contentText,
      youtubeUrl: "https://www.youtube.com/channel/UC_8ds6S_qjqc89705G5wceA"),
  LiveCamera(
      title: "〇〇川",
      thumbnailPath: "assets/dummy_live_camera.png",
      content: contentText,
      youtubeUrl: "https://www.youtube.com/channel/UC_8ds6S_qjqc89705G5wceA"),
  LiveCamera(
      title: "〇〇川",
      thumbnailPath: "assets/dummy_live_camera.png",
      content: contentText,
      youtubeUrl: "https://www.youtube.com/channel/UC_8ds6S_qjqc89705G5wceA"),
  LiveCamera(
      title: "〇〇川",
      thumbnailPath: "assets/dummy_live_camera.png",
      content: contentText,
      youtubeUrl: "https://www.youtube.com/channel/UC_8ds6S_qjqc89705G5wceA"),
];

String contentText = "@mlit_九州地方整備局水害予報センター\n【試験配信中】九州地方整備局水害予報センター";
