class Person {
  String name = "";
  int age = 0;
  Person(String name, int age) {
    this.name = name;
    this.age = age;
  }
  void greetPerson() {
    print('I knew it, $name! You are $age years old.');
  }
}

void main() {
  Person piyush = new Person("Piyush", 22);
  piyush.greetPerson();
}
