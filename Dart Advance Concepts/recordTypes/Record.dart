// Record

// (subpattern1, subpattern2)

// (x: subpattern1, y: subpattern2)

// Record patterns match a record object and destructure its fields. If the value isn't a record with the same shape as the pattern, the match fails. Otherwise, the field subpatterns are matched against the corresponding fields in the record.

// Record patterns require that the pattern match the entire record. To destructure a record with named fields using a pattern, include the field names in the pattern:

// var (myString: foo, myNumber: bar) = (myString: 'string', myNumber: 1);
// content_copy
// The getter name can be omitted and inferred from the variable pattern or identifier pattern in the field subpattern. These pairs of patterns are each equivalent:

// Record pattern with variable subpatterns:
var (untyped: untyped, typed: int typed) = record;
var (:untyped, :int typed) = record;

switch (record) {
  case (untyped: var untyped, typed: int typed): // ...
  case (:var untyped, :int typed): // ...
}

// Record pattern with null-check and null-assert subpatterns:
switch (record) {
  case (checked: var checked?, asserted: var asserted!): // ...
  case (:var checked?, :var asserted!): // ...
}

// Record pattern with cast subpattern:
var (untyped: untyped as int, typed: typed as String) = record;
var (:untyped as int, :typed as String) = record;
