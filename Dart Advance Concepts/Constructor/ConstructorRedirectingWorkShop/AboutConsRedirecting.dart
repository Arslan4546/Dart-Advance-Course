// In Dart, constructor redirecting refers to the practice of one constructor calling another constructor in the same class. It helps to avoid code duplication when multiple constructors share common initialization code.

// 1. Constructor Redirecting Example
// Here's a simple example that demonstrates constructor redirecting:

class Person {
  String name;
  int age;

  // Main constructor
  Person(this.name, this.age);

  // Redirecting constructor (default values)
  Person.named() : this('John Doe', 30); // Redirecting to main constructor
}

void main() {
  var person1 = Person('Alice', 25);
  var person2 = Person.named();

  print('Person 1: ${person1.name}, ${person1.age}');
  print('Person 2: ${person2.name}, ${person2.age}');
}



// In the above example:
// Person.named() is redirecting to the main constructor Person(this.name, this.age) by providing default values 'John Doe' and 30.


// 2. Redirecting Constructor with Multiple Constructors
// You can have multiple redirecting constructors pointing to the same constructor or each other:


// class Car {
//   String brand;
//   String model;
//   int year;

//   // Main constructor
//   Car(this.brand, this.model, this.year);

//   // Redirecting constructor 1
//   Car.toyota(String model) : this('Toyota', model, 2020);

//   // Redirecting constructor 2
//   Car.tesla() : this.toyota('Model S'); // Redirecting to another constructor
// }

// void main() {
//   var car1 = Car('Honda', 'Civic', 2019);
//   var car2 = Car.toyota('Corolla');
//   var car3 = Car.tesla();

//   print('Car 1: ${car1.brand}, ${car1.model}, ${car1.year}');
//   print('Car 2: ${car2.brand}, ${car2.model}, ${car2.year}');
//   print('Car 3: ${car3.brand}, ${car3.model}, ${car3.year}');
// }
// In this case:

// Car.tesla() is redirecting to Car.toyota('Model S'), which in turn redirects to the main constructor.

// 3. Calling Parent Class Constructor from Child Class
// In Dart, you can call a parent class constructor from a child class constructor using the super keyword. This helps initialize the parent class fields before proceeding with the child class initialization.

// Example:

// class Animal {
//   String species;

//   // Parent class constructor
//   Animal(this.species);
// }

// class Dog extends Animal {
//   String name;

//   // Child class constructor
//   Dog(String species, this.name) : super(species); // Calling parent constructor

//   void display() {
//     print('Species: $species, Name: $name');
//   }
// }

// void main() {
//   var dog = Dog('Canine', 'Buddy');
//   dog.display();
// }

// In this example:

// The Dog class constructor calls the Animal class constructor using super(species) to initialize the species field in the parent class.
// In the main() function, Dog object is created, and the display() method is used to show the values.


// 4. Redirecting Constructor and Calling Parent Constructor Together
// It’s also possible to use constructor redirecting and call the parent constructor in the child class simultaneously.

// Example:

// class Vehicle {
//   String type;

//   Vehicle(this.type); // Parent class constructor
// }

// class Car extends Vehicle {
//   String brand;
//   String model;

//   // Main constructor calling parent constructor
//   Car(this.brand, this.model) : super('Car');

//   // Redirecting constructor
//   Car.tesla() : this('Tesla', 'Model S'); // Redirecting to main constructor
// }

// void main() {
//   var car1 = Car('Toyota', 'Corolla');
//   var car2 = Car.tesla();

//   print('Car 1: ${car1.type}, ${car1.brand}, ${car1.model}');
//   print('Car 2: ${car2.type}, ${car2.brand}, ${car2.model}');
// }
// In this case:

// The main constructor Car(this.brand, this.model) calls the parent constructor super('Car').
// The redirecting constructor Car.tesla() calls the main constructor this('Tesla', 'Model S'), which, in turn, calls the parent constructor.