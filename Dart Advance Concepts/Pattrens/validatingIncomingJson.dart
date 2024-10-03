// Validating incoming JSON

// Map and list patterns work well for destructuring key-value pairs in JSON data:

// var json = {
//   'user': ['Lily', 13]
// };

// var {'user': [name, age]} = json;


// If you know that the JSON data has the structure you expect, the previous example is realistic. But data typically comes from an external source, like over the network. You need to validate it first to confirm its structure.

// Without patterns, validation is verbose:

// if (json is Map<String, Object?> &&
//     json.length == 1 &&
//     json.containsKey('user')) {
//   var user = json['user'];
//   if (user is List<Object> &&
//       user.length == 2 &&
//       user[0] is String &&
//       user[1] is int) {
//     var name = user[0] as String;
//     var age = user[1] as int;
//     print('User $name is $age years old.');
//   }
// }

// A single case pattern can achieve the same validation. Single cases work best as if-case statements. Patterns provide a more declarative, and much less verbose method of validating JSON:

// if (json case {'user': [String name, int age]}) {
//   print('User $name is $age years old.');
// }

// This case pattern simultaneously validates that:

// json is a map, because it must first match the outer map pattern to proceed.
// And, since it's a map, it also confirms json is not null.
// json contains a key user.
// The key user pairs with a list of two values.
// The types of the list values are String and int.
// The new local variables to hold the values are name and age.