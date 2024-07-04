import 'dart:async';

void main() {
  StreamController<int> controller = StreamController<int>();
  Stream<int> stream = controller.stream;

  stream.listen((int number) {
    if (number % 2 == 0) {
      print("Even number received: $number");
    }
  });

  int i = 0;
  while (i < 200) {
    controller.add(i);
    i++;
  }

  controller.close();
}
