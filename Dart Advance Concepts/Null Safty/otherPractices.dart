//Other concepts

// Student? s;
// void main(List<String> args) {
//   s ??= Student(); // if s is null then create the new instance of the class Student
//   s?.name = "Hannan"; // set the name Hannan
//   print(s?.name); // Print the name
// }

// class Student {
//   int rollNo = 12;
//   String name = "Arslan";
// }

//OUtput: Hannan

//iss mai basically student class ka ik variable banaya hai s or main function mai ager s null hai to new instance create kr dia hai Student Class ka

Student? s;
void main(List<String> args) {
  // Student student = Student();
  // student.name = "hannan";
  // student.rollNo = 23;
  // Student student = Student()
  //   ..name = "Hannan"
  //   ..rollNo = 45;
  // print(student.name);

  s ??= Student();
  s
    ?..name = "Mannan"
    ..rollNo = 45;
  print(s?.name);
}

class Student {
  int rollNo = 12;
  String name = "Arslan";
}
