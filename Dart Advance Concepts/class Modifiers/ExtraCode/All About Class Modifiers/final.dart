// Final Classes
// Object Creation: Final class ka object freely bana sakte hain.
// Access: Final class ke methods ko bhi use kar sakte hain, lekin doosri class isko extend nahi kar sakti.
// Inheritance: Final classes ko extend nahi kiya ja sakta.

// Example:
// File: final_class.dart

final class FinalClass {
  void show() {
    print("This is a final class");
  }
}

// File: main.dart

// import 'final_class.dart';

void main() {
  FinalClass obj = FinalClass(); // Object creation is fine
  obj.show(); // Calls method from final class
}

// Error (Cannot extend final class):

// class SubClass extends FinalClass {}  // Error: Final class can't be extended