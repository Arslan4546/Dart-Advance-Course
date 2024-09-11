typedef noPara = void Function();
typedef withString = String Function(String);
typedef withDouble = double Function(double, double);

void main(List<String> args) {
  // ==> Function 1 Call
  // var a = mainFunc(printSalary);
  // // a("Arslan String");// it will not print the a("Arslan String")
  // // print(a); // because a does not store this a("Arslan String")
  // print(a(
  //     "Innocent Arslan")); // but now it will print becasue now a store the name and directly print that name in the print function

  // ==> Function 2 Call
  // var f = mainFun1(printAddress);
  // f(1.0,
  //     2.0); // Closure: (double, double) => double in this case it return this thing
  // print(f); // and it does not print any value
  // print(f(1.0, 2.0)); // but now it will print the value
}

// ==> Function 1 Create

// withString mainFunc(withDouble d) {
//   var a = d(12.0, 12.0);
//   print(a);
//   return (String n) {
//     return n;
//   };
// }

// // ==> Function 2 Create

withDouble mainFun1(withString s) {
  var Fun = s("Arslan Tariq");
  print(Fun);
  return (double a, double b) => a + b;
}

// ==> Making 3 different Functions

void PrinName() {
  print("Arslan Tariq");
}

String printAddress(String name) {
  return name;
}

double printSalary(double a, double b) {
  return a + b;
}
