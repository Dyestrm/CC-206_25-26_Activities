class Pet {
  String nickname = "";
  int kindness = 0;

  Pet(this.nickname) { this.kindness = 50; }
  Pet.noNickName(); 

  void kick() {
    // decreases kindness amount 
  }

  void pet() {
    // fails if kindness < 0
    // otherwise, increases kindness amount 
  }

  void feed() {
    // increases kindness amount based on food
  }
}

class PetBuilder {
  
  List<Pet> buildThreePets() => [
    Pet('Nasch'),
    Pet.noNickName(),
    Pet('Galaxy')
  ];
}