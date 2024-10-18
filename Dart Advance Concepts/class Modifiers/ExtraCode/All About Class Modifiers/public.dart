// Public Classes and Members (Default Modifier)
// Object Creation: A public class ka object kisi bhi file mein ban sakta hai.
// Access: Is class ke members (variables/methods) ko doosri files se directly access kiya ja sakta hai agar wo public hain (name underscore _ se shuru nahi hota).
// Inheritance: Public classes ko aap freely extend kar sakte ho.

// Example:
// File: public_class.dart

class PublicClass {
  String publicProperty = "This is public";

  void publicMethod() {
    print("Public method is called");
  }
}

// File: main.dart

// import 'public_class.dart';

void main() {
  PublicClass obj = PublicClass(); // Object creation
  print(obj.publicProperty); // Access public member
  obj.publicMethod(); // Call public method
}
