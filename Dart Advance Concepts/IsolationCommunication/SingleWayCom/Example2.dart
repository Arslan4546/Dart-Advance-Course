// Example with Data Passed to Isolate
// Here’s another example where we pass data to the new isolate:


import 'dart:isolate';

// Function that will run in a separate isolate
void runIsolateWithData(List<dynamic> message) {
  var data = message[0];
  SendPort sendPort = message[1];
  sendPort.send('Received: $data');
}

void main() async {
  // Create a ReceivePort to get messages from the isolate.
  ReceivePort receivePort = ReceivePort();

  // Spawn an isolate and pass both the data and the send port.
  await Isolate.spawn(runIsolateWithData, ['Hello, Dart!', receivePort.sendPort]);

  // Listen for messages from the isolate.
  receivePort.listen((message) {
    print('Message from isolate: $message');
    receivePort.close(); // Close the port when done.
  });
}


// Explanation
// Data Passed: We pass a list containing the data ('Hello, Dart!') and the SendPort to the new isolate.
// Processing: The isolate processes the data and sends a message back to the main isolate using the SendPort.