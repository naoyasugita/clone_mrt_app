import 'package:clone_mrt_app/models/weather.dart';
import 'package:clone_mrt_app/constants.dart';
import 'package:flutter/material.dart';

class LargeCaption extends StatelessWidget {
  const LargeCaption({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // TODO: 動的にサイズを調整できるようにする
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.vertical(
              top: Radius.circular(kBorderRadius),
            ),
            child: Image.asset(
              weatherCattion.imagePath,
              fit: BoxFit.fitWidth,
              height: 174,
              width: 500,
            ),
          ),
          Text(
            weatherCattion.subject,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(kBorderRadius),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey,
            offset: new Offset(0, 5.0),
            blurRadius: 5.0,
          )
        ],
      ),
    );
  }
}
