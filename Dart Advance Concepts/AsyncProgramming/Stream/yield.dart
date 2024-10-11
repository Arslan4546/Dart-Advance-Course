// Purpose: Used inside generator functions (sync* or async*), allowing the function to return multiple values lazily (i.e., one at a time) as a stream or iterable.

// Use Case: When you want to return a sequence of values over time, such as when iterating over a collection or generating values on-demand.

// Behavior: When yield is called, it temporarily pauses the function, returns a value to the caller, and the function can resume later to produce the next value.

// sync*: Used to create synchronous iterators.
// async*: Used to create asynchronous streams.

// sync* example
Iterable<int> generateNumbers(int max) sync* {
  for (int i = 1; i <= max; i++) {
    yield i; // Returns each value one by one
  }
}

void main() {
  for (var number in generateNumbers(3)) {
    print(number); // Output: 1, 2, 3 (one at a time)
  }
}

// // async* example
// Stream<int> asyncGenerateNumbers(int max) async* {
//   for (int i = 1; i <= max; i++) {
//     yield i;  // Returns each value asynchronously
//     await Future.delayed(Duration(seconds: 1));  // Simulating delay
//   }
// }

// void main() async {
//   await for (var number in asyncGenerateNumbers(3)) {
//     print(number);  // Output: 1, 2, 3 (one per second)
//   }
// }