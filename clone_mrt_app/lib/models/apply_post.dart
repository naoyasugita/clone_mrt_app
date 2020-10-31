import 'package:flutter/material.dart';

class ApplyModel {
  final String applyType;
  final String imagePath;

  ApplyModel({
    this.applyType,
    this.imagePath,
  });
}

List<ApplyModel> applyModelList = [
  ApplyModel(
    applyType: "スクープ",
    imagePath: "assets/apply_post/dummy_apply_scoop.png",
  ),
  ApplyModel(
    applyType: "キャンペーン",
    imagePath: "assets/apply_post/dummy_apply_campaign.png",
  ),
  ApplyModel(
    applyType: "ファミーユ",
    imagePath: "assets/apply_post/dummy_apply_special.png",
  ),
  ApplyModel(
    applyType: "テレビ",
    imagePath: "assets/apply_post/dummy_apply_tv.png",
  ),
  ApplyModel(
    applyType: "ラジオ",
    imagePath: "assets/apply_post/dummy_apply_radio.png",
  ),
  ApplyModel(
    applyType: "あさトク",
    imagePath: "assets/apply_post/dummy_apply_asatoku.png",
  ),
  ApplyModel(
    applyType: "わけもん",
    imagePath: "assets/apply_post/dummy_apply_wakemon.png",
  ),
  ApplyModel(
    applyType: "ネクスト",
    imagePath: "assets/apply_post/dummy_apply_next.png",
  ),
  ApplyModel(
    applyType: "うちのこ",
    imagePath: "assets/apply_post/dummy_apply_uchinoko.png",
  ),
];

class ContactModel {
  final String title;
  final Color listColor;

  ContactModel({
    this.title,
    this.listColor,
  });
}

List<ContactModel> contactModelList = [
  ContactModel(
    title: "情報提供・取材依頼はこちらから",
    listColor: Colors.yellow[300],
  ),
  ContactModel(
    title: "ラジオ･テレビCM出稿に関するお問い合わせはこちらから",
    listColor: Colors.blue[300],
  ),
  ContactModel(
    title: "アプリ広告バナーに関するお問い合わせはこちらから",
    listColor: Colors.red[200],
  ),
  ContactModel(
    title: "アプリに関するご要望やご意見はこちらから",
    listColor: Colors.green[300],
  ),
];
