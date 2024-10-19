import 'dart:isolate';

// Isolate A: Sends a message to Isolate B
void isolateA(SendPort sendPort) {
  ReceivePort receivePort = ReceivePort();
  sendPort.send(receivePort.sendPort); // Send Isolate A's SendPort to Isolate B

  receivePort.listen((message) {
    print('Message received in Isolate A: $message');
  });
}

// Isolate B: Sends a message back to Isolate A
void isolateB(SendPort sendPort) {
  ReceivePort receivePort = ReceivePort();
  sendPort.send(receivePort.sendPort); // Send Isolate B's SendPort to Isolate A

  receivePort.listen((sendPortA) {
    if (sendPortA is SendPort) {
      sendPortA.send('Hello from Isolate B!');
    }
  });
}

void main() async {
  ReceivePort receivePortA = ReceivePort();
  ReceivePort receivePortB = ReceivePort();

  // Spawn Isolate A and Isolate B
  await Isolate.spawn(isolateA, receivePortA.sendPort);
  await Isolate.spawn(isolateB, receivePortB.sendPort);

  SendPort? sendPortA;
  SendPort? sendPortB;

  // Listening for the SendPort from Isolate A
  receivePortA.listen((message) {
    if (message is SendPort) {
      sendPortA = message;
      if (sendPortB != null) {
        sendPortB!.send(sendPortA);
      }
    }
  });

  // Listening for the SendPort from Isolate B
  receivePortB.listen((message) {
    if (message is SendPort) {
      sendPortB = message;
      if (sendPortA != null) {
        sendPortB!.send(sendPortA);
      }
    }
  });

  print('Two isolates communicating...');
}
