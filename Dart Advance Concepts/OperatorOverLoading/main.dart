import 'Clock.dart';

void main(List<String> args) {
  Clock c1 = Clock(hours: 5, minutes: 20, seconds: 30);
  Clock c2 = Clock(hours: 5, minutes: 20, seconds: 30);
  // var c3 = c1 + c2; // method 1
  var c3 = c1.Plus(c2); // method 2

  print(c3);
  // ye inko dono object ko plus kr dy ga q k hum ny Clock Class k ander fields ko plus krnyy k lyee 2 types k function banayee ap chahyee jo bhi use kr skty hain
  Object o1 = Object();
  Object o2 = Object();
  // var o3 = o1 + o2; // it gives error q k objeccts ki class mai plus operator implememt he ni hai
  var o3 = o1 ==
      o2; // ab ye error ni dy ga q k object ki class mai == defined hai mtlab implemet hai
}
