// Function that returns a Future after 2 seconds
Future<String> fetchData() {
  return Future.delayed(Duration(seconds: 2), () {
    return "Data fetched!";
  });
}

void main() {
  print("Fetching data...");
  fetchData().then((result) {
    print(result); // Output: Data fetched!
  });
  print("Request sent, waiting for data...");
}


// Explanation:

// fetchData() returns a Future that completes after 2 seconds.
// then() is used to specify what to do when the Future completes.
// The main function prints messages while waiting for the Future to complete.



