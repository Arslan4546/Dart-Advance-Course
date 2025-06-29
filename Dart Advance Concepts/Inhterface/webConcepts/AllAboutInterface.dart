// In Dart, the concept of an interface is not explicitly declared with a special keyword like in Java. Instead, every class in Dart can act as an interface. If a class or a set of classes wants to implement an interface, it can do so using the implements keyword.

// When a class implements another class in Dart (which acts like an interface), it must provide concrete implementations for all the methods defined in that class. Dart does not have abstract methods or interfaces explicitly, but abstract classes can be used similarly.

// Let's adapt the Java example to Dart:

// Example of Interface-like Behavior in Dart:

// Defining an abstract class that works like an interface

abstract class Animal {
  // Abstract method, no implementation provided
  void sound();

  // Default method with implementation
  void sleep() {
    print("The animal is sleeping.");
  }
}

// Class Dog implements the Animal interface
class Dog implements Animal {
  @override
  void sound() {
    print("Bark");
  }

  @override
  void sleep() {
    print("The dog is sleeping peacefully.");
  }
}

// Class Cat implements the Animal interface
class Cat implements Animal {
  @override
  void sound() {
    print("Meow");
  }

  @override
  void sleep() {}
  // This class will inherit the default sleep method if not overridden.
}

void main() {
  // Creating objects and calling interface methods
  Animal dog = Dog();
  dog.sound(); // Output: Bark
  dog.sleep(); // Output: The dog is sleeping peacefully.

  Animal cat = Cat();
  cat.sound(); // Output: Meow
  cat.sleep(); // Output: The animal is sleeping.
}


// Explanation of Interfaces in Dart (Dart Core Concepts):
// Abstract Classes: In Dart, abstract classes can be used as a way to define interfaces. An abstract class is defined using the abstract keyword, and it can have method declarations (with or without implementation). Any class that implements an abstract class must provide the actual method definitions for any methods declared without implementation.

// In the example above, Animal is an abstract class acting like an interface, which declares an abstract method sound() and provides a default implementation of the method sleep().

// Implements Keyword: Dart uses the implements keyword to implement an interface. When a class implements another class, it must provide implementations for all the methods and properties declared in the interface (abstract class). If the abstract class provides a method with implementation (like sleep()), the class can override it if needed.

// In the above code, both Dog and Cat implement the Animal interface and must provide their own implementation of the sound() method. The Dog class also overrides the sleep() method, but Cat does not, so it uses the default sleep() method from Animal.

// Abstract Methods: Dart does not have explicit abstract methods, but if a method is declared without a body in an abstract class, it is considered abstract. Classes implementing the abstract class must define such methods.

// Polymorphism with Interfaces: You can assign a reference of an abstract class type (interface) to an object of a class that implements the abstract class. This allows polymorphism, where different objects can be treated the same way as long as they follow the same contract (interface).

// In the example:


// Animal dog = Dog(); // Polymorphism
// Animal cat = Cat();

// Both dog and cat are instances of classes that implement the Animal interface, and you can call sound() or sleep() on them regardless of whether they are a Dog or Cat.

// No Explicit Interface Keyword: Unlike some other languages (like Java), Dart doesn't have an interface keyword. Instead, any class can serve as an interface by declaring methods that need to be implemented by other classes. You use the implements keyword to implement such behavior.

// Default Method Behavior:
// In Dart, when you provide a method with implementation in an abstract class, any implementing class can choose to use it as-is or override it to provide a custom implementation. This is similar to default methods in interfaces in Java 8+.

// In the example:

// Cat uses the default sleep() method from Animal.
// Dog overrides the sleep() method to provide its own version.
// Dart Doesn't Support Multiple Inheritance, but Classes Can Implement Multiple Interfaces:
// In Dart, a class can implement multiple interfaces (abstract classes), which allows it to inherit behaviors from more than one source.

//Example of Implementing Multiple Interfaces:

// abstract class Flyable {
//   void fly();
// }

// abstract class Swimable {
//   void swim();
// }

// class Duck implements Flyable, Swimable {
//   @override
//   void fly() {
//     print("Duck is flying.");
//   }

//   @override
//   void swim() {
//     print("Duck is swimming.");
//   }
// }

// void main() {
//   Duck duck = Duck();
//   duck.fly();   // Output: Duck is flying.
//   duck.swim();  // Output: Duck is swimming.
// }


// Here, the Duck class implements two interfaces (Flyable and Swimable), and it must provide concrete implementations of both the fly() and swim() methods.

// Summary of Interfaces in Dart:
// Abstract Classes: In Dart, abstract classes are used to define interfaces.
// Implements: A class that implements an abstract class must define all of the abstract methods of that class.
// Polymorphism: Interfaces allow you to achieve polymorphism, treating objects of different classes that implement the same interface uniformly.
// No Multiple Inheritance: Dart doesn’t support multiple inheritance, but it allows a class to implement multiple interfaces, giving it access to multiple behaviors.