mixin Breathing {
  void breathing() => print('breathing');
}

mixin Swimming {
  void swim() => print('swimming');
}

class Animal with Breathing {
  void breathe() => print('breathing');
}

class Plant with Breathing {}

class Fish extends Animal with Swimming {}

class Human extends Animal with Swimming {}

void main() {
  final fish = Fish();
  fish.swim();
  final human = Human();
  human.swim();

  // final breathing = Breathing();
  // final swimming = Swimming();
}
