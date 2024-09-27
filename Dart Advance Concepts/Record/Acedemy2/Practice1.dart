// ==> Example 1

// ({int rollNo, String name, double fee}) stdRecord =
//     (rollNo: 12, name: "Arslan", fee: 23.6);

// void main(List<String> args) {
//   var copyRecord = stdRecord;
//   print(copyRecord);
// }

// ==> Example 2

// ({int rollNo, String name, double fee}) stdR =
//     (rollNo: 12, name: "Arslan", fee: 23.6);

// void main(List<String> args) {
//   var copyR = stdR;
//   print(copyR.name);
//   print(copyR.fee);
//   print(copyR.rollNo);
// }

// ==> Example 3

// (int rollNo, String name, {double fee}) stdR = (12, "Arslan", fee: 23.6);

// void main(List<String> args) {
//   var copyR = stdR;
//   print(copyR.$1);
//   print(copyR.fee);
//   print(copyR.$2);
// }

// ==> Example 4
// (int, int) swap((int, int) record) {
//   var (a, b) = record;
//   return (b, a);
// }

// void main(List<String> args) {
//   (int a, int b) record = (2, 4);
//   var result = swap(record);
//   print(result);
// }
// this will wap the record numbers

// // ==> Example 5
// ({int rollNo, String name, double fee}) stdR =
//     (fee: 23.6, name: "Arslan", rollNo: 1161);

// void main(List<String> args) {
//   var (:fee, :name, :rollNo) = stdR;
//   print(fee);
//   print(rollNo);
//   print(name);
// }

// // ==> Example 6
// ({int rollNo, String name, double fee}) stdR =
//     (fee: 23.6, name: "Arslan", rollNo: 1161);

// void main(List<String> args) {
//   var (fee:fee, name:name, rollNo:rollNo) = stdR;
//   print(fee);
//   print(rollNo);
//   print(name);
// }

// ==> Example 7
({int rollNo, String name, double fee}) stdR =
    (fee: 23.6, name: "Arslan", rollNo: 1161);

void main(List<String> args) {
  var (fee: f, name: n, rollNo: r) = stdR;
  print(f);
  print(r);
  print(n);
}
