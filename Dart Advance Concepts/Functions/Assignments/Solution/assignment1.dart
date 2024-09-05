// Assignment no 1.
//List down all the possible parameter types. (i.e. Default
// parameters, optional parameters). with a simple example in a Dart File
// using Isolation.

void main() {
  // 1. Positional Parameters
  print(greet("Arslan", 25)); // Output: Hello Arslan, age is 25

  // 2. Optional Positional Parameters
  print(greetOptional("Arslan")); // Output: Hello Arslan, age is unknown

  // 3. Named Parameters
  print(namedGreet(name: "Arslan", age: 25)); // Output: Hello Arslan, age is 25

  // 4. Optional Named Parameters
  print(optionalNamedGreet(
      name: "Arslan")); // Output: Hello Arslan, age is unknown

  // 5. Required Named Parameters
  print(requiredNamedGreet(
      name: "Arslan", age: 25)); // Output: Hello Arslan, age is 25

  // 6. Default Parameters
  print(defaultParamGreet("Arslan")); // Output: Hello Arslan, age is 18
}

// 1. Positional Parameters
String greet(String name, int age) {
  return "Hello $name, age is $age";
}

// 2. Optional Positional Parameters
String greetOptional(String name, [int? age]) {
  return "Hello $name, age is ${age ?? 'unknown'}";
}

// 3. Named Parameters
String namedGreet({required String name, required int age}) {
  return "Hello $name, age is $age";
}

// 4. Optional Named Parameters
String optionalNamedGreet({required String name, int? age}) {
  return "Hello $name, age is ${age ?? 'unknown'}";
}

// 5. Required Named Parameters
String requiredNamedGreet({required String name, required int age}) {
  return "Hello $name, age is $age";
}

// 6. Default Parameters
String defaultParamGreet(String name, {int age = 18}) {
  return "Hello $name, age is $age";
}
