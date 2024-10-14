// Example 4: Chaining Futures

Future<String> fetchFirstData() async {
  await Future.delayed(Duration(seconds: 2));
  return "First Data";
}

Future<String> fetchSecondData() async {
  await Future.delayed(Duration(seconds: 1));
  return "Second Data";
}

void main() async {
  print("Starting fetch...");
  String firstData = await fetchFirstData();
  print(firstData); // Output: First Data
  String secondData = await fetchSecondData();
  print(secondData); // Output: Second Data
  print("Fetch complete.");
}


// Explanation:

// Here, two asynchronous operations are chained together using await.
// Each Future must complete before moving on to the next one.
// Key Points:
// Future represents the result of an asynchronous operation.
// async marks a function as asynchronous and returns a Future.
// await pauses the execution of the function until the Future completes, making the code look and behave in a synchronous way.