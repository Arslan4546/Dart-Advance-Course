// Qno4. Create a class “FunctionPractice” and create the functions using the
// following signatures.

// (i) String Function(int a, int b)
// (ii) num Function(int a,{String b = ‘Hello World’})
// (iii) bool Function({required num a, required num b})
// (iv) Student Function(String name,{required int age,required String course})

// Also, add a one-line comment explaining the parameter types used in that
// function.

class Student {
  String name;
  int age;

  Student({required this.name, required this.age});

  @override
  String toString() {
    return 'name: $name, age: $age';
  }
}

class FunctionPractice {
  // (i) Function that takes two integers and returns a string
  String Function1(int a, int b) {
    return "Sum of $a and $b is ${a + b}";
  }

  // (ii) Function that takes an integer and an optional string with a default value,
  // and returns a number (num)
  num Function2(int a, {String b = 'Hello World'}) {
    print(b);
    return a * 2; // Just an example operation
  }

  // (iii) Function that takes two required named num parameters and returns a boolean
  bool Function3({required num a, required num b}) {
    return a > b;
  }

  // (iv) Function that takes a string and two required named parameters (age and course),
  // and returns a Student object
  Student StudentFunction(String name, {required int age}) {
    return Student(name: name, age: age);
  }
}

void main() {
  FunctionPractice functionPractice = FunctionPractice();

  // (i)
  print(functionPractice.Function1(5, 10));

  // (ii)
  print(functionPractice.Function2(20, b: "Custom String"));

  // (iii)
  print(functionPractice.Function3(a: 10, b: 5));

  // (iv)
  Student result = functionPractice.StudentFunction(
    "John",
    age: 20,
  );
  print(result);
}
