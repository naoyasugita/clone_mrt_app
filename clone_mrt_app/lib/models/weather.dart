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

List<WeatherModel> weaklyWeatherList = [
  WeatherModel(
    locationName: "宮崎",
    weatherIconPath: kWeatherSunny,
    datetime: "12日(火)",
    highestTemperature: 30,
    lowestTemperature: 21,
    rainyPercent: ["30", "20", "0", "30"],
    updateDate: "2020/10/11 13:30更新",
  ),
  WeatherModel(
    locationName: "宮崎",
    weatherIconPath: kWeatherCloudy,
    datetime: "13日(水)",
    highestTemperature: 31,
    lowestTemperature: 19,
    rainyPercent: ["30", "20", "0", "30"],
    updateDate: "2020/10/11 13:30更新",
  ),
  WeatherModel(
    locationName: "宮崎",
    weatherIconPath: kWeatherCloudy,
    datetime: "14日(木)",
    highestTemperature: 30,
    lowestTemperature: 23,
    rainyPercent: ["30", "20", "0", "30"],
    updateDate: "2020/10/11 13:30更新",
  ),
  WeatherModel(
    locationName: "宮崎",
    weatherIconPath: kWeatherRainy,
    datetime: "15日(金)",
    highestTemperature: 31,
    lowestTemperature: 21,
    rainyPercent: ["30", "20", "0", "30"],
    updateDate: "2020/10/11 13:30更新",
  ),
  WeatherModel(
    locationName: "宮崎",
    weatherIconPath: kWeatherSunny,
    datetime: "16日(土)",
    highestTemperature: 30,
    lowestTemperature: 20,
    rainyPercent: ["30", "20", "0", "30"],
    updateDate: "2020/10/11 13:30更新",
  ),
  WeatherModel(
    locationName: "宮崎",
    weatherIconPath: kWeatherSunny,
    datetime: "17日(日)",
    highestTemperature: 29,
    lowestTemperature: 21,
    rainyPercent: ["30", "20", "0", "30"],
    updateDate: "2020/10/11 13:30更新",
  ),
];

WeatherModel recentWeather = WeatherModel(
  locationName: "宮崎",
  weatherIconPath: kWeatherRainy,
  datetime: "11日(月)",
  highestTemperature: 27,
  lowestTemperature: 19,
  rainyPercent: ["30", "20", "0", "30"],
  updateDate: "2020/10/11 13:30更新",
);
