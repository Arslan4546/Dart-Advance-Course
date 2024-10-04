// Logical-and

// subpattern1 && subpattern2

// A pair of patterns separated by && matches only if both subpatterns match. If the left branch does not match, the right branch is not evaluated.

// Subpatterns in a logical-and pattern can bind variables, but the variables in each subpattern must not overlap, because they will both be bound if the pattern matches:

switch ((1, 2)) {
  // Error, both subpatterns attempt to bind 'b'.
  case (var a, var b) && (var b, var c): // ...
}
// this will show error becasue the two variables b cannot be declared in the same scope and cannot assign the same value

