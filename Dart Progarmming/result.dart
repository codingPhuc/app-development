class Social {
  int id;
  String name;
  String url;

  // Named constructor for Social class
  Social({required this.id, required this.name, required this.url});

  // Getter and setter for id
  int get socialId => id;
  set socialId(int newId) => id = newId;

  // Getter and setter for name
  String get socialName => name;
  set socialName(String newName) => name = newName;

  // Getter and setter for url
  String get socialUrl => url;
  set socialUrl(String newUrl) => url = newUrl;

  // Override toString method
  @override
  String toString() {
    return 'Social{id: $id, name: $name, url: $url}';
  }

  // Override == operator
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Social &&
          runtimeType == other.runtimeType &&
          id == other.id &&
          name == other.name &&
          url == other.url;
}

class Student {
  int id;
  String name;
  int age;
  String email;
  List<Social> social;

  // Concise version of the constructor for Student class
  Student(
      {required this.id,
      required this.name,
      required this.age,
      required this.email,
      required this.social});

  // Getter and setter for id
  int get studentId => id;
  set studentId(int newId) => id = newId;

  // Getter and setter for name
  String get studentName => name;
  set studentName(String newName) => name = newName;

  // Getter and setter for age
  int get studentAge => age;
  set studentAge(int newAge) => age = newAge;

  // Getter and setter for email
  String get studentEmail => email;
  set studentEmail(String newEmail) => email = newEmail;

  // Getter and setter for social
  List<Social> get studentSocial => social;
  set studentSocial(List<Social> newSocial) => social = newSocial;

  // Override toString method
  @override
  String toString() {
    return 'Student => {id: $id, name: $name, age: $age, email: $email, \n social: $social}';
  }

  // Override == operator
  @override
  bool operator > (Object other) =>
      other is Student && runtimeType == other.runtimeType && age > other.age;
}

void main() {
  // Creating Student objects
  Student student1 =
      Student(id: 1, name: 'John', age: 20, email: 'john@e.com', social: [
    Social(id: 1, name: 'Twitter', url: 'twitter.com/john'),
    Social(id: 2, name: 'Instagram', url: 'instagram.com/john'),
  ]);

  Student student2 = Student(
      id: 2,
      name: 'Alice',
      age: 22,
      email: 'alice@example.com',
      social: [
        Social(id: 1, name: 'Facebook', url: 'facebook.com/alice'),
        Social(id: 2, name: 'LinkedIn', url: 'linkedin.com/alice'),
      ]);

  // Printing student information
  print(student1);
  print(student2);
}
