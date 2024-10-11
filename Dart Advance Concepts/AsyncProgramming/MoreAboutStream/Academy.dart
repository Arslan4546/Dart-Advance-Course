import 'dart:async';

void main(List<String> args) async {
  await for (var i in generateNumber(100)) {
    print(i);
  }
  // ye cheez iss ko automatically listen bhi kr rhi hai
}

// Iterable<int> GenNo(int max) sync* {
//   for (var i = 0; i < max; i++) {
//     yield i;
//   }
// }

// Stream<int> generateNumber(int max) async* {
//   for (var i = 0; i < max; i++) {
//     await Future.delayed(Duration(seconds: 1));
//     yield i;
//   }
// }

Stream<int> generateNumber(int max) {
  StreamController<int> streamController = StreamController<int>();
  StreamSink<int> streamSink = streamController.sink;
  for (var i = 0; i < max; i++) {
    streamController.sink.add(
        i); // ye phla tareqa hai bagair kissi streamsink create app controller sy add kr skty hain stream mai

    streamSink.add(
        i); // ye dosra tareq hai without controller k but apko ko iss k lyee controller ko create krna pry ga
  }
  return streamController.stream;
}
// ye function generative ni hai but ye controller k through stream ko sink krti hai or ye 2 method sy sink hoee hai


