// main can have a return type
// this is how you import a dart package , this package is automatically imported into dart
import 'dart:core';

//
import 'dart:io';

main() {
  // define a variable using the var it is not assign a specifit type
  var firstName = 'Mahmud';
  // we can also define type constraint
  String lastName = 'Ahsan';

  stdout.writeln('what is your name : ? ');
  // the read line in this take in a nullable string value 
  String? name = stdin.readLineSync(); 
  print('My name is $name'); 
}
