class CountryModel {
  String? region, subRegion;

  NameModel? nameModel;
  FlagsModel? flagsModel;

  CountryModel(
      {this.region,
      this.subRegion,
      this.nameModel,
      this.flagsModel});

  factory CountryModel.mapToModel(Map m1) {
    return CountryModel(
      region: m1['region'],
      subRegion: m1['subRegion'],

      flagsModel: FlagsModel.mapToModel(
        m1['flags'],
      ),

      nameModel: NameModel.mapToModel(
        m1['name'],
      ),
    );
  }
}

class NameModel {
  String? common, official;

  NameModel({this.common, this.official});

  factory NameModel.mapToModel(Map m1) {
    return NameModel(
      common: m1['common'],
      official: m1['official'],
    );
  }
}

class FlagsModel {
  String? png, svg, alt;

  FlagsModel({this.alt, this.png, this.svg});

  factory FlagsModel.mapToModel(Map m1) {
    return FlagsModel(
      alt: m1['alt'],
      png: m1['png'],
      svg: m1['svg'],
    );
  }
}


