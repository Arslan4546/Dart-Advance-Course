// ==> Named Constructor In Dart

// In most programming languages like java, c++, c#, etc., we can create multiple constructors with the same name. But in Dart, this is not possible. Well, there is a way. We can create multiple constructors with the same name using named constructors.


// Note: 
//Named constructors improves code readability. It is useful when you want to create multiple constructors with the same name.

// Example 1: Named Constructor In Dart

// In this example below, there is a class Student with three properties: name, age, and rollNumber. The class has two constructors. The first constructor is a default constructor. The second constructor is a named constructor. The named constructor is used to initialize the values of the three properties. We also have an object of the class Student called student.

class Student {
  String? name;
  int? age;
  int? rollNumber;

  // Default Constructor
  Student() {
    print("This is a default constructor");
  }

  // Named Constructor
  Student.namedConstructor(String name, int age, int rollNumber) {
    this.name = name;
    this.age = age;
    this.rollNumber = rollNumber;
  }
}

void main() {
  // Here student is object of class Student.
  Student student = Student.namedConstructor("John", 20, 1);
  print("Name: ${student.name}");
  print("Age: ${student.age}");
  print("Roll Number: ${student.rollNumber}");
}


 //  ===> Show Output:
// This is a default constructor
// Name: John
// Age: 20
// Roll Number: 1