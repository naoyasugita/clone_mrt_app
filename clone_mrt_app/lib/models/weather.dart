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

List<WeatherModel> weeklyForecastList = [
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

class WeatherCaption {
  final String subject;
  final List<String> imagePath;
  final String captionSize;

  WeatherCaption({
    this.subject,
    this.imagePath,
    this.captionSize,
  });
}

WeatherCaption weatherCattion = WeatherCaption(
  subject: "時系列予報",
  imagePath: [
    "assets/weather_caption.png",
    "assets/weather_caption.png",
    "assets/weather_caption.png"
  ],
  captionSize: "s",
);

WeatherCaption resortWeather = WeatherCaption(
  subject: "行楽地の天気",
  imagePath: [
    "assets/weather_caption.png",
    "assets/weather_caption.png",
    "assets/weather_caption.png"
  ],
  captionSize: "s",
);

WeatherCaption radar = WeatherCaption(
  subject: "気象レーダー",
  imagePath: [
    "assets/weather_caption.png",
    "assets/weather_caption.png",
    "assets/weather_caption.png"
  ],
  captionSize: "l",
);
WeatherCaption rainForecast = WeatherCaption(
  subject: "雨の予想",
  imagePath: [
    "assets/weather_caption.png",
    "assets/weather_caption.png",
    "assets/weather_caption.png"
  ],
  captionSize: "l",
);

WeatherCaption washInfo = WeatherCaption(
  subject: "洗濯情報",
  imagePath: [
    "assets/weather_caption.png",
    "assets/weather_caption.png",
    "assets/weather_caption.png"
  ],
  captionSize: "s",
);

WeatherCaption uvInfo = WeatherCaption(
  subject: "紫外線情報",
  imagePath: [
    "assets/weather_caption.png",
    "assets/weather_caption.png",
    "assets/weather_caption.png"
  ],
  captionSize: "s",
);

WeatherCaption heatstrokeInfo = WeatherCaption(
  subject: "熱中症情報",
  imagePath: [
    "assets/weather_caption.png",
    "assets/weather_caption.png",
    "assets/weather_caption.png"
  ],
  captionSize: "s",
);

WeatherCaption pollen = WeatherCaption(
  subject: "花粉",
  imagePath: [
    "assets/weather_caption.png",
    "assets/weather_caption.png",
    "assets/weather_caption.png"
  ],
  captionSize: "s",
);

WeatherCaption seaInfo = WeatherCaption(
  subject: "海情報",
  imagePath: [
    "assets/weather_caption.png",
    "assets/weather_caption.png",
    "assets/weather_caption.png"
  ],
  captionSize: "s",
);

WeatherCaption sun = WeatherCaption(
  subject: "日の出 日の入り・潮汐",
  imagePath: [
    "assets/weather_caption.png",
    "assets/weather_caption.png",
    "assets/weather_caption.png"
  ],
  captionSize: "s",
);

WeatherCaption wing = WeatherCaption(
  subject: "風",
  imagePath: [
    "assets/weather_caption.png",
    "assets/weather_caption.png",
    "assets/weather_caption.png"
  ],
  captionSize: "s",
);

WeatherCaption maxWindSpeed = WeatherCaption(
  subject: "最大瞬間風速",
  imagePath: [
    "assets/weather_caption.png",
    "assets/weather_caption.png",
    "assets/weather_caption.png"
  ],
  captionSize: "s",
);

WeatherCaption inTheSky = WeatherCaption(
  subject: "上空の風予想",
  imagePath: [
    "assets/weather_caption.png",
    "assets/weather_caption.png",
    "assets/weather_caption.png"
  ],
  captionSize: "s",
);

WeatherCaption sedimentDisaster = WeatherCaption(
  subject: "土砂災害の危険度分布",
  imagePath: [
    "assets/weather_caption.png",
    "assets/weather_caption.png",
    "assets/weather_caption.png"
  ],
  captionSize: "s",
);

WeatherCaption warning = WeatherCaption(
  subject: "警報・注意報",
  imagePath: [
    "assets/weather_caption.png",
    "assets/weather_caption.png",
    "assets/weather_caption.png"
  ],
  captionSize: "l",
);

WeatherCaption earthquake = WeatherCaption(
  subject: "最新の地震",
  imagePath: [
    "assets/weather_caption.png",
    "assets/weather_caption.png",
    "assets/weather_caption.png"
  ],
  captionSize: "s",
);

WeatherCaption typhoon = WeatherCaption(
  subject: "台風",
  imagePath: [
    "assets/weather_caption.png",
    "assets/weather_caption.png",
    "assets/weather_caption.png"
  ],
  captionSize: "s",
);

WeatherCaption himawari = WeatherCaption(
  subject: "気象衛星ひまわり",
  imagePath: [
    "assets/weather_caption.png",
    "assets/weather_caption.png",
    "assets/weather_caption.png"
  ],
  captionSize: "s",
);

WeatherCaption weatherMap = WeatherCaption(
  subject: "天気図",
  imagePath: [
    "assets/weather_caption.png",
    "assets/weather_caption.png",
    "assets/weather_caption.png"
  ],
  captionSize: "s",
);

WeatherCaption nationalWeather = WeatherCaption(
  subject: "全国・雨の様子",
  imagePath: [
    "assets/weather_caption.png",
    "assets/weather_caption.png",
    "assets/weather_caption.png"
  ],
  captionSize: "s",
);

WeatherCaption westJapan = WeatherCaption(
  subject: "西日本・雨と風の予想",
  imagePath: [
    "assets/weather_caption.png",
    "assets/weather_caption.png",
    "assets/weather_caption.png"
  ],
  captionSize: "s",
);

WeatherCaption pm25 = WeatherCaption(
  subject: "PM2.5予測",
  imagePath: [
    "assets/weather_caption.png",
    "assets/weather_caption.png",
    "assets/weather_caption.png"
  ],
  captionSize: "s",
);

WeatherCaption recentWeatherDummy = WeatherCaption(
  subject: "dummy",
  imagePath: ["assets/weather_caption.png"],
  captionSize: "recentWeather",
);

WeatherCaption weeklyForecastDummy = WeatherCaption(
  subject: "dummy",
  imagePath: ["assets/weather_caption.png"],
  captionSize: "weeklyForecast",
);

class WeatherCaptionList {
  final List<WeatherCaption> caption;

  WeatherCaptionList({
    this.caption,
  });
}

WeatherCaptionList weatherCattionList = WeatherCaptionList(
  caption: [
    recentWeatherDummy,
    weeklyForecastDummy,
    weatherCattion,
    resortWeather,
    radar,
    rainForecast,
    washInfo,
    uvInfo,
    heatstrokeInfo,
    pollen,
    seaInfo,
    sun,
    wing,
    maxWindSpeed,
    inTheSky,
    sedimentDisaster,
    warning,
    earthquake,
    typhoon,
    himawari,
    weatherMap,
    nationalWeather,
    westJapan,
    pm25,
  ],
);
