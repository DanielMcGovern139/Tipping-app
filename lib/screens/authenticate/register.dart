//import 'dart:html';

import 'package:tippingapp/services/auth.dart';
import 'package:flutter/material.dart';
import 'package:tippingapp/shared/constants.dart';


class Register extends StatefulWidget {
  @override

   final Function? toggleView;
   Register({this.toggleView});
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {

  final AuthService _auth = AuthService();
  final _formKey = GlobalKey<FormState>();
  
  // text field state
  String email = '';
  String password = '';
  String error = '';

    @override
  Widget build(BuildContext context) {
    return Scaffold(
     // backgroundColor: Colors.w[100],
      appBar: AppBar(
        //backgroundColor: Colors.blue[400],
        elevation: 0.0,
        title: Text('   Tipping Master'),
        actions: <Widget>[
          FlatButton.icon(
            icon: Icon(Icons.person),
            label: Text('Sign In'),
            onPressed: () => widget.toggleView!(),
          ),
        ],
      ),
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 50.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: <Widget>[
             // Text('Tipping Master', style: TextStyle(fontSize: 20.0)),
              SizedBox(height: 10),
              Image.network('https://www.kindpng.com/picc/m/26-266815_transparent-tip-jar-clip-art-hd-png-download.png', height: 120, width: 120),
              SizedBox(height: 20.0),
              TextFormField(
                decoration: textInputDecoration.copyWith(hintText: 'Email'),
                validator: (val) => val!.isEmpty ? 'Enter an email' : null,
                onChanged: (val) {
                  setState(() => email = val);
                },
              ),
              SizedBox(height: 20.0),
              TextFormField(
                decoration: textInputDecoration.copyWith(hintText: 'Password'),
                obscureText: true,
                validator: (val) => val!.length < 6 ? 'Enter a password 6+ chars long' : null,
                onChanged: (val) {
                  setState(() => password = val);
                },
              ),
              SizedBox(height: 20.0),
              RaisedButton(
                color: Colors.pink[400],
                child: Text(
                  'Register',
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: () async {
                  if(_formKey.currentState!.validate()){
                    dynamic result = await _auth.registerWithEmailAndPassword(email, password);
                    if(result == null) {
                      setState(() {
                        error = 'Please supply a valid email';
                      });
                    }
                  }
                }
              ),
              SizedBox(height: 12.0),
              Text(
                error,
                style: TextStyle(color: Colors.red, fontSize: 14.0),
              ),
              //Image.asset('assets/images/restaurant.jpg'),
            ],
          ),
        ),
      ),
    );
  }
}