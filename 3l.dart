// L: The Liskov Substitution Principle (LSP)
void main() {
  const double _fuelPrice = 9.24;
  const double _electricUnitPrice = 1.24;

  final Car jeep = Car("Tot", 20);
  print(jeep.brandName);
  jeep.costPerKm(_fuelPrice);

  print('---');

  final ElectricCar electricCar = ElectricCar("Tes", 140);
  print(electricCar.brandName);
  electricCar.costPerKm(_electricUnitPrice);

  print('---');
}

// Abstract

abstract class Vehicle {
  final String brand;

  Vehicle({required this.brand});

  void costPerKm(double energySourcePrice) {
    print('Cost: $energySourcePrice * --');
  }
}

// Class

class Car extends Vehicle {
  final String brandName;
  final int fuelPerKm;

  Car(this.brandName, this.fuelPerKm) : super(brand: brandName);

  @override
  void costPerKm(double energySourcePrice) {
    print("Fule Cost: ${fuelPerKm * energySourcePrice}");
  }
}

class ElectricCar extends Vehicle {
  final String brandName;
  final int electricUnitPerKm;

  ElectricCar(this.brandName, this.electricUnitPerKm) : super(brand: brandName);

  @override
  void costPerKm(double energySourcePrice) {
    print("Electric Cost: ${electricUnitPerKm * energySourcePrice}");
  }
}
