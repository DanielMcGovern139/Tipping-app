import 'package:flutter/material.dart';
import 'package:tippingapp/screens/authenticate/register.dart';
import 'package:tippingapp/screens/authenticate/sign_in.dart';

class Authenticate extends StatefulWidget {
  @override
  _AuthenticateState createState() => _AuthenticateState();
}

class _AuthenticateState extends State<Authenticate> {
  
  bool showSignIn = true; //if this is true we want to show the sign in widget, if false the register widget 
  
  void toggleView(){
    //print(showSignIn.toString());
    setState(() => showSignIn = !showSignIn); //reverse of  what it currently is, if its true then change to false 
  }

  @override
  Widget build(BuildContext context) {
    if (showSignIn) {
      return SignIn(toggleView:  toggleView);
    } else {
      return Register(toggleView:  toggleView);
    }
  }
}
