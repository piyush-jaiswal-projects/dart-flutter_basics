import 'dart:isolate';

void calculatePrimes(SendPort sendPort) {
  int limit = 1000000;
  List<int> primes = [];

  for (int i = 2; i <= limit; i++) {
    bool isPrime = true;
    for (int j = 2; j <= i ~/ 2; j++) {
      if (i % j == 0) {
        isPrime = false;
        break;
      }
    }
    if (isPrime) {
      primes.add(i);
    }
  }

  // Send the list of prime numbers back to the main isolate
  sendPort.send(primes);
}

void main() {
    // Create a ReceivePort to receive messages from the isolate
  ReceivePort receivePort = ReceivePort();

  // Spawn an isolate to perform the prime number calculation
  Isolate.spawn(calculatePrimes, receivePort.sendPort);

  // Listen for messages from the isolate
  receivePort.listen((message) {
    List<int> primes = message;
    print('Primes calculated: ${primes.length}');
    print('First 10 primes: ${primes.take(10).toList()}');
    receivePort.close(); // Close the ReceivePort when done
  });

  // Main thread can perform other tasks while the isolate works
  print('Main thread is not blocked!');
}
