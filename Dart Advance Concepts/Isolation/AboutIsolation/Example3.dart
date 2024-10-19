// Example 3: Isolate for File Operations (Reading a Large File)
// This example demonstrates reading a large file in an isolate to avoid blocking the main thread.

import 'dart:isolate';
import 'dart:io';

// Function to read a file in the isolate
void readFile(SendPort sendPort) {
  File file = File('AboutIsolation.txt');
  String contents = file.readAsStringSync(); // Read the file
  sendPort.send(contents); // Send the file contents back to the main isolate
}

void main() async {
  ReceivePort receivePort = ReceivePort();

  // Spawn a new isolate to read the file
  await Isolate.spawn(readFile, receivePort.sendPort);

  // Listen for the file contents
  receivePort.listen((message) {
    print('File content: $message');
    receivePort.close();
  });

  print('Reading file in the background...');
}
