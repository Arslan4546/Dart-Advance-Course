// Binary String to Integer Conversion
// Extend String? to convert a binary string into an integer.

void main(List<String> args) {
  var binaryValue = "1011";
  print(binaryValue.toBinaryInt()); // Output: 11
  print(binaryValue.runtimeType); // Output: String
}

extension BinaryConversion on String? {
  bool isBinary() {
    return this?.runes.every((element) => element == 48 || element == 49) ??
        false;
  }

  int? toBinaryInt() {
    return (this != null && isBinary()) ? int.parse(this!, radix: 2) : null;
  }
}



// Explanation:
// isBinary(): Checks if the string is a valid binary number (only contains 0 and 1).
// toBinaryInt(): Converts the binary string into an integer or returns null if the string is invalid.