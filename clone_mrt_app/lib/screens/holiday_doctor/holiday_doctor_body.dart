import 'package:clone_mrt_app/constants.dart';
import 'package:clone_mrt_app/models/holiday_doctor.dart';
import 'package:flutter/material.dart';

class HospitalListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (BuildContext context, int index) => Container(
        margin: EdgeInsets.only(
          right: 5,
          bottom: 5,
          left: 5,
        ),
        decoration: BoxDecoration(
          color: Colors.purple[100],
          borderRadius: BorderRadius.circular(kBorderRadius),
          boxShadow: [
            BoxShadow(
              color: Colors.grey,
              offset: Offset(0, 3.0),
              blurRadius: 5.0,
            )
          ],
        ),
        child: HospitalInfoView(index: index),
      ),
      itemCount: hospitalModelList.length,
    );
  }
}

class HospitalInfoView extends StatelessWidget {
  final index;

  const HospitalInfoView({
    Key key,
    this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      backgroundColor: Colors.purple[100],
      title: Text(hospitalModelList[index].hospitalType.toJapanese()),
      leading: Icon(Icons.add_box),
      children: buildList(context, index).toList(),
    );
  }

  List<Widget> buildList(BuildContext context, int index) {
    return List.generate(
      hospitalModelList[index].hospitalList.length,
      (_index) => GestureDetector(
        onTap: () => Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) {
              return DetailPage(index: index, listIndex: _index);
            },
          ),
        ),
        child: Container(
          padding: EdgeInsets.all(10),
          alignment: Alignment.centerLeft,
          margin: EdgeInsets.only(
            right: 10,
            bottom: 10,
            left: 10,
          ),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(kBorderRadius),
            boxShadow: [
              BoxShadow(
                color: Colors.grey,
                offset: Offset(0, 3.0),
                blurRadius: 5.0,
              )
            ],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(hospitalModelList[index].hospitalList[_index].datetime +
                  hospitalModelList[index].hospitalList[_index].cityName),
              Text(
                hospitalModelList[index].hospitalList[_index].hospitalName,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

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
