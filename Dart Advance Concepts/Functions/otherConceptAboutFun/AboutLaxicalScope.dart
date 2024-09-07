// Lexical scope
// #
// Dart determines the scope of variables based on the layout of its code. A programming language with this feature is termed a lexically scoped language. You can "follow the curly braces outwards" to see if a variable is in scope.

// Example: A series of nested functions with variables at each scope level:


// bool topLevel = true;

// void main() {
//   var insideMain = true;

//   void myFunction() {
//     var insideFunction = true;

//     void nestedFunction() {
//       var insideNestedFunction = true;

//       assert(topLevel);
//       assert(insideMain);
//       assert(insideFunction);
//       assert(insideNestedFunction);
//     }
//   }
// }

// this means you can access global variable value and the variables in the main function
