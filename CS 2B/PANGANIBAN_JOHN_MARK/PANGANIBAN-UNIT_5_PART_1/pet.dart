class Pet {
  String nickname = "";
  int kindness = 0;

  Pet(this.nickname) { this.kindness = 500; }
  Pet.noNickName(); 

  void kick({int times = 1}) { 
    int kindnessBoost = 100;
    int totalBoosted = 0;

    for (var i = 0; i < times; i++) {
      totalBoosted += kindnessBoost;      
    }
    
    this.kindness -= totalBoosted;
    print('You have kicked $nickname $times times. Kindness decreased by $totalBoosted'); 
  }

  void pet() {
    if (this.kindness < 0) {
      print('Failed to pet ${nickname}. Kindness is at $kindness');
    } else {
      int kindnessBoost = 250;
      kindness += kindnessBoost;
      print('Petting $nickname. Kindness increased by $kindnessBoost');
    }
  }

  void feed(Food food) { 
    kindness += food.kindnessBoost; 
    print('$nickname was fed with ${food.name}. Kindness increased by ${food.kindnessBoost}');
  }

  void checkKindness() {
    print("${nickname}'s kindness level is at $kindness");
  }
}

class PetBuilder {
  
  List<Pet> buildThreePets() => [
    Pet('Nasch'),
    Pet.noNickName(),
    Pet('Galaxy')
  ];
}

enum Food {
  vegetable("vegetable", 300),
  meat("meat", 500);

  final String name;
  final int kindnessBoost;

  const Food(this.name, this.kindnessBoost);
}