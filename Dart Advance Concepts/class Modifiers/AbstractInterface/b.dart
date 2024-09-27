import 'a.dart';

class Horse extends Animal {}
// we cannot extends the Animal Class

class Lion implements Animal {
  @override
  void sound() {
    print("this is the lion sound");
  }

  @override
  void eat() {
    print("lion eats flesh");
  }
}

void main(List<String> args) {
  Animal animal = Animal();
  // cannot create object of the animal
}
// we cannot extends and also cannot create object of abstract interface class

