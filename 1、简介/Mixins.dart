import 'dart:core';
//Mixin 是一种在多个类层次结构中重用代码的方法
mixin Piloted{
  int astronauts =1;
  void descirbeCrew(){
    print('Number of astronauts: $astronauts');
  }
}
//class PilotedCraft extends Spacecraft with Piloted {
  // ···
//}


void main() {}
class Spacecraft {
  String name;
  DateTime? launchDate;
  int? get launchYear => launchDate?.year;
  Spacecraft(this.name, this.launchDate) {}
  Spacecraft.unlaunched(String name) : this(name, null);
  void describe() {
    print('Spacecraft: $name');
    var launchDate = this.launchDate;
    if (launchDate != null) {
      int years = DateTime.now().difference(launchDate).inDays ~/ 365;
      print('Launched: $launchYear ($years years ago)');
    } else {
      print('Unlaunched');
    }
  }
}

class Orbiter extends Spacecraft {
  double altitude;

  Orbiter(super.name, DateTime super.launchDate, this.altitude);
}
