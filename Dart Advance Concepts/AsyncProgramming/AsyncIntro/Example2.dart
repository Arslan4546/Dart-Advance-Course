// Example 2: Using async and await

Future<String> fetchData() async {
  await Future.delayed(Duration(seconds: 2)); // Simulate delay
  return "Data fetched!";
}

void main() async {
  print("Fetching data...");
  String result = await fetchData();
  print(result); // Output: Data fetched!
  print("Request complete.");
}


// Explanation:

// The fetchData() function is marked as async and returns a Future<String>.
// Inside main(), the await keyword is used to wait for the Future from fetchData() to complete.
// This approach makes the code more readable compared to using then().