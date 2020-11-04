import 'package:clone_mrt_app/models/weather.dart';
import 'package:clone_mrt_app/constants.dart';
import 'package:clone_mrt_app/screens/weather/weather_detail.dart';
import 'package:flutter/material.dart';

class FlexibleCaption extends StatelessWidget {
  const FlexibleCaption({
    Key key,
    this.index,
    this.size,
  }) : super(key: key);

  final index;
  final size;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) {
            return WeatherDetailView(index: index);
          },
        ),
      ),
      child: Container(
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.vertical(
                top: Radius.circular(kBorderRadius),
              ),
              child: Image.asset(
                weatherCattionList.caption[index].imagePath[0],
                fit: BoxFit.fitWidth,
                height: size == "s" ? 114 : 174,
                width: 500,
              ),
            ),
            Text(
              weatherCattionList.caption[index].subject,
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
              offset: Offset(0, 5.0),
              blurRadius: 5.0,
            )
          ],
        ),
      ),
    );
  }
}
