// Null-check
// #subpattern?

// Null-check patterns match first if the value is not null, and then match the inner pattern against that same value. They let you bind a variable whose type is the non-nullable base type of the nullable value being matched.

// To treat null values as match failures without throwing, use the null-check pattern.

String? maybeString = 'nullable with base type String';
switch (maybeString) {
  case var s?:
  // 's' has type non-nullable String here.
}


// To match when the value is null, use the constant pattern null.