import 'dart:isolate';

void main(List<String> args) async {
  ReceivePort receivePort = ReceivePort();

  receivePort.listen((messsage) {
    if (messsage is SendPort) {
      print("This is the Self Port Message");
    } else {
      print(messsage);
    }
  });
  Isolate.spawn(foo, receivePort.sendPort);
  await Future.delayed(Duration(seconds: 10));
}

void foo(SendPort sendport) async {
  ReceivePort receivePort = ReceivePort();
  receivePort.listen((message) {
    print(message);
  });
  sendport.send(receivePort.sendPort);
  for (var i = 0; i < 100; i++) {
    await Future.delayed(Duration(seconds: 1));
    sendport.send("Downloaded : %$i ");
  }
}

// ye multi-port isolate hai iss mai foo() function ka khud ka bhi recieverPort hai or main isolate ka bhi isolate hai mtlab mai dono if or else execute hon gy 