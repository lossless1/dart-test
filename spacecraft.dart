class Spacecraft {
  String name;
  DateTime launchDate;

  Spacecraft(this.name, this.launchDate) {}

  Spacecraft.unlaunched(String name) : this(name, null);
  Spacecraft.unnamed(DateTime datetime) : this('Unnamed', datetime);

  int get launchYear => launchDate?.year;

  void describe() {
    print('Spacecraft: $name');
    if (launchDate != null) {
      int years = DateTime.now().difference(launchDate).inDays ~/ 365;

      print('Launched: $launchYear ($years years ago)');
    } else {
      print('Unlaunched');
    }
  }
}
