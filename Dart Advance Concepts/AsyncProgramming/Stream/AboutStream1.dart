import 'dart:async';

void main(List<String> args) {
  // Stream<int> stream = generateNumber(200);
  // StreamSubscription streamSubscription = stream.listen(
  //   (event) => print(event),
  // );

  // generateNumber(200).listen(
  //   (event) => print(event),
  // );

  Stream<int> stream = generateNumber(200).asBroadcastStream();
  StreamSubscription streamSubscription = stream.listen(
    (event) => print(event),
  );

  var stringStream = stream.map(
    (event) => "This is the event $event",
  );

  stringStream.listen(
    (event) => print(event),
  );

  var evenStream = stream.where(
    (event) => event.isEven,
  );

  evenStream.listen(
    (event) => print(event),
  );
}

Stream<int> generateNumber(int max) async* {
  for (var i = 0; i < max; i++) {
    await Future.delayed(Duration(seconds: 1));
    yield i;
  }
}
