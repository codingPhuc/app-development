void main() {
  Car car = Car(); 
  
}

class Vehicle {
  int speed = 10;
  bool isEngineWorking = false;
  bool isLightOn = true;
  void accelerate() {
    speed += 10;
  }
}

class Car extends Vehicle {
  int noOfWheels = 4;
  void printSomething() {
    print(noOfWheels);
  }
}

class Trucks extends Vehicle {
  int noOfWheels = 8;
  void printSomething() {
    print(noOfWheels);
  }
}
