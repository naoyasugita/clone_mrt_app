import 'package:clone_mrt_app/constants.dart';
import 'package:clone_mrt_app/models/weather.dart';
import 'package:flutter/material.dart';

class WeatherDetailView extends StatelessWidget {
  const WeatherDetailView({
    Key key,
    this.index,
  }) : super(key: key);

  final index;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue[50],
      appBar: AppBar(
        title: Text('天気'),
        backgroundColor: kSecondaryColor,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.symmetric(
                vertical: 10,
              ),
              color: Colors.blue[900],
              child: Center(
                child: Text(
                  weatherCattionList.caption[index].subject,
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            Column(
              children: _buildList(context, index).toList(),
            ),
            Container(
              margin: EdgeInsets.symmetric(
                vertical: 5,
              ),
              child: Text(
                "Copytight © 1996-2020 XXXXXX Co.,Ltd. All rights reserved.",
                style: TextStyle(
                  fontSize: 8,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  List<Widget> _buildList(BuildContext context, int index) {
    return List.generate(
      weatherCattionList.caption[index].imagePath.length,
      (imageIndex) => Container(
        margin: EdgeInsets.only(
          bottom: 5,
        ),
        child: Image.asset(
          weatherCattionList.caption[index].imagePath[imageIndex],
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
