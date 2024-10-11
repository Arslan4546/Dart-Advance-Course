// Purpose: Immediately terminates the function and returns a single value.

// Use Case: Regular functions that return a single value or the end result of a computation.

// Behavior: Once return is executed, the function exits, and no further code in the function is executed.

int sum(int a, int b) {
  return a + b; // Immediately returns the sum of a and b
}

void main() {
  print(sum(3, 5)); // Output: 8
}
