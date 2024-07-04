Future fetchData() async {
  return Future.delayed(Duration(seconds: 10), () => {"Data Received!"});
}

void main() async {
  print("before fetching...");
  print(fetchData());
  print("after fetching...");
}
