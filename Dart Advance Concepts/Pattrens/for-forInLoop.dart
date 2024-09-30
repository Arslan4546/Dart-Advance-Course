// For and for-in loops

// You can use patterns in for and for-in loops to iterate-over and destructure values in a collection.

// This example uses object destructuring in a for-in loop to destructure the MapEntry objects that a <Map>.entries call returns:

void main(List<String> args) {
  Map<String, int> hist = {
    'a': 23,
    'b': 100,
  };

  for (var MapEntry(key: key, value: count) in hist.entries) {
    print('$key occurred $count times');
  }
}

// The object pattern checks that hist.entries has the named type MapEntry, and then recurses into the named field subpatterns key and value. It calls the key getter and value getter on the MapEntry in each iteration, and binds the results to local variables key and count, respectively.

// Binding the result of a getter call to a variable of the same name is a common use case, so object patterns can also infer the getter name from the variable subpattern. This allows you to simplify the variable pattern from something redundant like key: key to just :key:

// for (var MapEntry(:key, value: count) in hist.entries) {
//   print('$key occurred $count times');
// }