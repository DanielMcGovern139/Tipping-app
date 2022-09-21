import 'package:firebase_auth/firebase_auth.dart';
import 'package:provider/provider.dart';
import 'package:tippingapp/screens/authenticate/authenticate.dart';
import 'package:flutter/material.dart';
import '../models/user.dart';
import 'home/home.dart';


class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    final user = Provider.of<TheUser?>(context);
    //every time a user logs in then we're getting a user object back from that stream and its being stored inside 
  //variable user 
  //if the value the user is logged out so should be directed to the sign in page
    if(user == null){ //then they are not logged in 
      return Authenticate();
      }
      else {
        return Home();
      }
    
  }
}