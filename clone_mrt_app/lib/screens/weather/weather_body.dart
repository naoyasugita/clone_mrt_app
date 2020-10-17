import 'package:clone_mrt_app/models/weather.dart';
import 'package:clone_mrt_app/screens/weather/daily_weather_view.dart';
import 'package:clone_mrt_app/screens/weather/large_caption.dart';
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
  largeCard,
  smallCard,
  smallCard,
  smallCard,
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
  Padding(
    padding: EdgeInsets.all(4),
    child: LargeCaption(),
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
    child: SmallCaption(),
  ),
];

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
