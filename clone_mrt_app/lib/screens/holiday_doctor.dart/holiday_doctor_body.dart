import 'package:clone_mrt_app/constants.dart';
import 'package:clone_mrt_app/models/holiday_doctor.dart';
import 'package:flutter/material.dart';

class HospitalListView extends StatelessWidget {
  final List<HospitalInfoModelList> _hospitalList = hospitalList;

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
        child: HospitalInfoView(hospitalList: _hospitalList, index: index),
      ),
      itemCount: _hospitalList.length,
    );
  }
}

class HospitalInfoView extends StatelessWidget {
  final index;

  const HospitalInfoView({
    Key key,
    this.index,
    @required List<HospitalInfoModelList> hospitalList,
  })  : _hospitalList = hospitalList,
        super(key: key);

  final List<HospitalInfoModelList> _hospitalList;

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      backgroundColor: Colors.purple[100],
      title: Text(_hospitalList[index].hospitalType.toJapanese()),
      leading: Icon(Icons.add_box),
      children: buildList(index).toList(),
    );
  }

  List<Container> buildList(int index) {
    return List.generate(
      _hospitalList[index].hospitalList.length,
      (_index) => Container(
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
            Text(_hospitalList[index].hospitalList[_index].datetime +
                _hospitalList[index].hospitalList[_index].cityName),
            Text(
              _hospitalList[index].hospitalList[_index].hospitalName,
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
