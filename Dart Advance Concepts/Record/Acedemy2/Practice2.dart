// // Example 1

// void main(List<String> args) {
//   ({String name, double salary, int age}) empRecord;
//   empRecord = (name: "Arslan", salary: 12000.0, age: 23);
//   print(empRecord);

//   var (:name, :age, :salary) = empRecord;

//   print("Name : $name , Salary :$salary , Age : $age");

//   // this is called destructuring
// }

// Example 2

// void main(List<String> args) {
//   // Creating a structured record for a book's details
//   ({String title, String author, double price}) bookRecord;

//   // Structuring the record by assigning values to the fields
//   bookRecord =
//       (title: "The Flutter Journey", author: "John Smith", price: 29.99);

//   // Printing the structured record
//   print(bookRecord);

//   // Accessing individual fields after structuring
//   print(
//       "Title: ${bookRecord.title}, Author: ${bookRecord.author}, Price: \$${bookRecord.price}");

//   // this is called structuring
// }

// Example 3

class Teacher {
  String name;
  int age;
  double salary;
  Teacher({required this.age, required this.name, required this.salary});
}

void main(List<String> args) {
  var record = Teacher(age: 12, name: "Arslan", salary: 100000);

  var Teacher(:name, :age, :salary) = record;
  print("Name :$name, Salary : $salary, Age: $age");
}


// this is the simple destructuring of the class constructor just like the destructuring of the record type
