// Mixin Classes
// Object Creation: Mixin ka direct object nahi bana sakte. Mixin ko kisi class mein with keyword ke sath use kiya jata hai.
// Access: Mixin ke methods ko wo classes use kar sakti hain jo isse with keyword se mix karti hain.
// Inheritance: Mixin inheritance ka part nahi hoti. Isse functionality share ki jati hai.

// Example:
// File: swimmer.dart

mixin Swimmer {
  void swim() {
    print("Swimming");
  }
}

// File: fish.dart

// import 'swimmer.dart';

class Fish with Swimmer {
  void display() {
    print("I am a fish");
  }
}

// File: main.dart

// import 'fish.dart';

void main() {
  Fish fish = Fish(); // Object creation of a class with mixin
  fish.display(); // Calls method from class
  fish.swim(); // Calls method from mixin
}
