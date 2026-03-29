class Animal {
  String name;
  String kingdom;
  String dob; // date of birth
  int numLegs; // number of legs

  Animal (this.name, this.kingdom, this.dob, this.numLegs) {}

  void walk(String direction) {
    // outputs the name and the direction its walking towards
    // outputs it can't walk if no legs
  }

  void displayInfo() {
    // outputs summary of Animal's information
  }
}