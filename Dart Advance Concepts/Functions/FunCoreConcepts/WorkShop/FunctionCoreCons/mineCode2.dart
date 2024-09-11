// Knowledge All About Typedef
// runtime patakha (1)
// void main(List<String> args) {
//   MainFUn(sum);
//   //runtime patakha mar dy ga
// }

// // Random MainFUn

// void MainFUn(Function f) {
//   f();
// }

// // q k function tmama function ki parent class hia to iss k parameter mai jo bhi dyn gy ye accept kr ly ga but ager signature match ni huee to ye runtime py error dy dy ga jiss wja y humm strict typeDef use krty hain

// // randome function
// void foo() {
//   print("this is foo fun");
// }

// // randome function
// void soo() {
//   print("this is soo fun");
// }

// // randome function
// num sum(int a, int b) {
//   return a + b;
// }

// ==>Proger Working Code (2)

// typedef SumTypeDEf = num Function(int, int);
// typedef voidT = void Function();
// void main(List<String> args) {
//   MainFUn(sum);
//   // easy sy run kr jyee ga
//   MainFUn(foo);
//   // easilky run ho jyee ga
//   MainFUn(soo);
//   // eaily run kr jye ga
// }

// // Random MainFUn

// // void MainFUn(SumTypeDEf s) {
// //   s(2,3);
// //   //ager Sum FUnction ko parameter required hain to mjy idhr dyny ho gy otherwise compile time error dy dy ga
// // }
// void MainFUn(voidT v) {
//   v();
// }

// // randome function
// void foo() {
//   print("this is foo fun");
// }

// // randome function
// void soo() {
//   print("this is soo fun");
// }

// // randome function
// num sum(int a, int b) {
//   return a + b;
// }


// at the end typeDef lazmi hai ager ap kissi bry project per kam kr rhy ho q k ager ap type def ni krty to compile time error ni dy ga or ager khee erro aa gya to mushkil hai find krna
