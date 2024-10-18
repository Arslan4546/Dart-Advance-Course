// Abstract Classes
// Object Creation: Aap abstract class ka object direct nahi bana sakte.
// Access: Abstract class ke concrete methods ko extend karne wali classes use kar sakti hain.
// Inheritance: Abstract classes ko extend karna lazmi hota hai taake abstract methods ko implement kiya ja sake.

// Example:
// File: animal.dart

abstract class Animal {
  void makeSound(); // Abstract method

  void sleep() {
    print("Animal is sleeping");
  }
}

class Dog extends Animal {
  @override
  void makeSound() {
    print("Bark");
  }
}

// File: main.dart

// import 'animal.dart';

void main() {
  Dog dog = Dog(); // Object creation of a subclass
  dog.makeSound(); // Calls the subclass implementation
  dog.sleep(); // Calls the concrete method from abstract class
}
