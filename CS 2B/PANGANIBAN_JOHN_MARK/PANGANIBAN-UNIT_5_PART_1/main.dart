import 'animal.dart';
import 'pet.dart';

void main() {
  List<Animal> ZOO = AnimalBuilder().buildFiveAnimals();
  List<Pet> PET_HOME = PetBuilder().buildThreePets();
}