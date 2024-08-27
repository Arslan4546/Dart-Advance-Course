//  Topic : Late Keyword
//In Dart, the late keyword is used to declare a variable that will be initialized at a later point, but before it is accessed. This is particularly useful for variables that are not immediately initialized but are guaranteed to be set before they are used.

// int age = 12;
// String name = "Arlsan";
// late String gender;
// void main(List<String> args) {
//   print(age);
//   print(name);
//   gender = "Male";
//   print(gender);
// }

//output : 12,Arslan, Male

//basically hum late uss varibale k sath lagaty huty hain jiss ki hum bad mai initialize kr skyn but late variable hum jab tak initialize nhi krynn gy tab tk humm oss ko print nhi krva skty or without uss ki declaration k error dy ga program


// Another Example 


// void main() {
//   late String message;
//   print(message); // Runtime error: LateInitializationError
// }


//One More Example


// class Example {
//   late String message;

//   void initializeMessage(String msg) {
//     message = msg; // Initialization happens here
//   }

//   void printMessage() {
//     print(message); // Accessing the variable
//   }
// }

// void main() {
//   Example example = Example();
//   example.initializeMessage("Hello, Dart!"); // Initialize the variable
//   example.printMessage(); // Outputs: Hello, Dart!
// }





