// Rest element

// List patterns can contain one rest element (...) which allows matching lists of arbitrary lengths.

var [a, b, ..., c, d] = [1, 2, 3, 4, 5, 6, 7];
// Prints "1 2 6 7".
print('$a $b $c $d');


A rest element can also have a subpattern that collects elements that don't match the other subpatterns in the list, into a new list:

var [a, b, ...rest, c, d] = [1, 2, 3, 4, 5, 6, 7];
// Prints "1 2 [3, 4, 5] 6 7".

print('$a $b $rest $c $d');
