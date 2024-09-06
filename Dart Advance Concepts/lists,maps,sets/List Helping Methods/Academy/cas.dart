void main(List<String> args) {
  List<String> list = [
    "Arslan",
    "Mannan",
    "Hannan",
    "Rizwan",
    "Tayyab",
    "Mubeen",
    "Hanzla"
  ];

// ==> Where Method:

// => Descriptive or Declarative Programming:

  // var subList = list
  //     .where(
  //       (element) => list.length > 5,
  //     )
  //     .toList();

  // print(subList);

  // Basically hum toList() ka method issi lyee lagaty hain k ye output mai paranthesis show krvatya hai q k tamam collection ki parent class iterable hai or issi lyee ye output parenthesis mai dy gee but toList() ka method sath lagany sy  ye bracket mai output dy gee means k list mai output dy gee
  // Basically where ka method whee py lagta hai jhan py list mai khee py koi condition ko satisfied krvana ho

  // => Imperative Programming:

  // var subList = <String>[];
  // for (var element in list) {
  //   if (element.length > 5) {
  //     list.add(element);
  //   }
  // }

  // print(subList);

  // kam same ho rha but iss mai boiler plate code khud likh rhy or udhr just inline fucntion sy kam horha hai

// ==> FirstWhere Method:

//   var subList = list.firstWhere(
//     (element) => element.length > 6,
//   );
//   print(subList);

// ==> LastWhere Method:

  // var subList = list.lastWhere(
  //   (element) => element.length > 5,
  // );
  // print(subList);

  // same as firstWhere but jab humm iss mai aisi condition dyn go jo satisfied he ni hoti to ye runtime error dy dy ga

  // ==> Map Method:

// void main() {
//   List<int> list = [10, 20, 30, 40, 50];
//   var douledList = list.map((n) => n * 2);

//   print((douledList));
// }
// Basically map method k mtlab hai k ik list sy dosri list nikalna apni requirment k mutabiq

  // var subList1 = list
  //     .map(
  //       (e) => e.length,
  //     )
  //     .toList();
  // print(subList1);

  // Basically Map ka method mapping k lyee kam ata hai mtlab ager list String mai hai or ap uss ko string mai map krna chahty hain to

  // ==> Map Method:

  // var subList = subList1
  //     .map(
  //       (e) => "$e",
  //     )
  //     .toList();
  // print(subList);

  //ye bhi just tareqa different hai kam same kr rha hai uper waly program ki trah ager hum ik list jo k string ki hai uss k uper map ka method implement krty hain to wo list ko interger mai convert kr deta hai but length base per but ager humm ik interger ki list hia uss ko string mai krna chahty hain to ye ni kry ga bulky ussi integer ki list ko return kr dy ga

  // ==> Any Method:

  // var subList = list.any(
  //   (element) => list.length > 5,
  // );
  // print(subList);

  // ye just true ya false mai output dy ga Any method ye kam kry ga k poori list mai khee per bhi condition satisfied hoti hai to ye true return kry ga

  // ==> Every Method:

  // var subList = list.any(
  //   (element) => list.length > 5,
  // );
  // print(subList);

  // ye bhi just true ya false mai output dy ga Every method ye kam kry ga k poori list mai sari enteries mai  condition satisfied hoti hai to ye true return kry ga
}
