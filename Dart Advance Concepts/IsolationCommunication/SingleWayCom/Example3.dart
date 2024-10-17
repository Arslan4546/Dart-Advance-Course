// Error Handling
// You can handle errors in isolates using the onError parameter in Isolate.spawn().

import 'dart:isolate';

// Function that will intentionally cause an error
void erroneousIsolate(SendPort sendPort) {
  throw Exception('This is an error');
}

void main() async {
  ReceivePort receivePort = ReceivePort();
  ReceivePort errorPort = ReceivePort();

  // Spawn the isolate and handle errors.
  await Isolate.spawn(erroneousIsolate, receivePort.sendPort,
      onError: errorPort.sendPort);

  // Listen for errors.
  errorPort.listen((message) {
    print('Error from isolate: $message');
    errorPort.close();
  });
}
