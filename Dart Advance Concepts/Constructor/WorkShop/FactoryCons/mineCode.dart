// ==> Method 1

// class Color {
//   static const _colorList = <Colors, Color>{
//     Colors.blue: Color._("Blue COlor"),
//     Colors.white: Color._("White COlor"),
//     Colors.green: Color._("Green COlor"),
//   };

//   final String colorName;
//   const Color._(this.colorName);
//   factory Color(Colors col) {
//     return _colorList[col]!;
//   }
// }

// enum Colors {
//   green,
//   white,
//   blue,
// }

// void main(List<String> args) {
//   Color white = Color(Colors.white);
//   Color blue = Color(Colors.blue);
//   Color gren = Color(Colors.green);
//   print(white.colorName);
//   print(blue.colorName);
//   print(gren.colorName);
// }

/// Baciscally ye ik example hai factory constructor ki or iss ki implememtation hai different type ki
///

// ==> Method 2

class Color {
  // Map to store predefined color instances
  static final _colorList = <Colors, Color>{
    Colors.blue: Color._(Colors.blue.toString()),
    Colors.white: Color._(Colors.white.toString()), // Fixed from Colors.green
    Colors.green: Color._(Colors.green.toString()),
  };

  final String colorName; // Color name property

  // Private constructor for internal use
  const Color._(this.colorName);

  // Factory constructor to return the corresponding color from the map
  factory Color(Colors col) {
    return _colorList[col]!; // Exclamation mark (!) ensures non-null return
  }
}

// Enum to represent predefined colors
enum Colors {
  green,
  white,
  blue,
}

void main(List<String> args) {
  // Creating instances of Color using the factory constructor
  Color white = Color(Colors.white);
  Color blue = Color(Colors.blue);
  Color green = Color(Colors.green);

  // Printing color names
  print(white.colorName); // Output: Colors.white
  print(blue.colorName); // Output: Colors.blue
  print(green.colorName); // Output: Colors.green
}

// ye bhi uper wali example k jesi hai but implememtation thori si different hai 

