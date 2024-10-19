// 5. Database Query Example
// In Flutter apps, querying a large local SQLite database can sometimes block the UI. Using an isolate to handle the query will keep the app running smoothly.

// Example:

import 'dart:isolate';
import 'package:sqflite/sqflite.dart';

// Function to query a database in an isolate
void queryDatabase(SendPort sendPort) async {
  var database = await openDatabase('my_db.db');
  List<Map> result = await database.rawQuery('SELECT * FROM my_table');
  sendPort.send(result);
}

void main() async {
  ReceivePort receivePort = ReceivePort();

  // Spawn isolate for database query
  await Isolate.spawn(queryDatabase, receivePort.sendPort);

  // Listen for query results from the isolate
  receivePort.listen((data) {
    print('Database query result: $data');
    receivePort.close();
  });

  print('Querying database in the background...');
}


// Explanation:
// Main Isolate: Spawns an isolate to run a database query.
// Isolate Task: Queries a SQLite database and sends the results back to the main isolate.
// Why is this valuable? Database queries can take time depending on the amount of data. Offloading them to an isolate ensures the UI remains smooth.