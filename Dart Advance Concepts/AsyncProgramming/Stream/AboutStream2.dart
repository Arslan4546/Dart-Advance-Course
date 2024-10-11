import 'dart:async';

void main(List<String> args) {
  // Creating a stream and converting it to a broadcast stream
  Stream<int> stream = generateNumber(200).asBroadcastStream();

  // Declare StreamSubscription variable first
  StreamSubscription<int>? streamSubscription;

  // Listening to the stream
  streamSubscription = stream.listen(
    (event) {
      print('Event received: $event');
      if (event == 5) {
        // Pause the stream for 3 seconds after the 5th event
        print('Pausing subscription...');
        streamSubscription?.pause();
        Future.delayed(Duration(seconds: 3), () {
          print('Resuming subscription...');
          streamSubscription?.resume();
        });
      }

      if (event == 10) {
        // Cancel the subscription after receiving 10 events
        print('Cancelling subscription after event: $event');
        streamSubscription?.cancel();
      }
    },
    onError: (error) {
      print('Error occurred: $error');
    },
    onDone: () {
      print('Stream has completed');
    },
  );
}

Stream<int> generateNumber(int max) async* {
  for (var i = 0; i < max; i++) {
    await Future.delayed(Duration(seconds: 1)); // Simulate delay
    yield i; // Emit a new event
  }
}



// output:
// Event received: 0
// Event received: 1
// Event received: 2
// Event received: 3
// Event received: 4
// Event received: 5
// Pausing subscription...
// Resuming subscription...
// Event received: 6
// Event received: 7
// Event received: 8
// Event received: 9
// Event received: 10
// Cancelling subscription after event: 10
