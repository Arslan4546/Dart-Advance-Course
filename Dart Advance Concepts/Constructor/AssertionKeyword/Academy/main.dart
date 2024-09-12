import 'Driver.dart';
import 'Person.dart';

void main(List<String> args) {
  Driver d = Driver(name: "Arslan", age: 12, salary: 120000.0);
  Person p = Person(age: 12);
  print(d);
  print(p);
}
