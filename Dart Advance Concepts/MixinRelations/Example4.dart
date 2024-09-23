// Examples of Using the on Keyword in Dart:
// 1. Simple Restriction Example

// class Animal {
//   void move() {
//     print("The animal moves");
//   }
// }

// // Mixin that can only be applied to classes that extend Animal
// mixin CanFly on Animal {
//   void fly() {
//     print("This animal can fly");
//   }
// }

// class Bird extends Animal with CanFly {}

// void main() {
//   Bird bird = Bird();
//   bird.move(); // Inherited from Animal
//   bird.fly(); // From CanFly mixin
// }

// Explanation:

// The CanFly mixin uses on Animal, meaning it can only be applied to classes that extend Animal.
// The Bird class extends Animal and mixes in CanFly, which is allowed because Bird is a subclass of Animal.

// Restricting to an Interface

abstract class Swimmer {
  void swim();
}

mixin FastSwimmer on Swimmer {
  void swimFast() {
    print("Swimming fast!");
  }
}

class Fish implements Swimmer {
  @override
  void swim() {
    print("The fish swims");
  }
}

class Dolphin implements Swimmer {
  @override
  void swim() {
    print("The dolphin swims");
  }
}

class Shark extends Fish with FastSwimmer {}

void main() {
  Shark shark = Shark();
  shark.swim(); // Inherited from Fish (which implements Swimmer)
  shark.swimFast(); // From FastSwimmer mixin
}


// Explanation:

// The FastSwimmer mixin uses on Swimmer, so it can only be applied to classes that implement the Swimmer interface.
// The Shark class extends Fish (which implements Swimmer), so it can mix in FastSwimmer.