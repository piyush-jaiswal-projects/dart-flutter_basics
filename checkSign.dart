import 'dart:io';

void main() {
  try {
    print("Enter number: ");
    num input = int.parse(stdin.readLineSync()!);
    print(getSign(input));
  } on FormatException {
    print("Invalid inputs passed!");
  } catch (e) {
    print("Error Occurred! \n $e");
  }
}

String getSign(num number) {
  if (number > 0)
    return "POSITIVE";
  else if (number < 0)
    return 'NEGATIVE';
  else
    return "ZERO";
}
