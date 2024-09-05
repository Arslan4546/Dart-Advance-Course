// Create a class “Academy” Associate the class “Student” as a nullable
// data type in Academy along with 5 different data types.

class Student {
  String name;
  int rollNO;

  Student({required this.name, required this.rollNO});

  @override
  String toString() {
    return "Name : $name RollNo : $rollNO";
  }
}

class Academy {
  Student? student;

  String AcademyName;
  List<String> courses;
  double fee;
  int licenseNO;
  Academy(
      {this.student,
      required this.AcademyName,
      required this.courses,
      required this.fee,
      required this.licenseNO});

  @override
  String toString() {
    return """
Academy Name : $AcademyName
Courses : $courses
License NO : $licenseNO
Fee : $fee
Student : ${student == null ? "NO Student Enroll Yet!" : student.toString()}
""";
  }
}

void main(List<String> args) {
  Student student = Student(name: "Arslan", rollNO: 1161);

  Academy academywithStudent = Academy(
    AcademyName: "CAS",
    courses: ["Flutter Dev", "Andriod Dev", "Web Dev"],
    licenseNO: 1122,
    fee: 90.0,
    student: student,
  );

  Academy academywithoutStudent = Academy(
    AcademyName: "CAS",
    courses: ["Flutter Dev", "Andriod Dev", "Web Dev"],
    licenseNO: 1122,
    fee: 90.0,
    student: null,
  );

  print("With Student \n");
  print(academywithStudent);
  print("Without  Student \n");
  print(academywithoutStudent);
}

































































// class Student {
//   String name;
//   int age;

//   Student({required this.name, required this.age});

//   @override
//   String toString() {
//     return 'Student(name: $name, age: $age)';
//   }
// }

// class Academy {
//   // Nullable Student object
//   Student? student;

//   // Other data types
//   String academyName;
//   List<String> coursesOffered;
//   double annualFee;

//   Academy({
//     this.student, // Nullable type
//     required this.academyName,
//     required this.coursesOffered,
//     required this.annualFee,
//   });

//   @override
//   String toString() {
//     return '''
//     Academy Name: $academyName
//     Courses Offered: $coursesOffered
//     Annual Fee: $annualFee
//     Student: ${student == null ? "No student enrolled yet" : student.toString()}
//     ''';
//   }
// }

// void main() {
//   // Creating a student

//   // Creating an Academy instance with a student
//   Academy academyWithStudent = Academy(
//     academyName: "Tech Academy",
//     coursesOffered: ["Computer Science", "Data Science", "AI"],
//     annualFee: 1500.50,
//   );

//   // Creating an Academy instance without a student (student is null)
//   Academy academyWithoutStudent = Academy(
//     academyName: "Art Academy",
//     coursesOffered: ["Fine Arts", "Graphic Design"],
//     annualFee: 1200.75,
//   );

//   print(academyWithStudent);
//   print(academyWithoutStudent);
// }
