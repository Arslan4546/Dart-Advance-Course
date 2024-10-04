// Constant


// 123, null, 'string', math.pi, SomeClass.constant, const Thing(1, 2), const (1 + 2)

// Constant patterns match when the value is equal to the constant:

switch (number) {
  // Matches if 1 == number.
  case 1: // ...
}


// You can use simple literals and references to named constants directly as constant patterns:

// Number literals (123, 45.56)
// Boolean literals (true)
// String literals ('string')
// Named constants (someConstant, math.pi, double.infinity)
// Constant constructors (const Point(0, 0))
// Constant collection literals (const [], const {1, 2})
// More complex constant expressions must be parenthesized and prefixed with const (const (1 + 2)):

// List or map pattern:
case [a, b]: // ...

// List or map literal:
case const [a, b]: // ...