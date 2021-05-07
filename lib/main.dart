import 'package:flutter/material.dart';
import 'package:flutter_app/messengerscreen.dart';
//import 'homescreen.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Messenger(),
    );
  }

}