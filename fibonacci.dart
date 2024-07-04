import 'dart:io';

void main() {
  print('Enter series length: ');
  int n = int.parse(stdin.readLineSync()!);
  printFibonacci(n);
}

void printFibonacci(int count) {
  // 0, 1, 1, 2, 3, 5, 8, 13, 21, ....
  List<int> temp = [];

  for (int i = 0; i < count; i++) {
    if (i < 2) {
      temp.add(i);
      continue;
    }
    int curr = temp[i - 1] + temp[i - 2];
    temp.add(curr);
  }

  printList(temp);
}

void printList(List<int> fibonacci) {
  print(fibonacci);
}
