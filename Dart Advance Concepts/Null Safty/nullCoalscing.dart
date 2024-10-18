// Topic: Null Coalscing Operator (??)

// int? nullAable;

// int? nullSafe = 10;

// void main(List<String> args) {
//   nullAable = 12;
//   nullSafe = nullAable ?? 43;
//   print(nullSafe);
// }

//output: this simply means ager nullable k pass koi value hai to wo nullsafe ko assign ho skti hai otherwise 43 assign ho jye gee measn k idhr just like condition lgee hai k ager nullable mai koi value hai to wo whi assign ho jyee otherwise 43 assign ho jyee

//Another Example

// void main() {
//   String? name; // This variable is null

//   // Using the null-coalescing operator to provide a default value
//   String displayName = name ?? 'Guest';

//   print(displayName);
// }

// Output: Guest

// void main() {
//   String? name; // This variable is null

//   // Using the null-coalescing operator to provide a default value
//   String displayName = name ??= 'Guest';
//   String dispName = name ?? 'Guest';

//   print(displayName);
//   print(dispName);
// }


// Output: Guest

// iss mai ye hai k null aware assignment operator or null coalscing operator takreban same he kam krty hian but null aware assignment operator value assign kr deta hai but null coalsing operator value direct = k left py jo variable hota hai uss ko direct asssign kr deta hai direct but null aware assignment operator bilkul aisa ni krta wo = k right py jo variable hai uss mai value rakhvata hai ye hai in dono mai farq




