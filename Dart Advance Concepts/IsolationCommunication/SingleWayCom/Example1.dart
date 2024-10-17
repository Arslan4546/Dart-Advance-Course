// Example of Isolate.spawn() Usage
// Here’s an example to illustrate how Isolate.spawn() works.

import 'dart:isolate';

// This function will run inside the new isolate.
void runIsolate(SendPort sendPort) {
  // The isolate sends a message back to the main isolate.
  sendPort.send('Hello from the new isolate!');
}

void main() async {
  // Create a ReceivePort to get messages from the isolate.
  ReceivePort receivePort = ReceivePort();

  // Spawn a new isolate and pass the send port of the ReceivePort.
  await Isolate.spawn(runIsolate, receivePort.sendPort);

  // Listen for messages from the isolate.
  receivePort.listen((message) {
    print('Received message: $message');
    receivePort.close(); // Close the port when done.
  });
}


// Explanation
// ReceivePort: The main isolate creates a ReceivePort to receive messages from the new isolate.
// Isolate.spawn(): The main isolate uses Isolate.spawn() to spawn a new isolate, passing the SendPort of the ReceivePort.
// Communication: The spawned isolate runs the function runIsolate, which sends a message to the main isolate using the SendPort.
// Receiving Message: The main isolate listens to the ReceivePort for incoming messages and prints them.