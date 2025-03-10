// ==> Example 4: Real Life Example Of Named Constructor In Dart
// In this example below, there is a class Person with two properties name and age. The class has three constructors. The first is a parameterized constructor which takes two parameters name and age. The second and third constructors are named constructors. Second constructor fromJson is used to create an object of the class Person from a JSON. The third fromJsonString is used to create an object of the class Person from a JSON string. We also have an object of the class Person called person.

// import 'dart:convert';

// class Person {
//   String? name;
//   int? age;

//   Person(this.name, this.age);

//   Person.fromJson(Map<String, dynamic> json) {
//     name = json['name'];
//     age = json['age'];
//   }

//   Person.fromJsonString(String jsonString) {
//     Map<String, dynamic> json = jsonDecode(jsonString);
//     name = json['name'];
//     age = json['age'];
//   }
// }

// void main() {
// // Here person is object of class Person.
//   String jsonString1 = '{"name": "Bishworaj", "age": 25}';
//   String jsonString2 = '{"name": "John", "age": 30}';

//   Person p1 = Person.fromJsonString(jsonString1);
//   print("Person 1 name: ${p1.name}");
//   print("Person 1 age: ${p1.age}");

//   Person p2 = Person.fromJsonString(jsonString2);
//   print("Person 2 name: ${p2.name}");
//   print("Person 2 age: ${p2.age}");
// }


// ==> Show Output
// Person 1 name: Bishworaj
// Person 1 age: 25
// Person 2 name: John
// Person 2 age: 30