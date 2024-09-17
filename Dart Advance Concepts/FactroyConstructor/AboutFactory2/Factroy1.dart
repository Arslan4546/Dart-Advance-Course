// 1. Factory Constructor vs. Generative Constructor:
// A generative constructor always creates a new instance of the class.
// A factory constructor allows you to control what instance is returned. You can:
// Return a new instance.
// Return a cached instance (singleton).
// Return an instance of a subclass.

// Example of Generative Constructor:

// class MyClass {
//   final int value;

//   // This is a generative constructor
//   MyClass(this.value);
// }

// void main() {
//   // This will create a new instance every time
//   var obj1 = MyClass(5);
//   var obj2 = MyClass(5);

//   print(
//       obj1 == obj2); // Output: false (because they are two separate instances)
// }

// In the above example, even though both obj1 and obj2 are created with the same value, they are different objects in memory because each MyClass call creates a new instance.

// Example of Factory Constructor:

// A factory constructor can control how objects are created. For instance, we can implement caching or return an already created instance (singleton pattern).

class MyClass {
  final int value;

  // Static field to hold the cached instance
  static MyClass? _cachedInstance;

  // Private named constructor to create the instance internally
  MyClass._internal(this.value);

  // Factory constructor
  factory MyClass(int value) {
    // If an instance already exists, return it instead of creating a new one
    return _cachedInstance ??= MyClass._internal(value);
  }
}

void main() {
  var obj1 = MyClass(5); // First instance created
  var obj2 = MyClass(10); // Second call, but the same instance is returned

  print(obj1 == obj2); // Output: true (both are the same instance)
  print(obj1.value); // Output: 5 (still 5 because we used the cached instance)
  print(obj2.value); // Output: 5 (same instance)
}

// Explanation:
// Generative Constructor (MyClass(this.value)):
// Each time we create a new object using MyClass(5), a new instance is created in memory.
// obj1 == obj2 evaluates to false because obj1 and obj2 are different instances.
// Factory Constructor (factory MyClass(int value)):
// The factory constructor checks if an instance already exists in _cachedInstance.
// If it doesn't exist, it creates a new one using the private named constructor (_internal).
// If an instance already exists, it returns the cached instance.
// In this example, obj1 == obj2 evaluates to true because the same cached instance is returned for both obj1 and obj2.