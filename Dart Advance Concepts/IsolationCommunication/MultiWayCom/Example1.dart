// Basic Two-Way Communication
// The simplest case of two-way communication between the main isolate and one spawned isolate.

import 'dart:isolate';

void isolateTask(SendPort mainSendPort) {
  ReceivePort isolateReceivePort = ReceivePort();
  mainSendPort.send(isolateReceivePort.sendPort); // Send SendPort to main

  isolateReceivePort.listen((message) {
    print('Isolate received: $message');
    mainSendPort.send('Reply from isolate: $message');
  });
}

void main() async {
  ReceivePort mainReceivePort = ReceivePort();
  await Isolate.spawn(isolateTask, mainReceivePort.sendPort);

  SendPort? isolateSendPort;
  mainReceivePort.listen((message) {
    if (message is SendPort) {
      isolateSendPort = message; // Get SendPort from isolate
      isolateSendPort!.send('Hello from main isolate!');
    } else {
      print('Main received: $message');
    }
  });
}


// Explanation
// Main isolate sends "Hello" to the spawned isolate.
// The spawned isolate responds to the main isolate's message.