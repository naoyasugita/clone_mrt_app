import 'package:clone_mrt_app/models/weather.dart';
import 'package:clone_mrt_app/constants.dart';
import 'package:flutter/material.dart';

class WeaklyWeather extends StatelessWidget {
  const WeaklyWeather({
    Key key,
  }) : super(key: key);

  _checkWeekend(String datetime) {
    if (datetime.contains("土")) {
      return Colors.blue;
    } else if (datetime.contains("(日)")) {
      return Colors.red[400];
    }
    return;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "週間天気",
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
            ),
          ),
          // TODO: 区切り線の追加
          Container(
            padding: EdgeInsets.only(top: 2),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: List.generate(
                weaklyWeatherList.length,
                (index) => Container(
                  padding: EdgeInsets.symmetric(horizontal: 4),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                          bottom: 4,
                        ),
                        child: Text(
                          weaklyWeatherList[index].datetime,
                          style: TextStyle(
                            fontSize: 10,
                            color: _checkWeekend(
                              weaklyWeatherList[index].datetime,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          bottom: 4,
                        ),
                        child: Image.asset(
                          weaklyWeatherList[index].weatherIconPath,
                          width: 24,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          bottom: 4,
                        ),
                        child: Text(
                          weaklyWeatherList[index]
                              .highestTemperature
                              .toString(),
                          style: TextStyle(
                            fontSize: 10,
                            color: Colors.red[400],
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          bottom: 4,
                        ),
                        child: Text(
                          weaklyWeatherList[index].lowestTemperature.toString(),
                          style: TextStyle(
                            fontSize: 10,
                            color: Colors.blue,
                          ),
                        ),
                      ),
                      Text(
                        weaklyWeatherList[index].rainyPercent[0] + "%",
                        style: TextStyle(
                          fontSize: 10,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
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
