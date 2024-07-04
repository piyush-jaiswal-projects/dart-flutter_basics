import 'dart:convert';

class User {
  int id;
  String name;
  String email;

  User({required this.id, required this.name, required this.email});

  // Method to serialize a User object to JSON
  String toJson() {
    Map<String, dynamic> userMap = {
      'id': id,
      'name': name,
      'email': email,
    };
    return jsonEncode(userMap);
  }

  // Method to deserialize JSON back to a User object
  factory User.fromJson(String jsonString) {
    Map<String, dynamic> userMap = jsonDecode(jsonString);
    return User(
      id: userMap['id'],
      name: userMap['name'],
      email: userMap['email'],
    );
  }

  // Override toString method to make it easier to print User objects
  @override
  String toString() {
    return 'User{id: $id, name: $name, email: $email}';
  }
}

void main() {
  // Create a User object
  User user = User(id: 1, name: 'John Doe', email: 'john.doe@example.com');

  // Serialize the User object to JSON
  String jsonString = user.toJson();
  print('Serialized User to JSON: $jsonString');

  // Deserialize the JSON back to a User object
  User deserializedUser = User.fromJson(jsonString);
  print('Deserialized JSON to User: $deserializedUser');
}
