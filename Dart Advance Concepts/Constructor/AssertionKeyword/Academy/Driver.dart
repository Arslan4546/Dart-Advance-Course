import 'Person.dart';

class Driver extends Person {
  String _name;
  double _salary;

// ==> Method 1 to initalize the super constructor super construcotor arguments
  // Driver({
  //   String name = "Arslan",
  //   double salary = 37000.0,
  //   int age = 12,
  // })  : assert(salary >= 37000.0, "The salary shoud be greater than 37k "),
  //       _name = name,
  //       _salary = salary,
  //       super(age: age);

// ==> Method 2 to initalize the super constructor super construcotor arguments

  // Driver({String name = "Arslan", double salary = 37000.0, super.age})
  //     : assert(salary >= 37000.0, "The salary shoud be greater than 37k "),
  //       _name = name,
  //       _salary = salary;

  // ==> Method 3 to initalize the super constructor super construcotor arguments

  Driver({
    String name = "Arslan",
    double salary = 37000.0,
    super.age = 10,
  })  : assert(salary >= 37000.0, "The salary shoud be greater than 37k "),
        _name = name,
        _salary = salary;

  @override
  String toString() {
    return "Name : $_name , Salary: $_salary ,";
  }
}
