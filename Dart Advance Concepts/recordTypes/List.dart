// List

// [subpattern1, subpattern2]

// A list pattern matches values that implement List, and then recursively matches its subpatterns against the list's elements to destructure them by position:

const a = 'a';
const b = 'b';
switch (obj) {
  // List pattern [a, b] matches obj first if obj is a list with two fields,
  // then if its fields match the constant subpatterns 'a' and 'b'.
  case [a, b]:
    print('$a, $b');
}



// List patterns require that the number of elements in the pattern match the entire list. You can, however, use a rest element as a place holder to account for any number of elements in a list.