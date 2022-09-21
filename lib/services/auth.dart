import 'package:firebase_auth/firebase_auth.dart';
import 'package:tippingapp/models/user.dart';

import 'database.dart';


class AuthService {

  final FirebaseAuth _auth = FirebaseAuth.instance;

  //final FirebaseAuth _auth = FirebaseAuth.instance;

  // create user obj based on firebase user
  TheUser? _userFromFirebaseUser(User? user) {
    return user != null ? TheUser(uid: user.uid) : null; //if we get a user return the uid  if not return null
  }

  // auth change user stream
  Stream<TheUser?> get user {
    return _auth.authStateChanges()
      //.map((User? user) => _userFromFirebaseUser(user));
        .map(_userFromFirebaseUser); 
        //passes the user we get down the stream into _userFromFirebaseUser
      //setting up a stream so that everytime a user signs in or signs out we will get a response down the stream
      //saying whether the user is sgned in or null if the user is signed out 
  }

  // sign in anonymously
  Future signInAnon() async {
    try {
      UserCredential result = await _auth.signInAnonymously();
      User? user = result.user;
      return user;
    } catch (e) {
      print(e.toString());
      return null;
    }
  }

  // sign in with email and password
  // sign in with email and password
  Future signInWithEmailAndPassword(String email, String password) async {
    try {
      UserCredential result = await _auth.signInWithEmailAndPassword(email: email, password: password);
      User? user = result.user;
      return user;
    } catch (error) {
      print(error.toString());
      return null;
    } 
  }

  // register with email and password
  Future registerWithEmailAndPassword(String email, String password) async {
    try {
      UserCredential result = await _auth.createUserWithEmailAndPassword(email: email, password: password);
                                        //create a user with email and password
      User? user = result.user;
     // await DatabaseService(uid: user!.uid).updateUserData('0','new crew member');
      return _userFromFirebaseUser(user); //return a user like our model/user file
    } catch (error) {
      print(error.toString());
      return null;
    } 
  }


  // sign out
    // sign out
  Future signOut() async {
    try {
      return await _auth.signOut();
    } catch (error) {
      print(error.toString());
      return null;
    }
  }

}

