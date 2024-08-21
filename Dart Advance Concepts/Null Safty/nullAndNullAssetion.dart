//Topic : nullable operator (?) and null assertion operator (!)


// int? nullAable;

// int? nullSafe;

// void main(List<String> args) {

//   nullSafe = nullAable;
//   print(nullSafe);
// }

//output: null

//ager dono variable null safe hain to wo ik dosry ko assign ho skty hain

// int? nullAable;

// int nullSafe = 10;

// void main(List<String> args) {
//   nullSafe = nullAable!;
//   print(nullSafe);
// }

//output: error

// nullSafe variable mai  nullAble kabhi ni aa skta but ager nullable k sath ! lga dyn to ye dart ko ye btata hai k nullable null ni hai iss mai koi value pri hai but actully mai to ye null hai iss lyee ye error deta hai uper wala program

// int? nullAable;

// int nullSafe = 10;

// void main(List<String> args) {
//   nullAable = nullSafe;
//   print(nullAable);
// }

//output:10

// iss mai ye hai k nullable mai nullsafe assign ho skta hai easily without giving an error

// int? nullAable;

// int nullSafe = 10;

// void main(List<String> args) {
//   nullAable = 12;
//   nullSafe = nullAable!;
//   print(nullSafe);
// }


//output:12

//iss mai ye hai k nullsafe mai nullable kabhi ni assign ho skta jab tak nullable mai koi value na ho iss program mai nullable k pass  value bhi hai or tassli bhi apny ap ko dy rha hai to ye program without giving an error kam kar jyee ga but ager nullable k pass koi value na hoti to ye error dy deta 


