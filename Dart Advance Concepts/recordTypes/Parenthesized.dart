// Parenthesized

// (subpattern)

// Like parenthesized expressions, parentheses in a pattern let you control pattern precedence and insert a lower-precedence pattern where a higher precedence one is expected.

// For example, imagine the boolean constants x, y, and z equal true, true, and false, respectively. Though the following example resembles boolean expression evaluation, the example matches patterns.

// ...
// x || y => 'matches true',
// x || y && z => 'matches true',
// x || (y && z) => 'matches true',
// // `x || y && z` is the same thing as `x || (y && z)`.
// (x || y) && z => 'matches nothing',
// // ...

// Dart starts matching the pattern from left to right.

// The first pattern matches true as x matches true.

// The second pattern matches true as x matches true.

// The third pattern matches true as x matches true.

// The fourth pattern (x || y) && z has no match.

// The x matches true, so Dart doesn't try to match y.
// Though (x || y) matches true, z doesn't match true
// Therefore, pattern (x || y) && z doesn't match true.
// The subpattern (x || y) doesn't match false, so Dart doesn't try to match z.
// Therefore, pattern (x || y) && z doesn't match false.
// As a conclusion, (x || y) && z has no match.