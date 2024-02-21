import 'package:flutter/material.dart';
import 'package:spormeg_g/ViewModel/qr_code.dart';
import 'package:spormeg_g/ViewModel/soon_location.dart';

class LocationPage extends StatefulWidget {
  static const String routeName = 'location';

  @override
  _LocationPageState createState() => _LocationPageState();
}

class _LocationPageState extends State<LocationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown,
      appBar: AppBar(
        backgroundColor: Colors.brown,
        elevation: 0,
        centerTitle: true,
        title: Text(
          'Spormeg',
          style: TextStyle(color: Colors.black,fontSize: 22),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              height: 40,
            ),
            Container(
              width: 160, // Set the desired width
              height: 120, // Set the desired height
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                  image: AssetImage(
                      'assets/images/2.png'), // Replace with your image path
                  fit: BoxFit.fill, // Adjust the BoxFit property as needed
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Column(
              children: [
                Text(
                  'Child personal information',
                  style: TextStyle(color: Colors.black, fontSize: 18),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  'add emergent information for your kid',
                  style: TextStyle(color: Colors.grey, fontSize: 18),
                ),
              ],
            ),
            SizedBox(
              height: 40,
            ),
            Container(
              width: 340, // Set the desired width
              height: 280, // Set the desired height
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                  image: AssetImage(
                      'assets/images/6.png'), // Replace with your image path
                  fit: BoxFit.cover, // Adjust the BoxFit property as needed
                ),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            SizedBox(
              width: 340,
              height: 50,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                    ),
                    onPressed: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (ctx) => SoonLocation()));
                      print('Check');
                    },
                    child: Text(
                      'Check',
                      style: TextStyle(fontSize: 22,color: Colors.brown),
                    )),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            SizedBox(
              width: 340,
              height: 50,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                    ),
                    onPressed: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (ctx) => QrCode()));
                    },
                    child: Text(
                      'Qr Code',
                      style: TextStyle(fontSize: 22,color: Colors.brown),
                    )),
              ),
            ),
          ],
        ),

      ),
    );
  }
}
