// ==> program 1

// void main(List<String> args) {
//   print("line 1");
//   display();
//   print("line 3");
// }

// display() {
//   Future.delayed(Duration(seconds: 3), () => print("line 2"));
// }

/// iss mai phly print 1 and print 3 print hon gy pirnt 3 , 3 seconds bad mai pirnt ho ga
///

// ==> program 2

// void main(List<String> args) async {
//   print("line 1");
//   await display();
//   print("line 3");
// }

// Future<void> display() async {
//   Future.delayed(Duration(seconds: 3), () => print("line 2"));
// }

// same as program 1 but adding await and future before the function

// void main(List<String> args) {
//   print("line 1");
//   display().then((value) => print(value));
//   print("line 3");
// }

// Future<String> display() async {
//   return Future.delayed(
//       Duration(seconds: 3), () => ("this is the Futrue Function"));
// }


// then humm ussi waqt use kry hain jab humain await or async function k sath use na krna ho