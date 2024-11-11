// D: The Dependency Inversion Principle (DIP)
void main() {
  final fuel = Fuel(fulePrice: 2.8);
  final gas = Gas(gasPrice: 2.2);

  final Vehicle hice = Vehicle("Tot");
  print(hice.vehicleMileage(fuel, 40));
  hice.isGood(fuel);

  print(hice.vehicleMileage(gas, 30));
  hice.isGood(gas);
}

abstract class IEnergySource {
  double mileage(int liter);
  void feedBack();
}

// DI

class Fuel implements IEnergySource {
  final double fulePrice;
  Fuel({required this.fulePrice});

  @override
  double mileage(int liter) {
    return liter * fulePrice;
  }

  @override
  void feedBack() {
    print("Good for engine");
  }
}

class Gas implements IEnergySource {
  final double gasPrice;
  Gas({required this.gasPrice});

  @override
  double mileage(int liter) {
    return liter * 25;
  }

  @override
  void feedBack() {
    print("Not good for engine");
  }
}

// class

class Vehicle {
  final String brandName;
  Vehicle(this.brandName);

  double vehicleMileage(IEnergySource energySource, int l) {
    return energySource.mileage(l);
  }

  void isGood(IEnergySource energySource) {
    energySource.feedBack();
  }
}
