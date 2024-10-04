Wildcard
_

// A pattern named _ is a wildcard, either a variable pattern or identifier pattern, that doesn't bind or assign to any variable.

// It's useful as a placeholder in places where you need a subpattern in order to destructure later positional values:

var list = [1, 2, 3];
var [_, two, _] = list;


// A wildcard name with a type annotation is useful when you want to test a value's type but not bind the value to a name:

switch (record) {
  case (int _, String _):
    print('First field is int and second is String.');
}
