import 'a.dart';

class Horse extends Animal {}
//we can extends

class Lion implements Animal {
  @override
  int legs = 9;
}
// we can implement

class Cat with Animal {}
// we can use with with the mixin class

void main(List<String> args) {
  Animal animal = Animal();
}
