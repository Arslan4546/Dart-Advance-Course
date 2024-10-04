// Cast

// foo as String

// A cast pattern lets you insert a type cast in the middle of destructuring, before passing the value to another subpattern:

(num, Object) record = (1, 's');
var (i as int, s as String) = record;

// Cast patterns will throw if the value doesn't have the stated type. Like the null-assert pattern, this lets you forcibly assert the expected type of some destructured value.