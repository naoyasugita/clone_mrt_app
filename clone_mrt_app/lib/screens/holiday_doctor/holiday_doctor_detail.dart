import 'package:clone_mrt_app/constants.dart';
import 'package:clone_mrt_app/models/holiday_doctor.dart';
import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({
    Key key,
    this.index,
    this.listIndex,
  }) : super(key: key);

  final index;
  final listIndex;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('休日当番医'),
        backgroundColor: kSecondaryColor,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(top: 10),
                child: Text(
                  hospitalModelList[index].hospitalList[listIndex].datetime +
                      " " +
                      hospitalModelList[index].hospitalList[listIndex].cityName,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ),
              Text(
                hospitalModelList[index].hospitalList[listIndex].hospitalName,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 10),
                child: Text(
                  "＜住所＞\n" +
                      hospitalModelList[index].hospitalList[listIndex].address,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 10),
                child: Text(
                  "＜電話番号＞\n" +
                      hospitalModelList[index]
                          .hospitalList[listIndex]
                          .telephone,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 10),
                child: Text(
                  "＜診察時間・科目等＞\n" +
                      hospitalModelList[index]
                          .hospitalList[listIndex]
                          .category +
                      "\n" +
                      hospitalModelList[index]
                          .hospitalList[listIndex]
                          .examinationTime
                          .getSinceUntil(),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 10),
                child: Text(
                  "【情報提供元】\n" +
                      hospitalModelList[index]
                          .hospitalList[listIndex]
                          .infoSource,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
