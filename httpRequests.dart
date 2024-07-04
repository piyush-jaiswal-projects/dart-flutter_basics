import 'dart:convert';
import 'package:http/http.dart' as http;

void main() async {
  const String apiUrl = 'https://jsonplaceholder.typicode.com';

  // Making a GET request
  await makeGetRequest(apiUrl);

  // Making a POST request
  await makePostRequest(apiUrl);
}

Future<void> makeGetRequest(String apiUrl) async {
  final url = Uri.parse('$apiUrl/posts/1');
  try {
    final response = await http.get(url);

    if (response.statusCode == 200) {
      // Successfully received the response
      Map<String, dynamic> data = jsonDecode(response.body);
      print('GET Request Successful:');
      print('Title: ${data['title']}');
      print('Body: ${data['body']}');
    } else {
      print('GET Request Failed with status: ${response.statusCode}');
    }
  } catch (e) {
    print('GET Request Error: $e');
  }
}

Future<void> makePostRequest(String apiUrl) async {
  final url = Uri.parse('$apiUrl/posts');
  final headers = {'Content-Type': 'application/json'};
  final body = jsonEncode({
    'title': 'foo',
    'body': 'bar',
    'userId': 1,
  });

  try {
    final response = await http.post(url, headers: headers, body: body);

    if (response.statusCode == 201) {
      // Successfully received the response
      Map<String, dynamic> data = jsonDecode(response.body);
      print('POST Request Successful:');
      print('ID: ${data['id']}');
      print('Title: ${data['title']}');
      print('Body: ${data['body']}');
    } else {
      print('POST Request Failed with status: ${response.statusCode}');
    }
  } catch (e) {
    print('POST Request Error: $e');
  }
}
