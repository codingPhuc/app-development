import 'dart:ffi';

void main() {
  // creating an object of a class
  Cookie cookie = Cookie();
  cookie.baking();
  // this is a instance of a class
  // when printed out it will give us a instance of an object
  // calling a static method of the class
  print(Cookie.size);

  // classes help us create buleprint of an object
  final cookie = Cookie().isCooling();
  // you can also change the variable of class
  cookie.shape = 'Rectangle';
  print(cookie.shape); 
  
}

class Cookie {
  String shape = 'Circle';
  static int size = 15.2; // cm

  // method
  void baking() {
    print('baking has started');
  }

  bool isCooling() {
    return false;
  }
}
