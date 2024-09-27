// ==> Example 1

var record = ('first', a: 2, b: true, 'last');

void main(List<String> args) {
  print(record.$1); // Prints 'first'
  print(record.a); // Prints 2
  print(record.b); // Prints true
  print(record.$2); // Prints 'last'
}
