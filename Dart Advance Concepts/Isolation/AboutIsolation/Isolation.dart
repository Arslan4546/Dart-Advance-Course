// Example:

import 'dart:async';
import 'dart:isolate';

// The function that will run in the new isolate
void heavyComputation(SendPort sendPort) {
  int sum = 0;
  for (int i = 0; i < 1000000000; i++) {
    sum += i;
  }
  sendPort.send(sum); // Sending result back to the main isolate
}

void main() async {
  // Create a ReceivePort to get messages from the spawned isolate
  ReceivePort receivePort = ReceivePort();

  // Spawn a new isolate and pass the SendPort of the receivePort
  await Isolate.spawn(heavyComputation, receivePort.sendPort);

  // Listen for messages from the isolate
  receivePort.listen((message) {
    print('Result from isolate: $message');
    receivePort.close(); // Close the port when done
  });

  print('Isolate spawned, doing other work in main isolate...');
}



// Breakdown of the Example:
// Main Function: The main() function creates a ReceivePort, which is used to receive data from the newly created isolate.
// Isolate.spawn(): We use Isolate.spawn() to create a new isolate and pass the sendPort from the receivePort to the new isolate. This way, the new isolate can send data back to the main isolate.
// heavyComputation(): This function runs in the newly created isolate. It performs a heavy computation (summing numbers) and then sends the result back to the main isolate via the sendPort.
// Listening to Messages: The main isolate listens for the result from the spawned isolate using the receivePort.listen() method.