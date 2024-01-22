# What Is  Dart
**Dart and Flutter:**

1. **Dart for Versatile Development:**
   Dart is a programming language suitable for both front-end and back-end development, providing versatility for creating complete applications.

2. **Flutter's Powerhouse:**
   Flutter, comprising the framework and SDK, is a robust toolkit for building attractive and high-performance cross-platform applications.

3. **Real and Multi-Device Testing:**
   - Deploying Flutter apps on real devices enables realistic testing to observe performance.
   - Multi-device testing is supported for optimal performance across various screen sizes, recommending a minimum of 2GB RAM for efficiency.

4. **Development Environment:**
   - For smooth development, a computer with a minimum of 2GB RAM is recommended when working with Flutter applications.
   - The Flutter SDK seamlessly integrates the complete Dart SDK, allowing developers to use Dart's command-line tools conveniently.

5. **Object-Oriented Programming (OOP) in Dart:**
   - Abstraction, Encapsulation, Inheritance, and Polymorphism are fundamental OOP principles in Dart.

6. **Asynchronous Code in Dart:**
   - Dart allows writing asynchronous code that behaves as if it were synchronous, enabling tasks to complete independently.

7. **Clear and Intuitive Documentation:**
   - Dart and Flutter documentation is clear, intuitive, and consistent, facilitating a smooth development experience.

8. **Cross-Platform Development with Flutter:**
   - Flutter makes cross-platform development easy and enjoyable, recommended for building applications for both iOS and Android.

9. **Static Typing in Dart:**
   - Dart is a statically-typed language, enforcing that once a type is assigned (e.g., string), it cannot be changed to a different type.

10. **Compilation in Dart:**
    - During program execution, Dart uses Just-In-Time (JIT) compilation.
    - The final product provides Ahead-Of-Time (AOT) compilation with optimization for runtime efficiency.

## dart history 
1. **Dart 1.0 (November 14, 2013):**
    
    - Released on November 14, 2013, Dart 1.0 introduced a modern, object-oriented language for web development.
    - Featured a strong static type system and support for asynchronous programming.
2. **Dart 2.0 (August 2018):**
    
    - Released in August 2018, Dart 2.0 marked a significant shift with a sound static type system.
    - Introduced strong mode, enhancing type annotations for improved performance and developer experience.
    - Embraced a more concise syntax and focused on usability and flexibility.
3. **Subsequent Updates:**
    
    - Dart continues to receive regular updates, emphasizing stability, performance, and developer feedback.
    - Actively engaged with the community to address evolving needs in web and mobile app development.
4. **Flutter's Impact:**
    
    - Dart gained popularity through its association with Flutter, an open-source UI toolkit by Google.
    - Dart is the primary language for Flutter, contributing to its growth and making it a choice for cross-platform app development.
5. **Dart SDK Releases:**
    
    - Ongoing updates to the Dart SDK introduce new features, improvements, and optimizations.
    - Dart remains a reliable and versatile language for modern software development.
    - 


## dart different compilation 
When running code without generating a binary output, it's likely because it's executed in debug mode. Dart supports two types of compilation:

1. **AOT (Ahead Of Time) Compiler:**
  - AOT compilation involves translating the entire Dart program into machine code ahead of running it.
  - Offers faster runtime performance.
  - Typically used in production environments to provide optimized and efficient execution.
  2. **JIT (Just In Time) Compilation:**
  - JIT compilation translates Dart code into machine code at runtime, just before it is executed.
  - Allows for quick development as changes can be made on-the-fly without stopping the application.
  - Although JIT-compiled code may run slower than AOT-compiled code, it offers the advantage of flexibility during development.
# dart programming 
## data type 
**Type Systems in Programming Languages:**

1. **Integer:**
   - `int`: Represents integer numbers, both positive and negative.
   - Example: 
     ```dart
     int count = 42;
     ```

2. **Floating-Point:**
   - `double`: Represents floating-point numbers with decimal places.
   - Example:
     ```dart
     double price = 19.99;
     ```

3. **String:**
   - `String`: Represents sequences of characters, such as words or sPentences.
   - Example:
     ```dart
     String greeting = 'Hello, Dart!';
     ```

4. **Boolean:**
   - `bool`: Represents a Boolean value, either `true` or `false`.
   - Example:
     ```dart
     bool isRaining = false;
     ```

5. **Dynamic:**
   - `dynamic`: Represents a type that can change dynamically during runtime.
   - Example:
     ```dart
     dynamic dynamicVariable = 'This can be a string now';
     dynamicVariable = 42; // Now it's an integer
     ```

6. **List:**
   - `List`: Represents an ordered collection of objects.
   - Example:
     ```dart
     List<int> numbers = [1, 2, 3];
     ```

7. **Map:**
   - `Map`: Represents a collection of key-value pairs.
   - Example:
     ```dart
     Map<String, dynamic> person = {
       'name': 'John',
       'age': 25,
       'isStudent': false,
     };
     ```

8. **Set:**
   - `Set`: Represents an unordered collection of unique elements.
   - Example:
     ```dart
     Set<String> uniqueColors = {'red', 'green', 'blue'};
     ```

9. **Runes:**
   - `Runes`: Represents a Unicode code point.
   - Example:
     ```dart
     var heartRune = '\u2665';
     ```

10. **Symbol:**
    - `Symbol`: Represents identifiers, often used for features like reflection and metaprogramming.
    - Example:
      ```dart
      Symbol mySymbol = #exampleSymbol;
      ```


## different in type language  
1. **Strongly Typed Language:**
    
    - In strongly typed languages, the type of a variable is known at compile time.
    - Examples include C++, Java, and Swift.
    - Type information is enforced and checked during compilation, providing early error detection.
2. **Dynamic Type Language:**
    
    - Dynamic type languages determine the type of a variable at runtime.
    - Examples include Python, Ruby, and JavaScript.
    - Type checking occurs during program execution, allowing for more flexibility but potentially leading to runtime errors.
