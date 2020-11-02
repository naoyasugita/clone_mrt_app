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
      itemCount: hospitalList.length,
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
      title: Text(hospitalList[index].hospitalType.toJapanese()),
      leading: Icon(Icons.add_box),
      children: buildList(context, index).toList(),
    );
  }

  List<Widget> buildList(BuildContext context, int index) {
    return List.generate(
      hospitalList[index].hospitalList.length,
      (_index) => GestureDetector(
        onTap: () => Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) {
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
                            hospitalList[index].hospitalList[_index].datetime +
                                " " +
                                hospitalList[index]
                                    .hospitalList[_index]
                                    .cityName,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                        ),
                        Text(
                          hospitalList[index].hospitalList[_index].hospitalName,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 10),
                          child: Text(
                            "＜住所＞\n" +
                                hospitalList[index]
                                    .hospitalList[_index]
                                    .address,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 10),
                          child: Text(
                            "＜電話番号＞\n" +
                                hospitalList[index]
                                    .hospitalList[_index]
                                    .telephone,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 10),
                          child: Text(
                            "＜診察時間・科目等＞\n" +
                                hospitalList[index]
                                    .hospitalList[_index]
                                    .category +
                                "\n" +
                                hospitalList[index]
                                    .hospitalList[_index]
                                    .examinationTime
                                    .getSinceUntil(),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 10),
                          child: Text(
                            "【情報提供元】\n" +
                                hospitalList[index]
                                    .hospitalList[_index]
                                    .infoSource,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              );
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
              Text(hospitalList[index].hospitalList[_index].datetime +
                  hospitalList[index].hospitalList[_index].cityName),
              Text(
                hospitalList[index].hospitalList[_index].hospitalName,
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
