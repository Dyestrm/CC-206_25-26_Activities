class Animal {
  String name;
  String kingdom;
  String dob; // date of birth
  int numLegs; // number of legs

  // CONCEPT USED (CU): Constructor Shorthand
  Animal (this.name, this.kingdom, this.dob, this.numLegs) {}

  void walk(Direction direction) {
    // CONCEPT USED (CU): Conditionals
    if (this.numLegs <= 0) {
      print("${this.name} can't walk because it has no legs");
    } else {
      print("${this.name} is walking ${direction.name}");
    }
  }

  void displayInfo() {
    // CONCEPT USED (CU): Multiline Strings
    print("""
    ${this.name}'s Information:
      - Kingdom: ${this.kingdom}
      - Date of Birth: ${this.dob}
      - Number of Legs: ${this.numLegs}
    """);
  }
}

class AnimalBuilder {

  // CONCEPT USED (CU): List
  // CONCEPT USED (CU): Big Arrow
  List<Animal> buildFiveAnimals() => [
    Animal('Shark', 'Animalia', '1999', 0),
    Animal('Dog', 'Animalia', '1998', 4),
    Animal('Cat', 'Animalia', '1997', 4),
    Animal('Eagle', 'Animalia', '2001', 2),
    Animal('Snake', 'Animalia', '2000', 0),
  ];
}

enum Direction {
  north("North"),
  south("South"),
  west("West"),
  east("East");

  final String name;
  const Direction(this.name);
}