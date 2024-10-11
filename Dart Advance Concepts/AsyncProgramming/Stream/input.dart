import 'dart:io';

void main(List<String> args) {
  print("Enter An Integer Value:");
  var interValue = int.tryParse(stdin.readLineSync()!);
  print(interValue);
  print("Enter AnString Value:");
  var stringValue = stdin.readLineSync()!;
  print(stringValue);
  print("Enter A Double Value:");
  var doubleValue = double.tryParse(stdin.readLineSync()!);
  print(doubleValue);
}
