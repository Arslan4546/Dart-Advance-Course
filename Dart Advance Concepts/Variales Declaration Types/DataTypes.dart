void main(List<String> args) {
//strick type declaration or static type declaration

  num no = 34;
  int a = 21;

//Type Inference

  var name = "Arslan";
  // var name = 23; // it gives a compile time error here because you cannot modify the Type inference Variables
  var b = 32;

// For Example:
// Instead OF Doing this...
  //SliverChildrenListBuilderDelegete builderDelegete = SliverChildrenListBuilderDelegete();
  // you can use this...
  var s = SliverChildrenListBuilderDelegete();

//Dynamic Data Types

  dynamic a1 = 23;
  print(a1.runtimeType);
  a1 = 32.4;
  print(a1);
  a1 = "Arslan Tariq";
  print(a1);

// Constant Strict Type Declaration

//Final Keyword:
//final keyword is used with the runtime type objects
//final: Runtime constant. The value is initialized only once, and cannot be reassigned.

  final SliverChildrenListBuilderDelegete delegete =
      SliverChildrenListBuilderDelegete();

  //Constant Keyword:
  //Constant keyword is used with the comile time variables or objects
  //const: Compile-time constant. The value must be known at compile-time.

  const int a2 = 34;

  // Constant with Type Inference

  // Final Keywrod:
  final d = SliverChildrenListBuilderDelegete();

  // Constant keyword:
  const c = 32;
}

// just making a class to explain the Type Inference concepts
class SliverChildrenListBuilderDelegete {}




//Summary:

//Data Types: The code demonstrates different types such as num, int, double, String, var, and dynamic.
//Type Inference: Dart can infer types when using var.
//Constant and Final: const and final are used for constants, with const being compile-time and final being runtime constants.
//Dynamic Typing: dynamic allows the type of a variable to change at runtime.