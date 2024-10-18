// void main(List<String> args) {
//   int? x; //null-able variale
//   print(x);
// }

//output:null

// void main(List<String> args) {
//   int? x; //null-able variale

//   int? y = x; // out put will be null
//   int y = x; // will givve a compile time error
//   print(x);
// }

//output:error // ap ik nullable ko dosry nullable mai assignment kr skty hain jesy line 11 mai kia gya hai 

// void main(List<String> args) {
//   int? x; //null-able variale

//   int y = x!; // not give a compile time error but runtime
//   print(y);
// }

//output : Unhandeled Exception // iss mai ye nullsafe ko jhooti tasalli dy rha hai k tension na ly ana wali value null ni hain


// void main(List<String> args) {
//   int? x;
//   int? y = x;
//   print(y);
// }

//output:null

//iss mai ye hia k nullable nullable ko assign ho rha hai to iss mai koi masla ni hai

