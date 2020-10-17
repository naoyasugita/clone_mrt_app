import 'package:clone_mrt_app/constants.dart';
import 'package:clone_mrt_app/models/weather.dart';
import 'package:clone_mrt_app/screens/weather/daily_weather_view.dart';
import 'package:clone_mrt_app/screens/weather/small_caption.dart';
import 'package:clone_mrt_app/screens/weather/weakli_weather_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

const largeCard = StaggeredTile.count(2, 1);
const middleCard = StaggeredTile.count(2, 0.7);
const smallCard = StaggeredTile.count(1, 0.7);

List<StaggeredTile> _staggeredTiles = <StaggeredTile>[
  middleCard,
  middleCard,
  smallCard,
  smallCard,
  largeCard,
  // largeCard,
  // smallCard,
  // smallCard,
  // smallCard,
  // smallCard,
];

List<Widget> _tiles = <Widget>[
  Padding(
    padding: EdgeInsets.all(4),
    child: WeatherContent(recentWeather),
  ),
  Padding(
    padding: EdgeInsets.all(4),
    child: WeaklyWeather(),
  ),
  Padding(
    padding: EdgeInsets.all(4),
    child: SmallCaption(),
  ),
  Padding(
    padding: EdgeInsets.all(4),
    child: SmallCaption(),
  ),
  Padding(
    padding: EdgeInsets.all(4),
    child: LargeCaption(),
  ),
  // WeatherContent(recentWeather),
  // WeatherContent(recentWeather),
  // WeatherContent(recentWeather),
  // WeatherContent(recentWeather),
  // WeatherContent(recentWeather),
  // WeatherContent(recentWeather),
  // WeatherContent(recentWeather),
  // WeatherContent(recentWeather),
];

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

class WeatherView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StaggeredGridView.count(
      padding: EdgeInsets.all(4),
      crossAxisCount: 2,
      staggeredTiles: _staggeredTiles,
      children: _tiles,
      mainAxisSpacing: 2,
      crossAxisSpacing: 2,
    );
  }
}
