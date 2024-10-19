// 3. File Compression and Decompression
// For apps that deal with large files (e.g., backup apps, media apps), file compression and decompression tasks can be offloaded to isolates.

// Example:

import 'dart:isolate';
import 'dart:io';
import 'dart:convert';

// Function to compress a file
void compressFile(SendPort sendPort) async {
  File file = File('largeFile.txt'); // Example file
  List<int> fileBytes = await file.readAsBytes();
  String compressedData = base64Encode(fileBytes); // Mock compression
  sendPort.send(compressedData);
}

void main() async {
  ReceivePort receivePort = ReceivePort();

  // Spawn isolate for file compression
  await Isolate.spawn(compressFile, receivePort.sendPort);

  // Listen for compressed data from the isolate
  receivePort.listen((compressedData) {
    print('Compressed data received');
    receivePort.close();
  });

  print('Compressing file in the background...');
}


// Explanation:
// Main Isolate: Spawns an isolate to handle file compression.
// Isolate Task: Compresses a file (simulated here using base64Encode()) and sends the result back.
// Why is this valuable? File compression and decompression can take time and should not block the main UI. Offloading this task helps maintain smooth user experience when dealing with large files.