// String to Title Case
// Extend String? to convert a string to title case (capitalize first letter of each word and make the rest lowercase).

void main(List<String> args) {
  var title = "hello from the world of DART";
  print(title.toTitleCase()); // Output: Hello From The World Of Dart
}

extension TitleCaseConversion on String? {
  String? toTitleCase() {
    if (this == null) return null;
    return this!
        .split(' ')
        .map((word) => word.isNotEmpty
            ? '${word[0].toUpperCase()}${word.substring(1).toLowerCase()}'
            : word)
        .join(' ');
  }
}


// Explanation:
// toTitleCase(): Converts the string into title case by capitalizing the first letter and converting the rest of the characters in each word to lowercase.
