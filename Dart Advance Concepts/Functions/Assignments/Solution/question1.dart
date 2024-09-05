//  Create a class “Student” with every primitive data type available in
// Dart. (including Collections)

class Student {
  // Primitive Data Types

  int id = 1;
  double gpa = 3.5;
  String name = "Arslan";
  bool isGraduated = true;

  // Collections

  List<String> subjects = ["English", "Urdu", "Math"];
  Set<int> marks = {12, 32, 43, 54};
  Map<String, double> subjectGrades = {
    "Math": 43.0,
    "English": 50.0,
  };
}
