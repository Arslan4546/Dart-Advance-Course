// Custom String Padding
// Extend String? to add a method that pads a string with a custom character to a desired length.


void main(List<String> args) {
  var text = "123";
  print(text.padWith('0', 5));  // Output: 00123
  print(text.runtimeType);      // Output: String
}

extension StringPadding on String? {
  String? padWith(String character, int length) {
    if (this == null || character.length != 1 || length < this!.length) return this;
    return character * (length - this!.length) + this!;
  }
}


// Explanation:
// padWith(): Pads the string with the specified character until it reaches the desired length. If the string is already longer, it returns the original string.