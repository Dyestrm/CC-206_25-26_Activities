class Pet {
  String nickname = "";
  int kindness = 0;

  Pet();
  Pet.withNickName(this.nickname) { this.kindness = 50; }

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
