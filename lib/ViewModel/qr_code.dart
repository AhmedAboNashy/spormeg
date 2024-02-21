import 'package:flutter/material.dart';
import 'package:spormeg_g/Mytheme/myTheme.dart';
import 'package:spormeg_g/ViewModel/Soon_Qr.dart';

class QrCode extends StatefulWidget {
  static const String routeName = 'QrCode';

  @override
  State<QrCode> createState() => _QrCodeState();
}

class _QrCodeState extends State<QrCode> {
  TextEditingController fullName = TextEditingController();
  TextEditingController age = TextEditingController();
  TextEditingController specialMedicalCondition = TextEditingController();
  TextEditingController emergencyNumber = TextEditingController();
  var formKey = GlobalKey<FormState>();
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
          child: SingleChildScrollView(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Container(
                    width: 160, // Set the desired width
                    height: 120, // Set the desired height
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                        image: AssetImage(
                            'assets/images/1.png'), // Replace with your image path
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
                  Padding(
                    padding: const EdgeInsets.all(13.0),
                    child: Column(
                      children: [
                        Form(
                          key: formKey,
                          child: Column(
                            children: [
                              TextFormField(
                                controller: fullName,
                                keyboardType: TextInputType.text,
                                decoration: InputDecoration(
                                  fillColor: Color(MyTheme.backgroundInterface),
                                  filled: true,
                                  labelStyle: TextStyle(
                                      color: Color(MyTheme.textRegister)),
                                  hintStyle: TextStyle(
                                      color: Color(MyTheme.textRegister)),
                                  hintText: ('Full Name'),
                                  labelText: 'Full Name',
                                  border: OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(20)),
                                    borderSide: BorderSide(color: Colors.brown),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(20)),
                                      borderSide:
                                          BorderSide(color: Colors.white10)),
                                ),
                                validator: (value) {
                                  if (value == null || value.trim().isEmpty) {
                                    return 'Please Enter Full Name';
                                  }
                                },
                                // saved mail
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              TextFormField(
                                keyboardType: TextInputType.number,
                                decoration: InputDecoration(
                                  fillColor: Color(MyTheme.backgroundInterface),
                                  filled: true,
                                  labelStyle: TextStyle(
                                      color: Color(MyTheme.textRegister)),
                                  hintStyle: TextStyle(
                                      color: Color(MyTheme.textRegister)),
                                  hintText: ('Age'),
                                  labelText: 'Age',
                                  border: OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(20)),
                                    borderSide: BorderSide(color: Colors.brown),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(20)),
                                      borderSide:
                                          BorderSide(color: Colors.white10)),
                                ),
                                validator: (value) {
                                  if (value == null || value.trim().isEmpty) {
                                    return 'Please Enter Age';
                                  }
                                  return null;
                                },
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              TextFormField(
                                keyboardType: TextInputType.text,
                                decoration: InputDecoration(
                                  fillColor: Color(MyTheme.backgroundInterface),
                                  filled: true,
                                  labelStyle: TextStyle(
                                      color: Color(MyTheme.textRegister)),
                                  hintStyle: TextStyle(
                                      color: Color(MyTheme.textRegister)),
                                  hintText: ('Special Medical Condition'),
                                  labelText: 'Special Medical Condition',
                                  border: OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.brown),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(20)),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(20)),
                                      borderSide:
                                          BorderSide(color: Colors.white10)),
                                ),
                                validator: (value) {
                                  if (value == null || value.trim().isEmpty) {
                                    return 'Please Enter Special Medical Condition';
                                  }
                                  return null;
                                },
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              TextFormField(
                                keyboardType: TextInputType.number,
                                decoration: InputDecoration(
                                  fillColor: Color(MyTheme.backgroundInterface),
                                  filled: true,
                                  labelStyle: TextStyle(
                                      color: Color(MyTheme.textRegister)),
                                  hintStyle: TextStyle(
                                      color: Color(MyTheme.textRegister)),
                                  hintText: ('Emergency Number'),
                                  labelText: 'Emergency Number',
                                  border: OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.brown),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(20)),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(20)),
                                      borderSide:
                                          BorderSide(color: Colors.white10)),
                                ),
                                validator: (value) {
                                  if (value == null || value.trim().isEmpty) {
                                    return 'Please Enter Emergency Number';
                                  }
                                  return null;
                                },
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
                                        backgroundColor:Colors.white,
                                      ),
                                      onPressed: () {
                                        Navigator.of(context).push(
                                            MaterialPageRoute(
                                                builder: (ctx) => SoonQr()));
                                        print('Continue');
                                      },
                                      child: Text(
                                        'Continue',
                                        style: TextStyle(fontSize: 22,color: Colors.brown,)
                                      )),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  )
                ]),
          ),
        ));
  }
}
