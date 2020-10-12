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
            ),
            Text(
              recentWeather.updateDate,
            ),
          ]),
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
