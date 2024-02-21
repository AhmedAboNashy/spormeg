import 'package:flutter/material.dart';
import 'package:spormeg_g/login/login.dart';

class SplashScreen extends StatefulWidget {
  static const String routeName = 'splash';
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void initState() {
    goToHome();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Image.asset(
        'assets/images/splash.jpeg',
        width: double.infinity,
        height: double.infinity,
        fit: BoxFit.fill,
      ),
    );
  }

  goToHome() async {
    await Future.delayed(
        Duration(seconds: 3),
        () => Navigator.pushNamedAndRemoveUntil(
            context, LogIN.routeName, (route) => false));
  }
}
