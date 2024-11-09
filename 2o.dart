void main() {
  final Car jeep = Car("Hum", false);
  final Car hice = Car("Tot", true);

  final Bike eightyCC = Bike("Hon", 30.5);

  jeep.showTitle();
  print(jeep.getDetails());

  print('---');

  hice.showTitle();
  print(hice.getDetails());

  print('---');

  eightyCC.showTitle();
  print(eightyCC.getDetails());
}

// Abstract

abstract class Vehicle {
  final String brand;
  final int wheel;
  Vehicle(this.brand, this.wheel);

  void showTitle() {
    print("Brand: $brand\tWheel: $wheel");
  }

  String getDetails();
}

// Class

class Car extends Vehicle {
  final String brandName;
  final bool ac;
  Car(
    this.brandName,
    this.ac,
  ) : super(brandName, 4);

  @override
  String getDetails() {
    return "has ac: $ac";
  }
}

class Bike extends Vehicle {
  final String brandName;
  final double handelRotate;
  Bike(
    this.brandName,
    this.handelRotate,
  ) : super(brandName, 2);

  @override
  String getDetails() {
    return "rotation degree: $handelRotate";
  }
}
