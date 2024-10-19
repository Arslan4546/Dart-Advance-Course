// Example 1: Simple Parallel Computation in Isolate
// In this example, a heavy calculation runs in an isolate to keep the main thread free for other work.

import 'dart:isolate';

// Function to perform a heavy computation in the isolate
void compute(SendPort sendPort) {
  int result = 0;
  for (int i = 0; i < 100000000; i++) {
    // await Future.delayed(Duration(seconds: 1)); humm idhr wait ni laga skty q k ye jab tak wait kry ga main ka isolate apna kr k terminate ho jyee ga to isi wja sy ni chaly ga funciton wait krny k wja sy

    result += i;
  }
  sendPort.send(result); // Send result back to the main isolate
}

void main() async {
  ReceivePort receivePort = ReceivePort(); // To receive messages

  // Spawn the isolate and pass the SendPort
  await Isolate.spawn(compute, receivePort.sendPort);

  // Listening to the result from the isolate
  receivePort.listen((message) {
    print("Result from isolate: $message");
    receivePort.close(); // Close when done
  });

  print("Main isolate is free for other tasks...");
}
