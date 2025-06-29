// Example 5: Periodic Task Using Isolates
// This example demonstrates an isolate performing periodic tasks in the background (e.g., fetching data every few seconds).

import 'dart:isolate';

// Background task that runs periodically in the isolate
void periodicTask(SendPort sendPort) {
  sendPort.send('Data fetched at: ${DateTime.now()}');
}

void main() async {
  ReceivePort receivePort = ReceivePort();

  // Spawn a new isolate to perform periodic tasks
  Isolate.spawn(periodicTask, receivePort.sendPort);

  // Listen to the periodic data fetches from the isolate
  receivePort.listen((message) {
    print(message);
  });

  print('Periodic task running in the background...');
}
