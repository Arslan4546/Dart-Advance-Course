// Subclass that extends the abstract class

import 'a.dart';

class Dog extends Animal {
  // Implementing the abstract method
  @override
  void sound() {
    print('The dog barks.');
  }
}

class Horse implements Animal {
  @override
  void eat() {
    print("Horse Eat Grass");
  }

  @override
  void sound() {
    print("The Sound of Hore Is Tarik Tarik");
  }
}

void main() {
  // Cannot create an instance of abstract class
  // Animal animal = Animal();  // This will give an error

  // Can create an instance of a subclass
  Dog dog = Dog();
  dog.sound(); // Output: The dog barks.
  dog.eat(); // Output: The animal is eating.

  Horse horse = Horse();
  horse.eat();
  horse.sound();
}
