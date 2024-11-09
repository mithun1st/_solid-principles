void main() {
  final bike = VehicleRepair(2, 100.2);
  print(bike.wheelReplacementCost());

  print('--');

  final car = VehicleRepair(4, 180.7);
  print(car.wheelReplacementCost());

  print('--');

  final ship = BoatRepair(2000, 45.4, 8000);
  print(ship.bodyReplacementCost());
}

// Class

class VehicleRepair {
  final int numOfWheel;
  final double perWheelCost;
  VehicleRepair(this.numOfWheel, this.perWheelCost);

  double wheelReplacementCost() => numOfWheel * perWheelCost;
}

class BoatRepair {
  final int areaOfBoat;
  final double perSqureCost;
  final double paintCost;

  BoatRepair(this.areaOfBoat, this.perSqureCost, this.paintCost);

  double bodyReplacementCost() => (areaOfBoat * perSqureCost) + paintCost;
}
