void main() {
  var name = printName();
  // you can get access to the dollar type

  print(name.$1);
  print(name.$2);

  // you can also return the function
  var (age, parent) = printName();
  print(age);
  print(parent);
  // return null
  var (price, labelname) = nullReturn();
  print(price);
  // name argument wil  make argument more safe when pass
  requireAgurment(age: 19, greeting: "hello word ");
  // return record with name
  var stuff = printProduct();
  print(stuff.age);
  print(stuff.name);

  // return function
  final func = printStuff();
  func();

  // creating a  anonymous function inside it scope  the scope is before ; 

  print("second function call");
  () {
    print("hello world");
  }
      // calling anonymous  inside it scope
      ();
}

// you can return a function as a tuplet data type
(int, String) printName() {
  return (12, "Rivaan");
}

// you can also return null  if you have the ? before the type
(double, String?) nullReturn() {
  return (12.0, null);
}

// the argument in which the name function need to be stated if they are null
// or state if they are
void requireAgurment(
    {String? name, required int age, required String greeting}) {
  print("$greeting $name $age");
}

// positional and name argument in the same function
// you add in the positional argument before required argument
void positionalAndNamearguemnt(bool hello,
    {String? name, required int age, required String greeting}) {
  print("$greeting $name $age");
}

// name record
// returning a record who can have assign name

({int age, String name}) printProduct() {
  return (age: 12, name: "man");
}

// returning a function

Function printStuff() {
  return () {
    print("hello world");
  };
}
