// 4. API Request Processing and Data Manipulation
// Handling multiple API requests and processing the response data, especially when there is a lot of data manipulation involved, can be offloaded to an isolate to avoid slowing down the app.

// Example:

import 'dart:convert';
import 'dart:isolate';
import 'package:http/http.dart' as http;

// Function to make an API call and process data in an isolate
void fetchAndProcessData(SendPort sendPort) async {
  var response =
      await http.get(Uri.parse('https://jsonplaceholder.typicode.com/posts'));
  List<dynamic> posts = jsonDecode(response.body);
  // Simulate heavy processing (e.g., filtering or sorting)
  List<dynamic> filteredPosts = posts.where((post) => post['id'] < 50).toList();
  sendPort.send(filteredPosts);
}

void main() async {
  ReceivePort receivePort = ReceivePort();

  // Spawn isolate for API request and processing
  await Isolate.spawn(fetchAndProcessData, receivePort.sendPort);

  // Listen for processed data from the isolate
  receivePort.listen((data) {
    print('Filtered API data: $data');
    receivePort.close();
  });

  print('Fetching and processing API data in the background...');
}


// Explanation:
// Main Isolate: Spawns an isolate for fetching and processing API data.
// Isolate Task: Fetches data from an API, performs heavy data manipulation (filtering, sorting), and sends the processed data back.
// Why is this valuable? When dealing with large data sets from an API or when performing complex processing, using isolates prevents the app from becoming unresponsive.
