// O: The Open-Closed Principle (OCP)
void main() {
  const double _fuelPrice = 9.24;

  final Car jeep = Car("Tot");
  print(jeep.brandName);
  jeep.fuelCostPerKm(_fuelPrice);

  print('---');

  final Bike eightyCC = Bike("Hon");
  print(eightyCC.brandName);
  eightyCC.fuelCostPerKm(_fuelPrice);

  print('---');

  final ElectricCar electricCar = ElectricCar("Tes");
  print(electricCar.brandName);
  electricCar.fuelCostPerKm(_fuelPrice);
}

// Abstract

abstract class Vehicle {
  final String brand;
  int fuelPerKm;

  Vehicle({required this.brand, required this.fuelPerKm});

  void fuelCostPerKm(double fuelPrice) {
    print("Fule Cost: ${fuelPerKm * fuelPrice}");
  }
}

// Class

class Car extends Vehicle {
  final String brandName;

  Car(this.brandName) : super(brand: brandName, fuelPerKm: 20);
}

class Bike extends Vehicle {
  final String brandName;

  Bike(this.brandName) : super(brand: brandName, fuelPerKm: 40);
}

// Blocking- will sort in (L)
class ElectricCar extends Vehicle {
  final String brandName;

  ElectricCar(this.brandName)
      : super(
          brand: brandName,
          fuelPerKm: throw ("doesn't run on fule"),
        );
}


/*
  Tot
  Fule Cost: 184.8
  ---
  Hon
  Fule Cost: 369.6
  ---
  Unhandled exception:
  doesn't run on fule
*/