import 'dart:async';
import 'dart:io';

void main(List<String> args) async {
  Stream<int> flow = create(10);
  flow.listen((event) {
    print(event * 2);
  });
  await for (var t in doublestream()) {
    print(t);
  }
  Stream<int> spring = create(10).asBroadcastStream();
  StreamSubscription subscription = flow.listen((event) => print(event));

  create(50).listen(
    (event) => print(event),
  );

  var stram = flow.map(
    (event) => 'this is create stream $event',
  );

  stram.listen(
    (event) => print(event),
  );

  var value = int.tryParse(stdin.readLineSync()!);
  print(value);

  await for (var f in doublestream()) {
    print(f);
  }

  print(genNo(10));
}

Stream<int> create(int a) async* {
  for (int i = 1; i < a; i++) {
    await Future.delayed(Duration(seconds: 1));
    yield i;
  }
}

Stream<num> doublestream() async* {
  for (int i = 1; i < 10.0; i++) {
    await Future.delayed(Duration(seconds: 2));
    yield i;
  }
}

Iterable<int> genNo(int max) sync* {
  for (var i = 0; i < max; i++) {
    yield i;
  }
}

Stream<int> genNumbers(int max) {
  StreamController<int> streamController = StreamController<int>();
  for (var i = 0; i < max; i++) {
    streamController.sink.add(i);
  }
  return streamController.stream;
}
