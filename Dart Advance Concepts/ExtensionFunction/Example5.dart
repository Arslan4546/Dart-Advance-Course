// Uppercase First Letter of Each Word
// Extend String? to convert the first letter of each word to uppercase.


void main(List<String> args) {
  var sentence = "hello world from dart!";
  print(sentence.capitalizeWords());  // Output: Hello World From Dart!
}

extension Capitalize on String? {
  String? capitalizeWords() {
    if (this == null) return null;
    return this!
        .split(' ')
        .map((word) => word.isNotEmpty ? '${word[0].toUpperCase()}${word.substring(1)}' : word)
        .join(' ');
  }
}


// Explanation:
// capitalizeWords(): Capitalizes the first letter of each word in the string.
