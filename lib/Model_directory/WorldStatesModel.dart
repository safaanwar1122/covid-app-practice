class WorldStatesModel {
  WorldStatesModel({
    required this.updated,
    required  this.cases,
    required  this.todayCases,
    required  this.deaths,
    required  this.todayDeaths,
    required  this.recovered,
    required  this.todayRecovered,
    required   this.active,
    required  this.critical,
    required   this.casesPerOneMillion,
    required   this.deathsPerOneMillion,
    required  this.tests,
    required  this.testsPerOneMillion,
    required  this.population,
    required  this.oneCasePerPeople,
    required   this.oneDeathPerPeople,
    required   this.oneTestPerPeople,
    required  this.activePerOneMillion,
    required  this.recoveredPerOneMillion,
    required  this.criticalPerOneMillion,
    required  this.affectedCountries,});

  WorldStatesModel.fromJson(dynamic json) {
    updated = json['updated'];
    cases = json['cases'];
    todayCases = json['todayCases'];
    deaths = json['deaths'];
    todayDeaths = json['todayDeaths'];
    recovered = json['recovered'];
    todayRecovered = json['todayRecovered'];
    active = json['active'];
    critical = json['critical'];
    casesPerOneMillion = json['casesPerOneMillion'];
    deathsPerOneMillion = json['deathsPerOneMillion'];
    tests = json['tests'];
    testsPerOneMillion = json['testsPerOneMillion'];
    population = json['population'];
    oneCasePerPeople = json['oneCasePerPeople'];
    oneDeathPerPeople = json['oneDeathPerPeople'];
    oneTestPerPeople = json['oneTestPerPeople'];
    activePerOneMillion = json['activePerOneMillion'];
    recoveredPerOneMillion = json['recoveredPerOneMillion'];
    criticalPerOneMillion = json['criticalPerOneMillion'];
    affectedCountries = json['affectedCountries'];
  }
  late  int updated;
  late  int cases;
  late  int todayCases;
  late  int deaths;
  late  int todayDeaths;
  late  int recovered;
  late  int todayRecovered;
  late  int active;
  late  int critical;
  late  int casesPerOneMillion;
  late  double deathsPerOneMillion;
  late  int tests;
  late  double testsPerOneMillion;
  late  int population;
  late int oneCasePerPeople;
  late  int oneDeathPerPeople;
  late int oneTestPerPeople;
  late  double activePerOneMillion;
  late  double recoveredPerOneMillion;
  late  double criticalPerOneMillion;
  late  int affectedCountries;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['updated'] = updated;
    map['cases'] = cases;
    map['todayCases'] = todayCases;
    map['deaths'] = deaths;
    map['todayDeaths'] = todayDeaths;
    map['recovered'] = recovered;
    map['todayRecovered'] = todayRecovered;
    map['active'] = active;
    map['critical'] = critical;
    map['casesPerOneMillion'] = casesPerOneMillion;
    map['deathsPerOneMillion'] = deathsPerOneMillion;
    map['tests'] = tests;
    map['testsPerOneMillion'] = testsPerOneMillion;
    map['population'] = population;
    map['oneCasePerPeople'] = oneCasePerPeople;
    map['oneDeathPerPeople'] = oneDeathPerPeople;
    map['oneTestPerPeople'] = oneTestPerPeople;
    map['activePerOneMillion'] = activePerOneMillion;
    map['recoveredPerOneMillion'] = recoveredPerOneMillion;
    map['criticalPerOneMillion'] = criticalPerOneMillion;
    map['affectedCountries'] = affectedCountries;
    return map;
  }

}