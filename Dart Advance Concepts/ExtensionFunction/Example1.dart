// Example 1
// Hexadecimal String to Integer Conversion

// Extend String? to convert a valid hexadecimal string into an integer.

void main(List<String> args) {
  var hexValue = "1A3F";
  print(hexValue.toHexInt()); // Output: 6719
  print(hexValue.runtimeType); // Output: String
}

extension HexConversion on String? {
  bool isHex() {
    final hexPattern = RegExp(r'^[0-9a-fA-F]+$');
    return this != null && hexPattern.hasMatch(this!);
  }

  int? toHexInt() {
    return (this != null && isHex()) ? int.parse(this!, radix: 16) : null;
  }
}


// Explanation:
// isHex(): Validates if the string is a valid hexadecimal value.
// toHexInt(): Converts the string from hexadecimal to an integer or returns null if it's invalid.