// Sealed Classes
// Object Creation: Sealed class ka object direct nahi bana sakte. Sirf uski subclasses ka object bana sakte hain.
// Access: Sealed classes ki subclasses ko usi file mein bana sakte hain.
// Inheritance: Sealed classes ko sirf ussi file mein extend kiya ja sakta hai.

// Example:
// File: shape.dart

sealed class Shape {}

class Circle extends Shape {}

class Square extends Shape {}

// File: main.dart

// import 'shape.dart';

void main() {
  Shape shape1 = Circle(); // Object creation of a subclass
  Shape shape2 = Square(); // Object creation of a subclass
}
