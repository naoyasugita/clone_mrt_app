class DramaTitle {
  final String value;

  DramaTitle(
    this.value,
  );

  String format() {
    return "『${this.value}』";
  }
}

class Contributor {
  final String name;

  Contributor(
    this.name,
  );

  String format() {
    return "＜投稿者：${this.name} さん＞";
  }
}

class CampaignModel {
  final DramaTitle dramaTitle;
  final String timestamp;
  final Contributor contributor;
  final String post;

  CampaignModel({
    this.dramaTitle,
    this.timestamp,
    this.contributor,
    this.post,
  });
}

List<CampaignModel> campaignModelList = [
  CampaignModel(
    dramaTitle: DramaTitle("恋する母たち"),
    timestamp: "12/1（火）10:00",
    contributor: Contributor("テスト太郎"),
    post: dummyPost,
  ),
  CampaignModel(
    dramaTitle: DramaTitle("恋する母たち"),
    timestamp: "12/1（火）12:00",
    contributor: Contributor("テスト次郎"),
    post: dummyPost,
  ),
  CampaignModel(
    dramaTitle: DramaTitle("恋する母たち"),
    timestamp: "12/2（水）18:00",
    contributor: Contributor("テスト花子"),
    post: dummyPost,
  ),
];

String dummyPost =
    "楽しかったです。また見たい！楽しかったです。また見たい！楽しかったです。また見たい！楽しかったです。また見たい！楽しかったです。また見たい！楽しかったです。また見たい！楽しかったです。また見たい！楽しかったです。また見たい！";
