// Student? s;
// void main(List<String> args) {
//   s ??= Student()
//     ..age = 23
//     ..name = "Mannan";
//   print(s!.name);
//   // s
//   //   ?..age = 34
//   //   ..name = "mannan";
//   // print(s!.age);
//   // print(s!.name);
// }

// class Student {
//   int? age = 18;
//   String? name = "Arslan";
// }

class Arslan {
  static Arslan? _instance;

  Arslan._internal() {}

  static Arslan foo() {
    return _instance ??= Arslan._internal();
  }
}
