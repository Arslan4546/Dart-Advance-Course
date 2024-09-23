// In Dart, mixins are another important concept that allow for code reuse across multiple classes. They can be combined with interfaces to provide even more flexible and reusable code. While interfaces define a contract that a class must follow, mixins allow classes to share behavior without requiring an inheritance hierarchy.

// Key Concepts:

// Mixin: A mixin is a class whose methods and properties can be used by other classes through mixin application.
// Interfaces: Define a contract, specifying which methods a class should implement.
// Combining Mixins with Interfaces: You can combine the behavior of multiple mixins while also implementing an interface.

// Key Differences:

// Interface: 
// A blueprint of methods that a class must implement.

// Mixin: 
// A way to add functionality to a class without using inheritance. It is applied using the with keyword.
// Example of Combining Mixins and Interfaces:

// Let's say we want to create an animal class that implements the ability to fly and swim, but we also want to reuse common behaviors from mixins like FlyingBehavior and SwimmingBehavior.


// Define an interface (abstract class) Animal
// abstract class Animal {
//   void sound();
// }

// // Define a mixin for flying behavior
// mixin FlyingBehavior {
//   void fly() {
//     print("Flying high in the sky!");
//   }
// }

// // Define a mixin for swimming behavior
// mixin SwimmingBehavior {
//   void swim() {
//     print("Swimming in the water!");
//   }
// }

// // Class Duck implements the Animal interface and uses two mixins
// class Duck implements Animal with FlyingBehavior, SwimmingBehavior {
//   @override
//   void sound() {
//     print("Quack! Quack!");
//   }
// }

// void main() {
//   Duck duck = Duck();
//   duck.sound(); // Output: Quack! Quack!
//   duck.fly();   // Output: Flying high in the sky!
//   duck.swim();  // Output: Swimming in the water!
// }


// Explanation of the Code:
// Animal Interface (abstract class):

// The Animal interface defines an abstract method sound(). Any class that implements Animal must provide its own implementation of sound().
// Mixins (FlyingBehavior and SwimmingBehavior):

// These mixins add behaviors (fly() and swim()) that can be reused across multiple classes. The mixins provide functionality that any class can adopt by applying the with keyword.
// Duck Class:

// The Duck class implements the Animal interface and must define the sound() method.
// By using the with keyword, it adopts the behaviors defined in the FlyingBehavior and SwimmingBehavior mixins. This allows Duck to inherit the fly() and swim() methods without needing to explicitly define them in the Duck class.

// How Mixins and Interfaces Work Together:

// Interfaces define a contract that enforces what methods a class should implement.
// Mixins provide actual method implementations that can be applied to classes, offering reusable behavior.
// By combining both, you ensure that a class follows a certain contract while reusing common functionality from other parts of your code.

// Example of Multiple Mixins and Interfaces:

// You can also combine multiple mixins and interfaces to create more complex classes with a variety of behaviors and enforced contracts.

// Example with Multiple Interfaces and Mixins:

// // Define an interface for animals

// abstract class Animal {
//   void sound();
// }



// // Define an interface for Bird-specific behavior
// abstract class Bird {
//   void layEggs();
// }

// // Define a mixin for flying behavior
// mixin FlyingBehavior {
//   void fly() {
//     print("Flying high!");
//   }
// }

// // Define a mixin for swimming behavior
// mixin SwimmingBehavior {
//   void swim() {
//     print("Swimming in the lake!");
//   }
// }

// // Class Duck implements both Animal and Bird interfaces, and uses Flying and Swimming behavior
// class Duck implements Animal, Bird with FlyingBehavior, SwimmingBehavior {
//   @override
//   void sound() {
//     print("Quack Quack!");
//   }

//   @override
//   void layEggs() {
//     print("Duck is laying eggs.");
//   }
// }

// void main() {
//   Duck duck = Duck();
//   duck.sound();      // Output: Quack Quack!
//   duck.layEggs();    // Output: Duck is laying eggs.
//   duck.fly();        // Output: Flying high!
//   duck.swim();       // Output: Swimming in the lake!
// }


// Explanation:

// Multiple Interfaces: 

// The Duck class implements both Animal and Bird interfaces, meaning it must define the sound() and layEggs() methods.
// Multiple Mixins: The class also mixes in FlyingBehavior and SwimmingBehavior to reuse their fly() and swim() methods.

// Flexible Composition: 

// This composition of mixins and interfaces allows Duck to be a highly flexible class that can exhibit behaviors from multiple sources.

// Important Rules about Mixins in Dart:

// The with Keyword: Mixins are applied to a class using the with keyword.
// Inheritance and Mixins: Mixins do not create an inheritance hierarchy, unlike classes. They are simply pieces of reusable functionality that can be applied to a class.
// Mixin Restrictions: Mixins cannot have constructors, and they cannot be instantiated directly.
// Multiple Mixins: You can use more than one mixin by chaining them with commas:


// class MyClass with MixinOne, MixinTwo {}

// When to Use Mixins vs. Interfaces:

// Use interfaces when you want to define a contract that multiple classes must follow. The classes that implement the interface must provide specific method implementations.
// Use mixins when you have common behavior that you want to share across multiple classes. Mixins help avoid code duplication and reduce the complexity of deep inheritance chains.

// Conclusion:

// Mixins are perfect for sharing reusable behavior between unrelated classes.
// Interfaces enforce a set of methods that must be implemented by a class.
// Combining interfaces and mixins allows for highly flexible, reusable, and modular code in Dart.