// Object

// SomeClass(x: subpattern1, y: subpattern2)

// Object patterns check the matched value against a given named type to destructure data using getters on the object's properties. They are refuted if the value doesn't have the same type.

switch (shape) {
  // Matches if shape is of type Rect, and then against the properties of Rect.
  case Rect(width: var w, height: var h): // ...
}


// The getter name can be omitted and inferred from the variable pattern or identifier pattern in the field subpattern:

// Binds new variables x and y to the values of Point's x and y properties.
var Point(:x, :y) = Point(1, 2);

// Object patterns don't require the pattern to match the entire object. If an object has extra fields that the pattern doesn't destructure, it can still match.