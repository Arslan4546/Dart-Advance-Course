// Private Classes and Members
// Object Creation: Private classes ka object doosri file mein nahi ban sakta, kyun ke wo class sirf ussi file mein access ho sakti hai jahan wo declare hui ho.
// Access: Private members ko doosri file se access nahi kiya ja sakta (underscore _ se shuru hote hain).
// Inheritance: Private classes ko extend nahi kiya ja sakta, sirf ussi file mein accessible hoti hain.

// Example:
// File: private_class.dart

class _PrivateClass {
  // Private class
  String _privateProperty = "This is private";

  void _privateMethod() {
    print("Private method is called");
  }
}

class PublicClass {
  _PrivateClass privateObj = _PrivateClass(); // Access allowed within same file
}

// File: main.dart

// import 'private_class.dart';

void main() {
  // _PrivateClass obj = _PrivateClass(); // Error: Can't access private class
}
