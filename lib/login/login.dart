import 'package:flutter/material.dart';
import 'package:spormeg_g/Mytheme/myTheme.dart';
import 'package:spormeg_g/Register/register.dart';
import 'package:spormeg_g/ViewModel/location_page.dart';

class LogIN extends StatefulWidget {
  static const String routeName = 'login';

  @override
  State<LogIN> createState() => _LogINState();
}

class _LogINState extends State<LogIN> {
  bool isCheked = false;
  bool passwordOpsecure = true;
  String? _email, _password;
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(MyTheme.backgroundGeneral),
        body: Center(
            child: SingleChildScrollView(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
              SizedBox(
                height: 60,
              ),
              Text(
                'Welcome Back !!',
                style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.w400,
                    color: Color(MyTheme.textRegister)),
              ),
              SizedBox(
                height: 30,
              ),
              Padding(
                  padding: EdgeInsets.all(30),
                  child: Form(
                    key: formKey,
                    child: Column(
                      children: [
                        SizedBox(
                          height: 15,
                        ),
                        TextFormField(
                          controller: email,
                          enableSuggestions: true,
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                            prefixIcon: Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Container(
                                margin: EdgeInsets.all(2.0),
                                height: 5,
                                width: 5,
                                decoration: BoxDecoration(
                                    color: Color(MyTheme.back_Post),
                                    borderRadius: BorderRadius.circular(30)),
                                child: Icon(
                                  Icons.local_post_office_rounded,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                            fillColor: Color(MyTheme.backgroundInterface),
                            filled: true,
                            labelStyle:
                                TextStyle(color: Color(MyTheme.textRegister)),
                            hintStyle:
                                TextStyle(color: Color(MyTheme.textRegister)),
                            hintText: ('E-mail or mobile phone'),
                            labelText: '  E-mail or mobile phone',
                            border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20)),
                              borderSide: BorderSide(color: Colors.brown),
                            ),
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.white10),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(30))),
                          ),
                          validator: (value) {
                            if (email.text.trim().isEmpty == null) {
                              return 'Please Enter E-mail or Phone';
                            }

                            var regex = RegExp(r'^[^@]+@[^\.]+\..+');

                            // r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$]');
                            if (!regex.hasMatch(email.text)) {
                              return "Invalid e-mail";
                            }
                            return null;
                          },
                        ),
                        SizedBox(
                          height: 40,
                        ),
                        TextFormField(
                            controller: password,
                            enableSuggestions: true,
                            obscuringCharacter: '*',
                            obscureText: passwordOpsecure,
                            keyboardType: TextInputType.visiblePassword,
                            decoration: InputDecoration(
                              prefixIcon: Padding(
                                padding: EdgeInsets.all(1.0),
                                child: Container(
                                  margin: EdgeInsets.all(2.0),
                                  height: 5,
                                  width: 5,
                                  decoration: BoxDecoration(
                                      color: Color(MyTheme.back_Post),
                                      borderRadius: BorderRadius.circular(30)),
                                  child: IconButton(
                                    onPressed: () {
                                      setState(() {
                                        passwordOpsecure = !passwordOpsecure;
                                      });
                                    },
                                    icon: Icon(
                                      passwordOpsecure
                                          ? Icons.lock_outline_rounded
                                          : Icons.lock_open_rounded,
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                              ),
                              fillColor: Color(MyTheme.backgroundInterface),
                              filled: true,
                              labelStyle:
                                  TextStyle(color: Color(MyTheme.textRegister)),
                              hintStyle:
                                  TextStyle(color: Color(MyTheme.textRegister)),
                              hintText: ('Password'),
                              labelText: 'Password',
                              border: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20)),
                                borderSide: BorderSide(color: Colors.brown),
                              ),
                              focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.white10),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(30))),
                            ),
                            validator: (value) {
                              if (password.text.trim().isEmpty == null) {
                                return 'Please Enter Password';
                              }
                            }),
                        SizedBox(
                          height: 40,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(
                              height: 50,
                              width: 150,
                            ),
                            ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(40)),
                                  side: BorderSide(
                                      color: Color(MyTheme.borderTextField)),
                                  backgroundColor:
                                      Color(MyTheme.bGround_Button),
                                ),
                                onPressed: () {
                                  Navigator.pushNamed(context, LocationPage.routeName);
                                },
                                child: Center(
                                  child: Text(
                                    'LogIn',
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                      color: Color(
                                        MyTheme.textLogIn,
                                      ),
                                    ),
                                  ),
                                )),
                          ],
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        SingleChildScrollView(
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Checkbox(
                                      checkColor: Color(MyTheme.Icon_black),
                                      value: isCheked,
                                      activeColor: Color(MyTheme.backTextField),
                                      onChanged: (newBool) {
                                        setState(() {
                                          isCheked = newBool!;
                                        });
                                      }),
                                  Text(
                                    'Remember Me',
                                    style: TextStyle(
                                        color: Color(MyTheme.textColor),
                                        fontSize: 14),
                                  ),
                                  SizedBox(
                                    width: 35,
                                  ),
                                  InkWell(
                                    onTap: () {
                                      // Navigator.pushNamedAndRemoveUntil(
                                      //     context,
                                      //     ForgetPwByMail.routeName,
                                      //         (route) => false);
                                    },
                                    child: Text(
                                      'Forget Password?',
                                      style: TextStyle(
                                          color: Color(MyTheme.textColor),
                                          decoration: TextDecoration.underline,
                                          fontSize: 14,
                                          fontWeight: FontWeight.w400),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Dont have an account?',
                              style: TextStyle(color: Color(MyTheme.textColor)),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            InkWell(
                                onTap: () {
                                  Navigator.pushNamed(
                                      context, CreateAccount.routeName);
                                },
                                child: Text(
                                  'Sign Up',
                                  style: TextStyle(
                                      color: Colors.red,
                                      fontSize: 13,
                                      fontWeight: FontWeight.normal),
                                )),
                          ],
                        ),
                      ],
                    ),
                  ))
            ]))));
  }
}
