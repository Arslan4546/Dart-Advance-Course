// Two-Way Communication with Data Processing
// Here, the main isolate sends data to the isolate, and the isolate processes it and sends a result back.

import 'dart:isolate';

void processIsolate(SendPort mainSendPort) {
  ReceivePort isolateReceivePort = ReceivePort();
  mainSendPort.send(isolateReceivePort.sendPort);

  isolateReceivePort.listen((message) {
    int data = message as int;
    mainSendPort.send('Processed data: ${data * 2}');
  });
}

void main() async {
  ReceivePort mainReceivePort = ReceivePort();
  await Isolate.spawn(processIsolate, mainReceivePort.sendPort);

  SendPort? isolateSendPort;
  mainReceivePort.listen((message) {
    if (message is SendPort) {
      isolateSendPort = message;
      isolateSendPort!.send(10); // Send data to the isolate
    } else {
      print('Main received: $message');
    }
  });
}

// Explanation
// The main isolate sends the value 10 to the spawned isolate.
// The spawned isolate processes the data (10 * 2 = 20) and sends the result back to the main isolate.