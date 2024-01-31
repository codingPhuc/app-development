import 'dart:web_audio';

void main() {
  // creating an object of a class
  Cookie cookie = Cookie('round', 19);
  cookie.baking();
  // this is a instance of a class
  // when printed out it will give us a instance of an object
  // calling a static method of the class
  print(Cookie.size);

  // you can also change the variable of class
  cookie.shape = 'Rectangle';
  print(cookie.shape);

  // Using the default constructor
  var cookie1 = Cookie('Square', 20);
  print('Cookie 1 - Shape: ${cookie1.shape}, Size: ${cookie1.size}');

  // Using the named constructor
  var cookie2 = Cookie.custom(shape: 'Triangle', size: 25);
  print('Cookie 2 - Shape: ${cookie2.shape}, Size: ${cookie2.size}');

  // using a static class  
  // you can access variable with the static key word using static class constrain 
  print(Constants.height); 
  print(Constants.greeting);
  print(Constants.bye); 
}

class Cookie {
  String shape = 'Circle';
  int size = 15; // cm

  int _height = 4;
  int _width = 5;

  // Default constructor
  Cookie(this.shape, this.size) {}

  // Named constructor
  // in dart you have to have name for custome constructor
  Cookie.custom({required this.shape, required this.size}) {}

  // method
  void baking() {
    print('Baking has started');
  }

  bool isCooling() {
    return false;
  }

  // setter getter
  // getter
  int get height => _height;

  // setter
  set setHeight(int h) {
    _height = h;
  }

  
}

// static variable 
// when you create a variable most of the time it is private 
// but sometime you want to access without the need to create a class 
// think of it like 


void main()
{
  print(Constants.
}

class  Constants 
{
   static int height = 10  ; 
   static String greeting =  "Hellow , how are you ?"  ; 
   static String bye  =  'Bye!' ; 

   static int giveMeSomeValue()
   {
    return height ;  
   }

}

