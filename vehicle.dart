class Vehicle {
  int? makeYear;
  String? model;

  void set(int year, String model) {
    this.makeYear = year;
    this.model = model;
  }

  get() {
    return {"makeYear": makeYear, "model": model};
  }
}

class Car extends Vehicle {
  int numDoors = 0;
  Car(int year, String model, int doors) {
    this.numDoors = doors;
    super.makeYear = year;
    super.model = model;
  }

  void getDetails() {
    print(
        "Car Details:\n Model Name: $model \n Model Year: $makeYear \n No.of doors: $numDoors");
  }
}

void main() {
  Car myCar = new Car(2020, "X", 5);
  myCar.getDetails();
}
