import 'package:clone_mrt_app/models/weather.dart';
import 'package:clone_mrt_app/screens/weather/daily_weather_view.dart';
import 'package:clone_mrt_app/screens/weather/caption_body.dart';
import 'package:clone_mrt_app/screens/weather/weekly_forecast_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class WeatherView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StaggeredGridView.count(
      padding: EdgeInsets.all(4),
      crossAxisCount: 2,
      staggeredTiles: _staggeredTiles,
      children: _buildList().toList(),
      mainAxisSpacing: 2,
      crossAxisSpacing: 2,
    );
  }

  List<Widget> _buildList() {
    return List.generate(
      weatherCattionList.caption.length,
      (index) => Padding(
        padding: EdgeInsets.all(4),
        child: _buildInfo(weatherCattionList.caption[index].captionSize, index),
      ),
    );
  }

  Widget _buildInfo(String captionsize, int index) {
    if (captionsize == "recentWeather") {
      return WeatherContent(recentWeather);
    } else if (captionsize == "weeklyForecast") {
      return WeeklyForecast();
    }
    return FlexibleCaption(index: index, size: captionsize);
  }
}

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
  smallCard,
  smallCard,
  smallCard,
  smallCard,
  smallCard,
  smallCard,
  smallCard,
  largeCard,
  smallCard,
  smallCard,
  smallCard,
  smallCard,
  smallCard,
  smallCard,
  smallCard,
];
