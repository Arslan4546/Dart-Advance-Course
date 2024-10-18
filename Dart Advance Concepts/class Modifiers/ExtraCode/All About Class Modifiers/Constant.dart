// Const Classes
// Object Creation: Const class ka object aap const keyword se bana sakte hain aur wo compile-time constant hota hai.
// Access: Const members ko access karna normal members ki tarah hota hai.
// Inheritance: Const classes ko extend nahi kiya ja sakta agar wo sirf final fields contain karti hain.
// Example:
// File: point.dart

class Point {
  final int x;
  final int y;

  const Point(this.x, this.y);
}

// File: main.dart

// import 'point.dart';

void main() {
  const point1 = Point(2, 3); // Compile-time constant
  const point2 = Point(2, 3);

  print(point1 == point2); // Output: true (Both are compile-time constants)
}




// Yeh har class modifier ka detail hai Dart mein. Aap dekh sakte hain ke private, abstract, mixin, final aur sealed classes mein kahan object creation allowed hai, kahan nahi, aur inheritance ke kya rules hain.