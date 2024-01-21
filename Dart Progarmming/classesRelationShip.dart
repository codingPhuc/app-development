import 'dart:indexed_db';

void main() {}

class Vehicle {
  bool isEngineWorking = false;
  bool isLightOn = true;
}

class Car extends Vehicle {
  int noOfWheels = 4;
  void printSomething() {
    print(noOfWheels);
  }
}

class Truck extends Vehicle {
  int noOfWheels = 8;
  void printSomething() {
    print(noOfWheels); 
  }
}

class Bike extends Vehicle 
{

}
