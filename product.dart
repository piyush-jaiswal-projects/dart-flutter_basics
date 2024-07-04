class Product {
  static double? package_charge;
  String name = '';
  double price = 0;

  Product(String productName, double productPrice) {
    this.name = productName;
    this.price = productPrice;
  }

  static double calculate_extra_charges(double price) {
    return package_charge! + (price * 0.1);
  }

  void set_values(String newName, double newPrice) {
    this.name = newName;
    this.price = newPrice;
  }

  get_values() {
    return {"name": this.name, "price": this.price};
  }

  double total_cost() {
    return this.price + calculate_extra_charges(this.price);
  }
}

void main() {
  Product p1 = new Product("Frooti", 20);
  Product p2 = new Product("Namkeen", 15.65);

  Product.package_charge = 3.98;

  print(p1.get_values());
  print("Extra Charges on P1: ${Product.calculate_extra_charges(p1.price)}");
  print(p2.get_values());
  p2.set_values("Kurkure", 25);
  print(p2.get_values());
  print(p2.get_values());
  double final_cost = p1.total_cost() + p2.total_cost();
  print("FINAL COST: $final_cost");
}
