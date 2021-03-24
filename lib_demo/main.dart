// entrance
import 'package:flutter/material.dart';
import './tabs.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  static const PrimaryColor =  Color.fromARGB(32, 32, 32, 1);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: Tabs(),
    );
  }
}
