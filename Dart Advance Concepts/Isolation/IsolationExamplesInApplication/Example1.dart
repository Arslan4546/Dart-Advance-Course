// 1. Heavy Data Parsing Example
// Imagine you're working with a large JSON file and need to parse it. Doing this on the main isolate might block the UI, so you can offload this task to another isolate.

// Example:

import 'dart:convert';
import 'dart:isolate';

// The function that will run in the new isolate
void parseLargeJson(SendPort sendPort) {
  String largeJson = '{"items": [1, 2, 3, ...]}'; // Imagine a large JSON string
  Map<String, dynamic> parsedData = jsonDecode(largeJson);
  sendPort.send(parsedData); // Send parsed data back to the main isolate
}

void main() async {
  ReceivePort receivePort = ReceivePort();

  // Spawn a new isolate for parsing the JSON
  await Isolate.spawn(parseLargeJson, receivePort.sendPort);

  // Listen for messages from the isolate
  receivePort.listen((data) {
    print('Parsed JSON data: $data');
    receivePort.close();
  });

  print('Parsing large JSON in the background...');
}


// Explanation:
// Main Isolate: Sets up the environment and spawns a new isolate to handle the heavy JSON parsing.
// Isolate Task: The new isolate takes a large JSON string, parses it using jsonDecode(), and sends the result back to the main isolate.
// Why is this valuable? Parsing large data files (e.g., API responses or local files) in the background without freezing the app UI.