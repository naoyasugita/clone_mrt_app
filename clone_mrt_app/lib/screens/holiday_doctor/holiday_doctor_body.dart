import 'package:clone_mrt_app/constants.dart';
import 'package:clone_mrt_app/models/holiday_doctor.dart';
import 'package:clone_mrt_app/screens/holiday_doctor/holiday_doctor_detail.dart';
import 'package:flutter/material.dart';

class HospitalListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (BuildContext context, int index) => Container(
        margin: EdgeInsets.only(
          right: 10,
          top: 10,
          left: 10,
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
