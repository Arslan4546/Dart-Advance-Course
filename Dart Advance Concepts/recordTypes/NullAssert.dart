
// subpattern!

// Null-assert patterns match first if the object is not null, then on the value. They permit non-null values to flow through, but throw if the matched value is null.

// To ensure null values are not silently treated as match failures, use a null-assert pattern while matching:

List<String?> row = ['user', null];
switch (row) {
  case ['user', var name!]: // ...
  // 'name' is a non-nullable string here.
}

//To eliminate null values from variable declaration patterns, use the null-assert pattern:

(int?, int?) position = (2, 3);

var (x!, y!) = position;

//sTo match when the value is null, use the constant pattern null.