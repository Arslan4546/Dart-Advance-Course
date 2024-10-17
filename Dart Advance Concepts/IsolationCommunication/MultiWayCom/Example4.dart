// Terminating an Isolate and Receiving Exit Notification
// In this example, the main isolate gets notified when the spawned isolate finishes execution.

import 'dart:isolate';

void taskIsolate(SendPort sendPort) {
  sendPort.send('Isolate is about to exit.');
}

void main() async {
  ReceivePort mainReceivePort = ReceivePort();
  ReceivePort exitPort = ReceivePort();

  await Isolate.spawn(taskIsolate, mainReceivePort.sendPort,
      onExit: exitPort.sendPort);

  mainReceivePort.listen((message) {
    print('Main received: $message');
  });

  exitPort.listen((message) {
    print('Isolate has exited.');
  });
}


// Explanation
// The spawned isolate sends a message and then exits.
// The main isolate receives an exit notification through the onExit port.
// Summary of Key Concepts:
// Two-Way Communication: The main isolate and the spawned isolate can communicate using SendPort and ReceivePort.
// Multiple Isolates: You can spawn multiple isolates, each with its own communication channel.
// Error Handling: Isolates can send error notifications via onError.
// Isolate Termination: Isolates can notify the main isolate upon termination using onExit.