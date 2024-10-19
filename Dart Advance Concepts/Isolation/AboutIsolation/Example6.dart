// Example 6: Isolate to Perform Image Processing
// This example demonstrates using isolates to offload image processing (e.g., pixel manipulation).

import 'dart:isolate';
import 'dart:io';

// Function to perform image processing in the isolate
void processImage(SendPort sendPort) {
  // Simulate image processing (for example, grayscale conversion)
  sleep(Duration(seconds: 3)); // Simulate heavy processing
  sendPort.send('Image processing complete!');
}

void main() async {
  ReceivePort receivePort = ReceivePort();

  // Spawn an isolate to process the image
  await Isolate.spawn(processImage, receivePort.sendPort);

  // Listen to the result from the isolate
  receivePort.listen((message) {
    print(message);
    receivePort.close();
  });

  print('Image is being processed...');
}
