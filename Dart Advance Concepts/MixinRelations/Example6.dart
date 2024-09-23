class Animal {
  void sleep() {
    print("Animal is sleeping");
  }
}

class Walker {
  void walk() {
    print("Walking on two legs");
  }
}

// Mixin that can only be applied to classes that extend Animal and implement Walker
mixin HumanBehavior on Animal, Walker {
  void speak() {
    print("This human speaks");
  }

  void demonstrateBehaviors() {
    sleep(); // Accessing Animal's method
    walk(); // Accessing Walker's method
    speak(); // Method from this mixin
  }
}

// Now, this class satisfies both conditions:
// 1. It extends Animal
// 2. It implements Walker
class Human extends Animal with Walker, HumanBehavior {}
// this  show the error because

void main() {
  Human human = Human();
  human.sleep(); // Inherited from Animal
  human.walk(); // From Walker interface
  human.speak(); // From HumanBehavior mixin
  human.demonstrateBehaviors(); // Calls all behaviors (sleep, walk, speak)
}

// iss ka mtlab hai k ap mimxin mai ik sy ziada on classes py implement ni kr skty
