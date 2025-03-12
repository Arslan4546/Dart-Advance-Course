
// what is Tear-off

// In Dart, a tear-off is a way to refer to a function, method, or constructor without actually calling it immediately. Think of it as a "reference" to the function, like holding onto the function for later use. This reference (or tear-off) can then be used whenever needed, just like any other variable or object.

// When you use a tear-off, you're creating a closure. A closure is like a function that "remembers" the environment in which it was created, including any variables that were in scope at the time.


// Instead of this 
// void main(List<String> args) {
//   var numbers = [1, 2, 3, 4];

//   numbers.forEach(
//     (element) => print(element),
//   );
// }

// you should use this method and that is called tear off 
// void main(List<String> args) {
//   var numbers = [1, 2, 3, 4];

//   numbers.forEach(print);
// }
