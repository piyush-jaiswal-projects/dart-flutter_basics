mixin CanFly {
  void fly(String? value) {
    print("$value Flying...");
  }
}

class Bird with CanFly {
  String? name;
  Bird(this.name);
  void showStatus() {
    fly(name);
  }
}

class Aeroplane with CanFly {
  String? name;
  Aeroplane(this.name);
  void showStatus() {
    fly(name);
  }
}

void main() {
  Bird sparrow = new Bird("Sparrow");
  Aeroplane boeing = new Aeroplane("Boeing");
  sparrow.showStatus();
  boeing.showStatus();
}
