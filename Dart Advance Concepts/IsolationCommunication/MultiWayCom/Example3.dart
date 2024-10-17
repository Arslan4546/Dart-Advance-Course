// Handling Errors in Isolates
// This example shows how to handle errors from isolates using onError.

import 'dart:isolate';

void erroneousIsolate(SendPort sendPort) {
  throw Exception('Something went wrong in the isolate');
}

void main() async {
  ReceivePort mainReceivePort = ReceivePort();
  ReceivePort errorPort = ReceivePort();

  await Isolate.spawn(erroneousIsolate, mainReceivePort.sendPort,
      onError: errorPort.sendPort);

  errorPort.listen((error) {
    print('Error received: $error');
  });
}


// Explanation
// The spawned isolate throws an error.
// The main isolate catches the error using the onError parameter and prints the error message.
