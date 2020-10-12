import 'package:clone_mrt_app/models/weather.dart';
import 'package:clone_mrt_app/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

const largeCard = StaggeredTile.count(2, 1);
const middleCard = StaggeredTile.count(2, 0.7);
const smallCard = StaggeredTile.count(1, 0.7);

List<StaggeredTile> _staggeredTiles = const <StaggeredTile>[
  middleCard,
  // middleCard,
  // smallCard,
  // smallCard,
  // largeCard,
  // largeCard,
  // smallCard,
  // smallCard,
  // smallCard,
  // smallCard,
];

List<Widget> _tiles = <Widget>[
  _WeatherContent(recentWeather),
  // _WeatherContent(recentWeather),
  // _WeatherContent(recentWeather),
  // _WeatherContent(recentWeather),
  // _WeatherContent(recentWeather),
  // _WeatherContent(recentWeather),
  // _WeatherContent(recentWeather),
  // _WeatherContent(recentWeather),
  // _WeatherContent(recentWeather),
  // _WeatherContent(recentWeather),
];

class WeatherView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StaggeredGridView.count(
      padding: EdgeInsets.all(kDefaultPadding),
      crossAxisCount: 2,
      staggeredTiles: _staggeredTiles,
      children: _tiles,
      mainAxisSpacing: 2,
      crossAxisSpacing: 2,
    );
  }
}

class _WeatherContent extends StatelessWidget {
  _WeatherContent(this.recentWeather);

  final WeatherModel recentWeather;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(kDefaultPadding),
      child: Column(
        children: [
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
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
          ]),
          Divider(
            thickness: 0.5,
            color: Colors.grey,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: RichText(
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
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: Image.asset(
                  recentWeather.weatherIconPath,
                  fit: BoxFit.cover,
                  width: 40,
                ),
              ),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        recentWeather.highestTemperature.toString(),
                        style: TextStyle(
                          fontSize: 24,
                          color: Colors.red[400],
                        ),
                      ),
                      Text(
                        recentWeather.lowestTemperature.toString(),
                        style: TextStyle(
                          fontSize: 24,
                          color: Colors.blue,
                        ),
                      ),
                      Text("℃"),
                    ],
                  ),
                  Row(
                    // crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      rainyPercentText(recentWeather.rainyPercent[0]),
                      rainyPercentText(recentWeather.rainyPercent[1]),
                      rainyPercentText(recentWeather.rainyPercent[2]),
                      rainyPercentText(recentWeather.rainyPercent[3]),
                      Text("％"),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      smallGrayText("0"),
                      smallGrayText("-"),
                      smallGrayText("6"),
                      smallGrayText("-"),
                      smallGrayText("12"),
                      smallGrayText("-"),
                      smallGrayText("18"),
                      smallGrayText("-"),
                      smallGrayText("24"),
                    ],
                  ),
                ],
              ),
            ],
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

  Widget rainyPercentText(String rainyPercent) => Padding(
        padding: EdgeInsets.symmetric(horizontal: 8),
        child: Text(rainyPercent),
      );

  Widget smallGrayText(String word) => Padding(
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
