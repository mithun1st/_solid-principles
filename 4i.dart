// Interface

abstract class PersonalVehicle {
  double cost(int liter, double fuelPrice);
}

abstract class BusinessVehicle {
  double profit(int seat, double ticketPrice, int liter, double fuelPrice);
}

// Class

class Bike implements PersonalVehicle {
  @override
  double cost(int liter, double fuelPrice) {
    return liter * fuelPrice;
  }
}

class Hice implements PersonalVehicle, BusinessVehicle {
  @override
  double cost(int liter, double fuelPrice) {
    return liter * fuelPrice;
  }

  @override
  double profit(int seat, double ticketPrice, int liter, double fuelPrice) {
    return (seat * ticketPrice) - (liter * fuelPrice);
  }
}
