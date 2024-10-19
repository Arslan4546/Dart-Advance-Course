// Example 2: Isolate for Data Parsing (JSON Parsing)
// In this example, we use isolates to offload the parsing of a large JSON string.

import 'dart:convert';
import 'dart:isolate';

// Function that will parse JSON in the isolate
void parseJson(SendPort sendPort) {
  String jsonData = '{"name": "John", "age": 30, "city": "New York"}';
  Map<String, dynamic> data = jsonDecode(jsonData);
  sendPort.send(data); // Send parsed data back to main isolate
}

void main() async {
  ReceivePort receivePort = ReceivePort();

  // Spawn a new isolate to parse JSON
  await Isolate.spawn(parseJson, receivePort.sendPort);

  // Listen for the parsed data
  receivePort.listen((message) {
    print('Parsed data: $message');
    receivePort.close();
  });

  print('Parsing JSON in background...');
}
