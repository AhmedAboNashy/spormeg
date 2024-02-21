import 'package:flutter/material.dart';
import 'package:spormeg_g/Register/register.dart';
import 'package:spormeg_g/View/splash_screen.dart';
import 'package:spormeg_g/ViewModel/Soon_Qr.dart';
import 'package:spormeg_g/ViewModel/location_page.dart';
import 'package:spormeg_g/ViewModel/qr_code.dart';
import 'package:spormeg_g/login/login.dart';

import 'ViewModel/soon_location.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes:{
        CreateAccount.routeName: (_) => CreateAccount(),
        LogIN.routeName: (_) => LogIN(),
        SplashScreen.routeName: (_) => SplashScreen(),
        LocationPage.routeName: (_) => LocationPage(),
        SoonLocation.routeName: (_) => SoonLocation(),
        SoonQr.routeName: (_) => SoonQr(),
        QrCode.routeName: (_) => QrCode(),

      } ,
      initialRoute:SplashScreen.routeName ,

    );
  }
}