// ==> Example 3: Named Constructor In Dart

// In this example below, there is a class Animal with two properties name and age. The class has three constructors. The first constructor is a default constructor. The second and third constructors are named constructors. The second constructor is used to initialize the values of name and age, and the third constructor is used to initialize the value of name only. We also have an object of the class Animal called animal.

// class Animal {
//   String? name;
//   int? age;

//   // Default Constructor
//   Animal() {
//     print("This is a default constructor");
//   }

//   // Named Constructor
//   Animal.namedConstructor(String name, int age) {
//     this.name = name;
//     this.age = age;
//   }

//   // Named Constructor
//   Animal.namedConstructor2(String name) {
//     this.name = name;
//   }
// }
// void main(){
//   // Here animal is object of class Animal.
//   Animal animal = Animal.namedConstructor("Dog", 5);
//   print("Name: ${animal.name}");
//   print("Age: ${animal.age}");

//   Animal animal2 = Animal.namedConstructor2("Cat");
//   print("Name: ${animal2.name}");
// }


// ==> Show Output
// Name: Dog
// Age: 5
// Name: Cat