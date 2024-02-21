import 'package:flutter/material.dart';

class SoonLocation extends StatelessWidget {
  static const String routeName = 'Soon';


  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
              child: Text(
                'Soon Location',
                style: TextStyle(color: Colors.blueGrey, fontSize: 50),
              ))
        ],
      ),
    );
  }
}
