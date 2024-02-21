import 'package:flutter/material.dart';

class SoonQr extends StatelessWidget {
  static const String routeName = 'SoonQr';


  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
              child: Text(
                'Soon Qr',
                style: TextStyle(color: Colors.blueGrey, fontSize: 50),
              ))
        ],
      ),
    );
  }
}
