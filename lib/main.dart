import 'package:flutter/material.dart';
import 'package:zenith/screens/login.dart';
import 'screens/SplashScreen.dart';
import 'screens/HomePage.dart';
import 'screens/login.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginScreen() ,
    );
  }
}
