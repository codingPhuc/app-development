import 'dart:ffi';

class Student {
  int id;
  String name;
  int age;
  String email;
  List<Social>? social;
  Student(this.id, this.name, this.age, this.email,
      {required List<Social> social}) {}
  // getter
  int get getId => id;

  // setter
  set setHeight(int id) {
    this.id = id;  
  }



   // getter
  int get getName=> this.name;

  // setter
  set setName(String name) {
    this.name = name;  
  }


   // getter
  int get getId => id;

  // setter
  set setHeight(int id) {
    this.id = id;  
  }


   // getter
  int get getId => id;

  // setter
  set setHeight(int id) {
    this.id = id;  
  }
}

class Social {
  int? id;
  String? name;
  String? url;
  Social({int? id, String? name, String? url}) {}
}
