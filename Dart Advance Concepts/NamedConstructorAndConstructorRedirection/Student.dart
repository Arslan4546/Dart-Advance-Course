// import 'dart:convert';

// class Student {
//   String? name;
//   int? rollNo;

//   Student({this.name, this.rollNo});

// Constructor Redirecting
/// converting json data int map

// Student.fromJson(String json) : this.fromMap(jsonDecode(json));

// Student.fromMap(Map<String, dynamic> map)
//     : this(name: map["Name"], rollNo: map["ROllNo"]);

// simple and old method of converting json data into map data
// Student.fromJsonOld(String json) {
//   var map = jsonDecode(json);
//   name = map["name"];
//   rollNo = map["rollNo"];
// }
// Student.fromMapOld(Map<String, dynamic> map) {
//   name = map["name"];
//   rollNo = map["rollNo"];
// }
//}

// ==>  Another Exampel of Constructor Redirecting

// class Person {
//   String? name;
//   int? age;

//   // Main constructor
//   Person({this.name, this.age});

//   // Redirecting constructor from another constructor
//   Person.fromName(String name) : this(name: name, age: 0);

//   // Redirecting constructor from a map
//   Person.fromMap(Map<String, dynamic> map)
//       : this(name: map['name'], age: map['age']);
// }

// ==> Another Example of COnstructor Redirecting
// class Student {
//   String? name;
//   int? age;

// // Constructor Redirecting
//   /// converting json data int map

//   Student({this.name, this.age});
//   Student.fromMap(Map<String, dynamic> map)
//       : this(name: map["Name"], age: map["Age"]);
// }
