//==>  Use cases for patterns

// The previous section describes how patterns fit into other Dart code constructs. You saw some interesting use cases as examples, like swapping the values of two variables, or destructuring key-value pairs in a map. This section describes even more use cases, answering:

// When and why you might want to use patterns.
// What kinds of problems they solve.
// Which idioms they best suit.



// ==> Destructuring multiple returns

// Records allow aggregating and returning multiple values from a single function call. Patterns add the ability to destructure a record's fields directly into local variables, inline with the function call.

// Instead of individually declaring new local variables for each record field, like this:

// var info = userInfo(json);
// var name = info.$1;
// var age = info.$2;


// You can destructure the fields of a record that a function returns into local variables using a variable declaration or assigment pattern, and a record pattern as its subpattern:

// var (name, age) = userInfo(json);
// content_copy
// To destructure a record with named fields using a pattern:

// final (:name, :age) =
//     getData(); // For example, return (name: 'doug', age: 25);