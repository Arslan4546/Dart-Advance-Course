// Variable

// var bar, String str, final int _

// Variable patterns bind new variables to values that have been matched or destructured. They usually occur as part of a destructuring pattern to capture a destructured value.

// The variables are in scope in a region of code that is only reachable when the pattern has matched.

switch ((1, 2)) {
  // 'var a' and 'var b' are variable patterns that bind to 1 and 2, respectively.
  case (var a, var b): // ...
  // 'a' and 'b' are in scope in the case body.
}

// A typed variable pattern only matches if the matched value has the declared type, and fails otherwise:

switch ((1, 2)) {
  // Does not match.
  case (int a, String b): // ...
}

// You can use a wildcard pattern as a variable pattern.