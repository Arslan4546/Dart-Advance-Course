import 'Student.dart';

void main() {
  // Calling the main constructor directly
  var student1 = Student(
    rollNo: 101,
    name: "Alex",
    address: "123 Street",
    favoriteTeacher: "Mr. John",
  );

  // Using constructor with just favorite teacher
  var student2 = Student.withTeacher("Ms. Jane");

  // Using constructor with name and favorite teacher
  var student3 = Student.withNameAndTeacher("Bob", "Mr. Smith");

  // Output the students
  print(
      student1); // Output: Name: Alex, Address: 123 Street, RollNo: 101, Favorite Teacher: Mr. John
  print(
      student2); // Output: Name: Unknown, Address: Unknown, RollNo: 0, Favorite Teacher: Ms. Jane
  print(
      student3); // Output: Name: Bob, Address: Unknown, RollNo: 0, Favorite Teacher: Mr. Smith
}
