void main() async {
  // Initiating two asynchronous operations without awaiting them immediately
  var task1 = getValueAfterDelay(1, 2);
  var task2 = getValueAfterDelay(2, 3);

  // Now we wait for both to complete in parallel
  var result1 = await task1;
  var result2 = await task2;

  print('Results: $result1, $result2');
}

Future<int> getValueAfterDelay(int value, int seconds) async {
  await Future.delayed(Duration(seconds: seconds));
  return value;
}

// ye dono statment paralelly execute hon gee ager apko in ko thora thora wait krva k print krty hian to function call k bad hai apko print krnva ho ga result tab he ye one by one thora wait kr k print hon gy
