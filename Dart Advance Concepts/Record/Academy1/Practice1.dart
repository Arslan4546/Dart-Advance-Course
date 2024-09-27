// ==> All About Records

//==Example 1
// void main(List<String> args) {
//   (int, double) record;
//   record = (12, 34.0);
//   print(record);

// }

//==Example 2

// void main(List<String> args) {
//   (int, double) record;

//   record = foo();
//   print(record);
// }

// (int, double) foo() {
//   return (12, 45.0);
// }

//==Example 3

void main(List<String> args) {
  (int, double) record;
  record = (12, 34.0);

  (int, String) record1;
  record1 = swap(record);
  print(record1);
}

(int, String) swap((int, double) s) {
  print(s);

  return (12, "Arslan");
}
