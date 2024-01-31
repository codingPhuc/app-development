import 'package:flutter/material.dart';

void main() {
  // var myStyle = TextStyle(
  //   fontSize:  20 ,
  //   color:   Colors.green ,
  //
  // );
  // var text = Text(
  //   'Welcome to Flutter'  ,
  //   textDirection: TextDirection.ltr,
  //   style:  myStyle,
  //
  // )  ;
  // runApp(text)  ;

  runApp(Mylego());
}

// stateless or stateful widget
class Mylego extends StatelessWidget {
  const Mylego({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: const Text(
        'Welcome to Flutter Programing this hello ',
        textDirection: TextDirection.ltr,
        style: TextStyle(fontSize: 20, color: Colors.green),
      ),
    );
  }
}
