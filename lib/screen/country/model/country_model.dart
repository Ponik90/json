class CountryModel {
  String? region, subRegion;

  NameModel? nameModel;
  CurrenciesModel? currenciesModel;
  LanguagesModel? languagesModel;
  FlagsModel? flagsModel;

  CountryModel(
      {this.region,
      this.subRegion,
      this.nameModel,
      this.currenciesModel,
      this.languagesModel,
      this.flagsModel});

  factory CountryModel.mapToModel(Map m1) {
    return CountryModel(
      region: m1['region'],
      subRegion: m1['subRegion'],
      currenciesModel: CurrenciesModel.mapToModel(
        m1['currencies'],
      ),
      flagsModel: FlagsModel.mapToModel(
        m1['flags'],
      ),
      languagesModel: LanguagesModel.mapToModel(
        m1['languages'],
      ),
      nameModel: NameModel.mapToModel(
        m1['name'],
      ),
    );
  }
}

class NameModel {
  String? name, official;

  NameModel({this.name, this.official});

  factory NameModel.mapToModel(Map m1) {
    return NameModel(
      name: m1['name'],
      official: m1['official'],
    );
  }
}

class CurrenciesModel {
  MdlModel? mdlModel;

  CurrenciesModel({this.mdlModel});

  factory CurrenciesModel.mapToModel(Map m1) {
    return CurrenciesModel(
      mdlModel: MdlModel.mapToModel(m1['MDL']),
    );
  }
}

class CapitalModel {}

class LanguagesModel {
  String? language;

  LanguagesModel({this.language});

  factory LanguagesModel.mapToModel(Map m1) {
    return LanguagesModel(language: m1['ron']);
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

class MdlModel {
  String? name, symbol;

  MdlModel({this.name, this.symbol});

  factory MdlModel.mapToModel(Map m1) {
    return MdlModel(name: m1['name'], symbol: m1['symbol']);
  }
}
