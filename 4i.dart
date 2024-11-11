// I: The Interface Segregation Principle (ISP)
void main(){
  const double _fuelPrice=8.22;

  final Bike bike=Bike("hon");
  print(bike.brandName);
  print("Cost: ${bike.cost(2, _fuelPrice)}");

  print("---");

  final Hice hice=Hice("Tot");
  print(hice.brandName);
  print("Cost: ${hice.cost(20, _fuelPrice)}");
  print("Profit: ${hice.profit(40, 100, 20, _fuelPrice)}");
}
// Interface

abstract class IPersonalVehicle {
  double cost(int liter, double fuelPrice);
}

abstract class IBusinessVehicle {
  double profit(int seat, double ticketPrice, int liter, double fuelPrice);
}

// Class

class Bike implements IPersonalVehicle {
  final String brandName;
  Bike(this.brandName);

  @override
  double cost(int liter, double fuelPrice) {
    return liter * fuelPrice;
  }
}

class Hice implements IPersonalVehicle, IBusinessVehicle {
  final String brandName;
  Hice(this.brandName);

  @override
  double cost(int liter, double fuelPrice) {
    return liter * fuelPrice;
  }

  @override
  double profit(int seat, double ticketPrice, int liter, double fuelPrice) {
    return (seat * ticketPrice) - (liter * fuelPrice);
  }
}


/*
  hon
  Cost: 16.44
  ---
  Tot
  Cost: 164.4
  Profit: 3835.6
*/