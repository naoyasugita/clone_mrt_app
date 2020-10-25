enum HospitalType {
  InternalMedicine, // 内科
  Surgery, // 外科
  Pediatrics, // 小児科
  ObstetricsAndGynecology, // 産婦人科
  Dermatology, // 皮膚科
  Ophthalmology, // 眼科
  Otorhinolaryngology, // 耳鼻いんこう科
  Dentistry, // 歯科系
  Emergency, // 休日夜間急患センター
}

class HospitalTypeModel {
  final HospitalType hospitalType;

  HospitalTypeModel(this.hospitalType);

  String toJapanese() {
    switch (this.hospitalType) {
      case HospitalType.InternalMedicine:
        return "内科系";
      case HospitalType.Surgery:
        return "外科系";
      case HospitalType.Pediatrics:
        return "小児科系";
      case HospitalType.ObstetricsAndGynecology:
        return "産婦人科系";
      case HospitalType.Dermatology:
        return "皮膚科";
      case HospitalType.Ophthalmology:
        return "眼科";
      case HospitalType.Otorhinolaryngology:
        return "耳鼻いんこう科";
      case HospitalType.Dentistry:
        return "歯科系";
      case HospitalType.Emergency:
        return "休日夜間急患センター";
      default:
        return "";
    }
  }
}

class HospitalInfoModel {
  final String hospitalName;
  final String datetime;
  final String cityName;
  final String address;
  final String telephone;
  final String category;
  final ExaminationTime examinationTime;
  final String infoSource;
  final HospitalTypeModel hospitalType;

  HospitalInfoModel({
    this.hospitalName,
    this.datetime, // yyyy/MM/dd(EEE)
    this.cityName,
    this.address,
    this.telephone, // 0000-00-0000
    this.category,
    this.examinationTime,
    this.infoSource,
    this.hospitalType,
  });
}

class ExaminationTime {
  final String since; // H:mm
  final String until; // H:mm

  ExaminationTime({
    this.since,
    this.until,
  });

  String getSinceUntil() {
    return this.since + " 〜 " + this.until;
  }
}

List<HospitalInfoModel> internalMedicine = [
  HospitalInfoModel(
    hospitalName: "A病院",
    datetime: "2020/10/10(火)",
    cityName: "宮崎市",
    address: "宮崎市〇〇1-1-1",
    telephone: "0000-00-0000",
    category: "",
    examinationTime: ExaminationTime(since: "9:00", until: "17:00"),
    infoSource: "宮崎県医師会・宮崎県歯科医師会",
    hospitalType: HospitalTypeModel(HospitalType.InternalMedicine),
  ),
  HospitalInfoModel(
    hospitalName: "B病院",
    datetime: "2020/10/10(火)",
    cityName: "宮崎市",
    address: "宮崎市〇〇1-1-1",
    telephone: "0000-00-0000",
    category: "",
    examinationTime: ExaminationTime(since: "9:00", until: "17:00"),
    infoSource: "宮崎県医師会・宮崎県歯科医師会",
    hospitalType: HospitalTypeModel(HospitalType.InternalMedicine),
  ),
];

List<HospitalInfoModel> surgery = [
  HospitalInfoModel(
    hospitalName: "A病院",
    datetime: "2020/10/10(火)",
    cityName: "宮崎市",
    address: "宮崎市〇〇1-1-1",
    telephone: "0000-00-0000",
    category: "",
    examinationTime: ExaminationTime(since: "9:00", until: "17:00"),
    infoSource: "宮崎県医師会・宮崎県歯科医師会",
    hospitalType: HospitalTypeModel(HospitalType.Surgery),
  ),
  HospitalInfoModel(
    hospitalName: "B病院",
    datetime: "2020/10/10(火)",
    cityName: "宮崎市",
    address: "宮崎市〇〇1-1-1",
    telephone: "0000-00-0000",
    category: "",
    examinationTime: ExaminationTime(since: "9:00", until: "17:00"),
    infoSource: "宮崎県医師会・宮崎県歯科医師会",
    hospitalType: HospitalTypeModel(HospitalType.Surgery),
  ),
];

List<HospitalInfoModel> pediatrics = [
  HospitalInfoModel(
    hospitalName: "A病院",
    datetime: "2020/10/10(火)",
    cityName: "宮崎市",
    address: "宮崎市〇〇1-1-1",
    telephone: "0000-00-0000",
    category: "",
    examinationTime: ExaminationTime(since: "9:00", until: "17:00"),
    infoSource: "宮崎県医師会・宮崎県歯科医師会",
    hospitalType: HospitalTypeModel(HospitalType.Pediatrics),
  ),
];

class HospitalInfoModelList {
  final List<HospitalInfoModel> hospitalList;
  final HospitalTypeModel hospitalType;
  bool isExpanded = false;

  HospitalInfoModelList({this.hospitalType, this.hospitalList});
}

List<HospitalInfoModelList> hospitalList = [
  HospitalInfoModelList(
    hospitalType: HospitalTypeModel(HospitalType.InternalMedicine),
    hospitalList: internalMedicine,
  ),
  HospitalInfoModelList(
    hospitalType: HospitalTypeModel(HospitalType.InternalMedicine),
    hospitalList: surgery,
  ),
  HospitalInfoModelList(
    hospitalType: HospitalTypeModel(HospitalType.Pediatrics),
    hospitalList: pediatrics,
  ),
];
