import './spacecraft.dart';

class Orbiter extends Spacecraft with Piloted {
  num altitude = 12;
  Orbiter(String name, DateTime launchDate, this.altitude)
      : super(name, launchDate);

  int get altitudes => altitude;
}

class Piloted {
  int astronauts = 1;
  void describeCrew() {
    print('Number of astronauts: $astronauts');
  }
}
