// 2. Image Processing Example
// For apps that deal with images, you may need to apply filters, resize images, or convert image formats. These are heavy CPU tasks, so you can offload them to an isolate.

// Example:

import 'dart:isolate';
import 'dart:typed_data';

// A mock function for applying a filter to an image
void applyFilterToImage(SendPort sendPort) {
  Uint8List imageData = Uint8List.fromList([/*...image bytes...*/]);
  // Simulate applying a filter to the image
  for (int i = 0; i < imageData.length; i++) {
    imageData[i] = 255 - imageData[i]; // Invert colors
  }
  sendPort.send(imageData); // Send modified image back
}

void main() async {
  ReceivePort receivePort = ReceivePort();

  // Spawn isolate for image processing
  await Isolate.spawn(applyFilterToImage, receivePort.sendPort);

  // Listen for the processed image
  receivePort.listen((modifiedImageData) {
    print('Received processed image data');
    receivePort.close();
  });

  print('Applying filter to the image in the background...');
}


// Explanation:
// Main Isolate: Spawns a new isolate to handle image processing.
// Isolate Task: Applies a color filter to an image (inverting colors, for example) and sends the modified image data back to the main isolate.
// Why is this valuable? Image processing can be computationally expensive. Offloading this task keeps the UI responsive in photo editing apps or apps that work with user-generated content.
