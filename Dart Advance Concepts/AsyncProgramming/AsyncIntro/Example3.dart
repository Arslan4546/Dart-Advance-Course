// Example 3: Handling Errors with Future and await

Future<String> fetchDataWithError() async {
  await Future.delayed(Duration(seconds: 2)); // Simulate delay
  throw Exception("Something went wrong!");
}

void main() async {
  try {
    print("Fetching data...");
    String result = await fetchDataWithError();
    print(result);
  } catch (e) {
    print("Error: $e");
  }
}


// Explanation:

// The fetchDataWithError() function simulates a delay and then throws an error.
// try-catch is used to handle the error that the Future might throw.