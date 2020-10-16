import 'package:clone_mrt_app/models/weather.dart';
import 'package:clone_mrt_app/constants.dart';
import 'package:flutter/material.dart';

class WeatherContent extends StatelessWidget {
  WeatherContent(this.recentWeather);

  final WeatherModel recentWeather;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(kDefaultPadding),
      child: Column(
        children: [
          WeatherContentHeader(recentWeather: recentWeather),
          Divider(
            thickness: 0.3,
            color: Colors.grey,
          ),
          WeatherContentBody(recentWeather: recentWeather),
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

class WeatherContentBody extends StatelessWidget {
  const WeatherContentBody({
    Key key,
    @required this.recentWeather,
  }) : super(key: key);

  final WeatherModel recentWeather;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        WeatherContentDateInfo(recentWeather: recentWeather),
        WeatherContentIcon(recentWeather: recentWeather),
        WeatherContentDetail(recentWeather: recentWeather),
      ],
    );
  }
}

class WeatherContentDetail extends StatelessWidget {
  const WeatherContentDetail({
    Key key,
    @required this.recentWeather,
  }) : super(key: key);

  final WeatherModel recentWeather;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(vertical: 8),
          child: Row(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: Text(
                  recentWeather.highestTemperature.toString(),
                  style: TextStyle(
                    fontSize: 24,
                    color: Colors.red[400],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: Text(
                  recentWeather.lowestTemperature.toString(),
                  style: TextStyle(
                    fontSize: 24,
                    color: Colors.blue,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 5),
                child: Text(
                  "℃",
                  style: TextStyle(
                    fontSize: 10,
                  ),
                ),
              ),
            ],
          ),
        ),
        Row(
          children: [
            _rainyPercentText(recentWeather.rainyPercent[0]),
            _rainyPercentText(recentWeather.rainyPercent[1]),
            _rainyPercentText(recentWeather.rainyPercent[2]),
            _rainyPercentText(recentWeather.rainyPercent[3]),
            Padding(
              padding: EdgeInsets.only(left: 8),
              child: Text(
                "%",
                style: TextStyle(
                  fontSize: 10,
                ),
              ),
            ),
          ],
        ),
        Row(
          children: [
            _smallGrayText("0"),
            _smallGrayText("-"),
            _smallGrayText("6"),
            _smallGrayText("-"),
            _smallGrayText("12"),
            _smallGrayText("-"),
            _smallGrayText("18"),
            _smallGrayText("-"),
            _smallGrayText("24"),
            _smallGrayText(""),
          ],
        ),
      ],
    );
  }

  Widget _rainyPercentText(String rainyPercent) => Padding(
        padding: EdgeInsets.symmetric(horizontal: 8),
        child: Text(rainyPercent),
      );

  Widget _smallGrayText(String word) => Padding(
        padding: EdgeInsets.symmetric(horizontal: 4),
        child: Text(
          word,
          style: TextStyle(
            fontSize: 10,
            color: Colors.grey,
          ),
        ),
      );
}

class WeatherContentIcon extends StatelessWidget {
  const WeatherContentIcon({
    Key key,
    @required this.recentWeather,
  }) : super(key: key);

  final WeatherModel recentWeather;

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      recentWeather.weatherIconPath,
      fit: BoxFit.cover,
      width: 40,
    );
  }
}

class WeatherContentDateInfo extends StatelessWidget {
  const WeatherContentDateInfo({
    Key key,
    @required this.recentWeather,
  }) : super(key: key);

  final WeatherModel recentWeather;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
              children: [
                TextSpan(
                  text: 'きょう',
                  style: TextStyle(
                    fontSize: 24,
                    color: Colors.greenAccent[700],
                  ),
                ),
                TextSpan(text: "\n"),
                TextSpan(
                  text: recentWeather.datetime,
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class WeatherContentHeader extends StatelessWidget {
  const WeatherContentHeader({
    Key key,
    @required this.recentWeather,
  }) : super(key: key);

  final WeatherModel recentWeather;

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Text(
        recentWeather.locationName,
        style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
      ),
      Text(
        recentWeather.updateDate,
        style: TextStyle(
          fontSize: 10,
          color: Colors.grey,
        ),
      ),
    ]);
  }
}
