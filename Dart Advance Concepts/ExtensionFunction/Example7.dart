// Check if String is Palindrome
// Extend String? to check if the string is a palindrome (reads the same forward and backward).


void main(List<String> args) {
  var value = "madam";
  print(value.isPalindrome());  // Output: true
}

extension PalindromeCheck on String? {
  bool isPalindrome() {
    if (this == null) return false;
    return this == this!.split('').reversed.join('');
  }
}


// Explanation:
// isPalindrome(): Returns true if the string is a palindrome, otherwise false.