class Animal {
  final int age;
  const Animal({required this.age});
  void sleep() => print("sleep");
  void eat() => print("eat");
  void move() => print("move");
}

class Dog extends Animal {
  Dog({required int age}) : super(age: age);

  // extends keyword for inheriting the base class
  void bark() => print("bark");
  // @override
  // void sleep() => print("dog : sleep");

  // void sleep() {
  //   sleep();
  // } // Stack Overflow Exception

  @override
  void sleep() {
    super.sleep();
    print("sleep : some more");
  }
}

class Cow extends Animal {
  Cow({required int age}) : super(age: age);

  void moo() => print("mooo");
}

class CleverDog extends Dog {
  CleverDog({required int age}) : super(age: age);

  void catchBall() => print("Caught the ball");
}

void main() {
  final animal = Animal(age: 10);
  animal.sleep();
  // shift+ctrl+Y --> For Debug Console
  final dog = Dog(age: 10);
  dog.bark();
  // Because 'Dog' extends 'Animal' Then 'Dog' has access to all the
  // members and variables of 'Animal'. This means that we can type
  // dog.sleep(); And this is because 'Dog' extends 'Animal' which contains
  // the sleep method.

  dog.sleep();

  // But we can't call animal.bark(); And that's because the method 'bark'
  // isn't defined for the type 'Animal'

  final cow = Cow(age: 10);
  cow.moo();
  cow.sleep();

  // CleverDog extends Dog and Dog extends Animal and therefore :

  final cleverDog = CleverDog(age: 10);
  cleverDog.catchBall();
  cleverDog.bark();
  cleverDog.sleep();
}
