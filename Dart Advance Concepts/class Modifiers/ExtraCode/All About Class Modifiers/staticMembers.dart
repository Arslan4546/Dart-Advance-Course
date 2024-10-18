// Static Members
// Object Creation: Static members ka object ka part nahi hote. Inko class ke through directly access kiya ja sakta hai.
// Access: Static members ko aap bina object banaye access kar sakte hain.
// Inheritance: Static members inheritance ka hissa nahi bante, lekin subclass inko access kar sakti hai.

// Example:
// File: math_utils.dart

class MathUtils {
  static const double pi = 3.14159;

  static double calculateAreaOfCircle(double radius) {
    return pi * radius * radius;
  }
}

// File: main.dart
// dart
// Copy code
// import 'math_utils.dart';

void main() {
  print(MathUtils.pi); // Access static property
  print(MathUtils.calculateAreaOfCircle(5)); // Access static method
}
