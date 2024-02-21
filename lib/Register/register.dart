import 'package:flutter/material.dart';
import 'package:spormeg_g/Mytheme/myTheme.dart';
import 'package:spormeg_g/login/login.dart';

class CreateAccount extends StatefulWidget {
  static const String routeName = 'create';

  @override
  State<CreateAccount> createState() => _CreateAccountState();
}

class _CreateAccountState extends State<CreateAccount> {
  String? _name, _lastName, _email, _phone, _password, _confirmPassword;
  TextEditingController password = TextEditingController();
  TextEditingController confirmpassword = TextEditingController();
  TextEditingController firstNameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();
  TextEditingController emairOrMopilePhone = TextEditingController();
  var formKey = GlobalKey<FormState>();
  var formKey2 = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(MyTheme.backgroundGeneral),
      body: Padding(
        padding: EdgeInsets.all(14),
        child: SingleChildScrollView(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            SizedBox(
              height: 20,
            ),
            Text('Create',
                style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.w400,
                    color: Color(
                      MyTheme.textColor,
                    ))),
            SizedBox(
              height: 10,
            ),
            Text('New Account',
                style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.w400,
                    color: Color(
                      MyTheme.textColor,
                    ))),
            SizedBox(
              height: 15,
            ),
            Row(
              children: [
                Text('Already A Member? ',
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                        color: Color(
                          MyTheme.textColor,
                        ))),
                SizedBox(width: 5),
                InkWell(
                  onTap: () {
                    Navigator.pushNamedAndRemoveUntil(
                        context, LogIN.routeName, (route) => false);
                  },
                  child: Text('login',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: Color(
                            MyTheme.createAccount_login,
                          ))),
                ),
              ],
            ),
            SizedBox(height: 25),
            Form(
              key: formKey,
              child: Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Column(children: [
                      TextFormField(
                        controller: firstNameController,
                        keyboardType: TextInputType.name,
                        decoration: InputDecoration(
                          fillColor: Color(MyTheme.backgroundInterface),
                          filled: true,
                          labelStyle:
                              TextStyle(color: Color(MyTheme.textRegister)),
                          hintStyle:
                              TextStyle(color: Color(MyTheme.textRegister)),
                          hintText: ('First Name'),
                          labelText: 'First Name',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            borderSide: BorderSide(color: Colors.brown),
                          ),
                          focusedBorder: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20)),
                              borderSide: BorderSide(color: Colors.white10)),
                        ),
                        validator: (value) {
                          if (value == null || value.trim().isEmpty) {
                            return 'Please Enter Name';
                          }
                          return null;
                        },
                        onSaved: (name) {
                          _name = name;
                        },
                      ),
                    ]),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Expanded(
                    flex: 1,
                    child: Column(children: [
                      TextFormField(
                        controller: lastNameController,
                        keyboardType: TextInputType.name,
                        maxLines: 1,
                        decoration: InputDecoration(
                          fillColor: Color(MyTheme.backgroundInterface),
                          filled: true,
                          labelStyle:
                              TextStyle(color: Color(MyTheme.textRegister)),
                          iconColor: Colors.cyan,
                          hintStyle:
                              TextStyle(color: Color(MyTheme.textRegister)),
                          hintText: ('Last Name'),
                          labelText: 'Last Name',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            borderSide: BorderSide(color: Colors.brown),
                          ),
                          focusedBorder: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20)),
                              borderSide: BorderSide(color: Colors.white10)),
                        ),
                        validator: (value) {
                          if (value == null || value.trim().isEmpty) {
                            return 'Please Enter Last Name';
                          }
                          return null;
                        },
                        onSaved: (lastName) {
                          _lastName = lastName;
                        },
                      ),
                    ]),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),





            Form(
              key: formKey2,
              child: Column(
                children: [
                  TextFormField(
                    controller: emairOrMopilePhone,
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      fillColor: Color(MyTheme.backgroundInterface),
                      filled: true,
                      labelStyle: TextStyle(color: Color(MyTheme.textRegister)),
                      hintStyle: TextStyle(color: Color(MyTheme.textRegister)),
                      hintText: ('E-mail or mobile phone'),
                      labelText: 'E-mail or mobile phone',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        borderSide: BorderSide(color: Colors.brown),
                      ),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          borderSide: BorderSide(color: Colors.white10)),
                    ),
                    validator: (value) {
                      if (value == null || value.trim().isEmpty) {
                        return 'Please Enter E-mail or Phone';
                      }

                      var regex = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');
                      if (!regex.hasMatch(value)) {
                        return "Enter a valid e-mail";
                      }
                    },
                    // saved mail
                    onSaved: (email) {
                      _email = email;
                    },
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  TextFormField(
                    obscuringCharacter: '*',
                    obscureText: true,
                    keyboardType: TextInputType.visiblePassword,
                    decoration: InputDecoration(
                      fillColor: Color(MyTheme.backgroundInterface),
                      filled: true,
                      labelStyle: TextStyle(color: Color(MyTheme.textRegister)),
                      hintStyle: TextStyle(color: Color(MyTheme.textRegister)),
                      hintText: ('Password'),
                      labelText: 'Password',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        borderSide: BorderSide(color: Colors.brown),
                      ),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          borderSide: BorderSide(color: Colors.white10)),
                    ),
                    validator: (value) {
                      if (value == null || value.trim().isEmpty) {
                        return 'Please Enter Password';
                      }
                      return null;
                    },
                    onSaved: (password) {
                      _password = password;
                    },
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  TextFormField(
                    obscuringCharacter: '*',
                    obscureText: true,
                    keyboardType: TextInputType.visiblePassword,
                    decoration: InputDecoration(
                      fillColor: Color(MyTheme.backgroundInterface),
                      filled: true,
                      labelStyle: TextStyle(color: Color(MyTheme.textRegister)),
                      hintStyle: TextStyle(color: Color(MyTheme.textRegister)),
                      hintText: ('Confirm Password'),
                      labelText: 'Confirm Password',
                      border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.brown),
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                      ),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          borderSide: BorderSide(color: Colors.white10)),
                    ),
                    validator: (value) {
                      if (value == null || value.trim().isEmpty) {
                        return 'Please Confirm Password';
                      }
                      return null;
                    },
                    onSaved: (confirmPassword) {
                      _confirmPassword = confirmPassword;
                    },
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
                SizedBox(
                  height: 48,
                  width: 150,
                ),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(40)),
                        side: BorderSide(color: Color(MyTheme.borderTextField)),
                        backgroundColor: Color(MyTheme.bGround_Button)),
                    onPressed: () {
                      // if (formKey.currentState!.validate()==true) {
                      //   BlocProvider.of<AuthCubit>(context).logIn(
                      //       phone: email.text,
                      //       password: password.text);
                      // } else {
                      //   print('Un Successfull');
                      // }

                      Navigator.pushNamed(context, LogIN.routeName);

                      if (formKey.currentState!.validate()) {
                        return;
                      } else {
                        if (formKey2.currentState!.validate()) {}
                      }
                    },
                    child: Text(
                      'Continue',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Color(
                            MyTheme.te_Co_Continue,
                          )),
                    )),
              ],
            )
          ]),
        ),
      ),
    );
  }
}

extension Sizer on BuildContext {
  double get h => MediaQuery.of(this).size.height;
  double get w => MediaQuery.of(this).size.width;
}
