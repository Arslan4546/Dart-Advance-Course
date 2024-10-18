//Other concepts

// Student? s;
// void main(List<String> args) {
//   s ??=
//       Student(); // if s is null then create the new instance of the class Student
//   s!.name = "Hannan"; // set the name Hannan
//   print(s!.name); // Print the name
// }

// class Student {
//   int rollNo = 12;
//   String name = "Arslan";
// }

//OUtput: Hannan

//iss mai basically student class ka ik instance banaya hai s or main function mai ager s null hai to new instance create kr dia hai Student Class ka

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


// Dart Code for creating an object using null aware assginment operator , generally in dart language assignment operator can eliminate the if, else condition and make the code easy and readable


// class DB {
//   static DB? _instance;
//   DB._instant() {}

//   static DB getInstance() {
//     return _instance ??= DB._instant();
//   }

// }



// Java Code for creating an object using null aware assginment operator

// class DB {
//   Static private DB instance;

//   DB(){}

//   static DB GetInstance(){

//     if(instance == null){
//           return instance = new DB();    
             
//     } else{
//       return instance;
//     }
//   }
    
//     }

