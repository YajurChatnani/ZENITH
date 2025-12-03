import 'package:flutter/material.dart';
import 'HomePage.dart'; // Make sure this import exists

class SplashScreen extends StatefulWidget {
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();

    Future.delayed(const Duration(seconds: 2), () {
      Navigator.pushReplacement(
        context,
        PageRouteBuilder(
          pageBuilder: (_, __, ___) => HomePage(),
          transitionsBuilder: (_, animation, __, child) {
            return FadeTransition(
              opacity: animation,
              child: child,
            );
          },
          transitionDuration: Duration(milliseconds: 600),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0F002C),
      body: Center(
        child: Text(
          "ZENITH",
          style: TextStyle(
            fontFamily: "Montserrat",
            fontWeight: FontWeight.w900,   // works now
            fontSize: MediaQuery.of(context).size.width * 0.15,
            letterSpacing: 2,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
