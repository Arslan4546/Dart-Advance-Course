// Count Vowels in a String
// Extend String? to count the number of vowels in the string.

void main(List<String> args) {
  var sentence = "Hello World";
  print(sentence.countVowels()); // Output: 3
}

extension VowelCount on String? {
  int countVowels() {
    if (this == null) return 0;
    final vowels = RegExp(r'[AEIOUaeiou]');
    return vowels.allMatches(this!).length;
  }
}


// Explanation:
// countVowels(): Counts how many vowels (both lowercase and uppercase) are in the string.
