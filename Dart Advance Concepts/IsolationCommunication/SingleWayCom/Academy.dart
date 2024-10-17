// Program 1

import 'dart:io';
import 'dart:isolate';

void main(List<String> args) async {
  ReceivePort receivePort = ReceivePort();

  receivePort.listen((messsage) => print(messsage));
  Isolate.spawn(foo, receivePort.sendPort);
  await Future.delayed(Duration(seconds: 10));
  // main function tab tak terminate ni hoga jab tak loop end ni hojati foo() Function ki q k recieverPort iss k Isolate.Spawn() mai use ho rha hai issi lyee ye tab tak chaly ga jab tak loop complete ni ho jati
}

void foo(SendPort sendport) async {
  for (var i = 0; i < 100; i++) {
    await Future.delayed(Duration(seconds: 1));
    sendport.send("Downloaded : %$i ");
  }
}

// Program 2

// void main(List<String> args) async {
//   Isolate.spawn(foo, 100);
//   await Future.delayed(Duration(seconds: 10));
//   // ab ye code just 10 seconds bad band ho jye ga q k main isolate mai just 10 seconds ka wait lagaya hai or humm ny idhr recieverPort ko use he ni kia issi lyee ye issi trah perform kry ga
// }

// void foo(int max) async {
//   for (var i = 0; i < max; i++) {
//     await Future.delayed(Duration(seconds: 1));
//     print("Downloaded : %$i ");
//   }
// }


