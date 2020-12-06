import 'package:clone_mrt_app/constants.dart';
import 'package:flutter/material.dart';

class SportPageView extends StatelessWidget {
  const SportPageView({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.only(
              top: 10,
              right: 10,
              left: 10,
            ),
            padding: EdgeInsets.symmetric(
              horizontal: 10,
              vertical: 2,
            ),
            alignment: Alignment.centerLeft,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(kBorderRadius),
              color: Colors.blue[900],
            ),
            child: Text(
              "schedule",
              textAlign: TextAlign.start,
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
              ),
            ),
          ),
          // TODO: デザインの修正
          Container(
            margin: EdgeInsets.only(
              top: 10,
              right: 10,
              left: 10,
            ),
            padding: EdgeInsets.symmetric(
              horizontal: 10,
              vertical: 2,
            ),
            alignment: Alignment.centerLeft,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(kBorderRadius),
              gradient: LinearGradient(colors: [
                Colors.cyan[600],
                Colors.cyan[400],
              ], stops: [
                0,
                1
              ]),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey,
                  offset: Offset(0, 5.0),
                  blurRadius: 5.0,
                )
              ],
            ),
            child: Text(
              "2020年12月",
              textAlign: TextAlign.start,
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
