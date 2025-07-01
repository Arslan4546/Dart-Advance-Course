// ==> Relational

// ==> expression

// Relational patterns compare the matched value to a given constant using any of the equality or relational operators: ==, !=, <, >, <=, and >=.

// The pattern matches when calling the appropriate operator on the matched value with the constant as an argument returns true.

// Relational patterns are useful for matching on numeric ranges, especially when combined with the logical-and pattern:

String asciiCharType(int char) {
  const space = 32;
  const zero = 48;
  const nine = 57;

  return switch (char) {
    < space => 'control',
    == space => 'space',
    > space && < zero => 'punctuation',
    >= zero && <= nine => 'digit',
    _ => '',
  };
}
