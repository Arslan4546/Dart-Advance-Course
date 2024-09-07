// Closure: A function that captures variables from its lexical scope and retains access to those variables even after the outer function has finished execution.

// Function makeAdder(int addBy) {
//   return (int i) => addBy + i;
// }

// void main() {
//   var add2 = makeAdder(2);
//   var add5 = makeAdder(5);

//   print(add2(3)); // Outputs: 5
//   print(add5(3)); // Outputs: 8
// }

// Explanation:

// The makeAdder function returns an anonymous function (a closure) that captures the addBy variable from its lexical scope.
// Even after makeAdder finishes executing, the returned closure still "remembers" the value of addBy.
// When you call add2(3), the closure adds 2 (the value of addBy) to 3, resulting in 5.
