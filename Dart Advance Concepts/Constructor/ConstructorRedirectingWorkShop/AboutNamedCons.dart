// Example 1: Named Constructors in Dart

// class Car {
//   String brand;
//   int? year;

//   // Default constructor
//   Car(this.brand, this.year);

//   // Named constructor
//   Car.electric(this.brand) {
//     year = 2023; // Assign default value for electric cars
//   }

//   void display() {
//     print('Brand: $brand, Year: $year');
//   }
// }

// void main() {
//   var car1 = Car('Toyota', 2020); // Using default constructor
//   var car2 = Car.electric('Tesla'); // Using named constructor

//   car1.display();
//   car2.display();
// }

// Example 2: Calling Parent Class Constructor in Child Constructor

// class Vehicle {
//   String type;

//   // Parent class constructor
//   Vehicle(this.type);

//   void showType() {
//     print('Vehicle type: $type');
//   }
// }

// class Truck extends Vehicle {
//   String brand;

//   // Calling parent class constructor from child class constructor
//   Truck(this.brand) : super('Truck');

//   void showBrand() {
//     print('Brand: $brand');
//   }
// }

// void main() {
//   var truck = Truck('Ford');
//   truck.showType(); // Calls method from parent class
//   truck.showBrand(); // Calls method from child class
// }

// Example 3: Calling Named Parent Class Constructor in Child Constructor

// class Animal {
//   String? name;

//   // Parent default constructor
//   Animal(this.name);

//   // Parent named constructor
//   Animal.wild() {
//     name = 'Wild Animal';
//   }

//   void display() {
//     print('Animal Name: $name');
//   }
// }

// class Dog extends Animal {
//   String breed;

//   // Child class calling parent class named constructor
//   Dog(this.breed) : super.wild();

//   void showDetails() {
//     print('Breed: $breed, Name: $name');
//   }
// }

// void main() {
//   var myDog = Dog('Golden Retriever');
//   myDog.display(); // Inherited from Animal class
//   myDog.showDetails();
// }
// In these examples:

// Named Constructors allow you to create different variations of object initialization.
// Parent Constructor Call in the child constructor is done using : super(), allowing you to initialize the parent part of the object.