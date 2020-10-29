class ApplyTerm {
  final String since;
  final String until;

  ApplyTerm({
    this.since,
    this.until,
  });

  String toString() {
    return "${this.since} 〜 ${this.until}";
  }

  String toUntil() {
    return "${this.until}まで";
  }
}

class Winner {
  final int count;

  Winner(this.count);

  String toDetailMessage() {
    return "${this.count.toString()}名様にプレゼント";
  }

  String toListMessage() {
    return "＜当選人数 ${this.count.toString()}名様＞";
  }
}

class PresentContentsModel {
  final String name;
  final ApplyTerm applyTerm;
  final Winner winner;
  final String description;

  PresentContentsModel({
    this.name,
    this.applyTerm,
    this.winner,
    this.description,
  });
}

class PresentModel {
  final PresentContentsModel content;
  final String formTitle;
  final String thumbnailImagePath;
  final String presentImagePath = "";

  PresentModel({
    this.content,
    this.formTitle,
    this.thumbnailImagePath,
    String imagePath,
  });
}

List<PresentModel> presentModelList = [
  PresentModel(
    content: PresentContentsModel(
        name: "おにぎり1",
        applyTerm: term,
        winner: Winner(10),
        description: description),
    formTitle: "テスト",
    thumbnailImagePath: thumbnailImagePath,
  ),
  PresentModel(
    content: PresentContentsModel(
        name: "おにぎり2",
        applyTerm: term,
        winner: Winner(30),
        description: description),
    formTitle: "テスト",
    thumbnailImagePath: thumbnailImagePath,
  ),
  PresentModel(
    content: PresentContentsModel(
        name: "おにぎり3",
        applyTerm: term,
        winner: Winner(15),
        description: description),
    formTitle: "テスト",
    thumbnailImagePath: thumbnailImagePath,
  ),
  PresentModel(
    content: PresentContentsModel(
        name: "おにぎり4",
        applyTerm: term,
        winner: Winner(3),
        description: description),
    formTitle: "テスト",
    thumbnailImagePath: thumbnailImagePath,
  ),
];

ApplyTerm term = ApplyTerm(
  since: "2020年10月10日",
  until: "2020年10月31日",
);
String description = "当選者の発表は商品の発送をもってかえさせていただきます";

String thumbnailImagePath = "assets/dummy_broadcast.png";
