// Roman Numeral to Integer Conversion
// Extend String? to convert a valid Roman numeral into an integer.

void main(List<String> args) {
  var romanValue = "XIV";
  print(romanValue.toRomanInt()); // Output: 14
  print(romanValue.runtimeType); // Output: String
}

extension RomanConversion on String? {
  static final Map<String, int> romanMap = {
    'I': 1,
    'V': 5,
    'X': 10,
    'L': 50,
    'C': 100,
    'D': 500,
    'M': 1000
  };

  bool isRoman() {
    final romanPattern = RegExp(r'^[IVXLCDM]+$');
    return this != null && romanPattern.hasMatch(this!);
  }

  int? toRomanInt() {
    if (!isRoman()) return null;
    int total = 0;
    for (int i = 0; i < this!.length; i++) {
      int currentVal = romanMap[this![i]]!;
      int nextVal = i + 1 < this!.length ? romanMap[this![i + 1]]! : 0;
      total += (currentVal < nextVal) ? -currentVal : currentVal;
    }
    return total;
  }
}


// Explanation:
// isRoman(): Checks if the string contains valid Roman numeral characters.
// toRomanInt(): Converts a Roman numeral string to an integer using a mapping approach.