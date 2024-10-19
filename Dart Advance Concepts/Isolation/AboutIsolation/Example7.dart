// Example 7: Sending Data Back and Forth Between Main and Isolate
// This example shows how the main isolate and a spawned isolate can communicate by sending data back and forth using ports.

import 'dart:isolate';

// Function to handle messages in the isolate
void handleMessages(SendPort sendPort) {
  ReceivePort receivePort = ReceivePort(); // To receive messages
  sendPort.send(receivePort.sendPort); // Send SendPort to the main isolate

  receivePort.listen((message) {
    print('Received from main isolate: $message');
    sendPort.send('Response from isolate: $message');
  });
}

void main() async {
  ReceivePort receivePort = ReceivePort();

  // Spawn the isolate
  await Isolate.spawn(handleMessages, receivePort.sendPort);

  // Get the SendPort of the isolate to send messages
  SendPort isolateSendPort;
  receivePort.listen((message) {
    if (message is SendPort) {
      isolateSendPort = message;

      // Send a message to the isolate
      isolateSendPort.send('Hello from main isolate!');
    } else {
      print('Response from isolate: $message');
      receivePort.close(); // Close when done
    }
  });

  print('Main isolate is free while communicating...');
}



// Conclusion:
// Isolates are used to handle long-running or CPU-intensive tasks without blocking the main thread.
// They work via message-passing, ensuring no shared memory is used between the main isolate and spawned isolates.
// Isolates are beneficial for tasks such as JSON parsing, file operations, image processing, and more, keeping the app responsive while performing background tasks.