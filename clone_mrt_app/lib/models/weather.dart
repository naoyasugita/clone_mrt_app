import 'package:clone_mrt_app/constants.dart';

enum Weather {
  Sunny,
  Cloudy,
  Rainy,
  Snow,
}

class WeatherModel {
  final String locationName;
  final String weatherIconPath;
  final String datetime;
  final int highestTemperature;
  final int lowestTemperature;
  final List<String> rainyPercent;
  final String updateDate;

  WeatherModel({
    this.locationName,
    this.weatherIconPath,
    this.datetime,
    this.highestTemperature,
    this.lowestTemperature,
    this.rainyPercent,
    this.updateDate,
  });
}

WeatherModel recentWeather = WeatherModel(
  locationName: "宮崎",
  weatherIconPath: kWeatherSunny,
  datetime: "12日(月)",
  highestTemperature: 30,
  lowestTemperature: 20,
  rainyPercent: ["30", "20", "0", "30"],
  updateDate: "2020/10/11 13:30更新",
);
