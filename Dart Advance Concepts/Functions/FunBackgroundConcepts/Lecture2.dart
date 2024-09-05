// Part 1

// Higher Order Functions: (jab ik function dosry function k parameter mai ya return mai use ho rha ho to wo highter order functions hota hai)

//void main(List<String> args) {
//callFunction1(lhr);

/// this will work bcz lhr function does return any value

//callFunction1(bwp);

//// this gives runtime error because it demands a String in parameter but you dont give any string in the callFuncation1() method so it gives error

//callFunction1(mlt);

//// this also gives runtime error because it demands a two integer in parameter but you dont give any integer in the callFuncation1() method so it gives error
///
// so ager callFunction1 Demands kry parameter ka to ussy parameter deny chahyee wrna wo runtime per error dy dy ga or ye compile time error issil yee ni deta q k callFunction1() ka parameter Generalize hai iss lyee wo kissi bhi function ko accept kr leta hai (Function tamam functions ki parents class hai na to issi lyee).

//}

// void callFunction1(Function f) {
//   f();
// }

// void bwp(String name) {
//   print(name);
// }

// void lhr() {
//   print("This is Lahore Function");
// }

// int mlt(int a, int b) {
//   return a + b;
// }

// String krch(String firstName, String LastName) {
//   return "You first name is : $firstName and you last name is $LastName";
// }





// Part 2

// typedef bwpTypeDef = String Function(String);
// typedef lahoreTypeDef = void Function();
// typedef mltTypeDef = int Function(int, int);
// typedef krchTypeDef = String Function(String, String);

// void main(List<String> args) {
//   callFunction1(bwp);
//   callFunction1(lhr);
//   callFunction1(mlt);
//   callFunction1(krch);
// }

// void callFunction1(bwpTypeDef bwpT) {
//   print(bwpT("bwp function is called!"));
// }

// void callFunction1(lahoreTypeDef lhrT) {
//   lhr();
// }

// void callFunction1(mltTypeDef mltT) {
//   int result = mlt(12, 8);
//   print(result);
// }

// void callFunction1(krchTypeDef krchT) {
//   print(krchT("Arslan", "Tariq"));
// }

// String bwp(String name) {
//   return name;
// }

// void lhr() {
//   print("This is Lahore Function");
// }

// int mlt(int a, int b) {
//   return a + b;
// }

// String krch(String firstName, String LastName) {
//   return "You first name is : $firstName and you last name is $LastName";
// }

// Explanation:
 
// typedef:
// is used to create type aliases for function signatures, making the code more readable and maintainable.
// bwpTypeDef: 
// Represents a function that takes a String argument and returns a String.
// lahoreTypeDef: 
// Represents a function that takes no arguments and returns void.
// mltTypeDef: 
// Represents a function that takes two int arguments and returns an int.
// krchTypeDef: 
// Represents a function that takes two String arguments and returns a String.

// Basically humm typeDef iss lyee use krty hain ta k function ussi type k parameters ly jesa wo expect kr rha hota hai ager uss ko different type k arguments dy gy to wo ussi time compile time error dy dy ga iss ka ye bohat bar faida hai type def ka 


