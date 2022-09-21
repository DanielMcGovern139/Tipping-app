import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tippingapp/models/RestModel.dart';
import 'package:tippingapp/services/auth.dart';

import '../../services/database.dart';
import '../../shared/constants.dart';
import 'NavBar.dart';
import 'Restaurantlist.dart';

class Home extends StatelessWidget {

  final AuthService _auth = AuthService();

  @override
  Widget build(BuildContext context) {
    return StreamProvider<List<RestaurantModel>>.value(
      value: DatabaseService().restuarants,
      initialData: [],
      child: Scaffold(
        drawer: NavScreen(),
        //backgroundColor: Colors.brown[50],
        appBar: AppBar(
          //Icon(Icons.search),
          title: Text('Tipping Master'),
          backgroundColor: Colors.blue[400],
          elevation: 0.0,
          actions: <Widget>[
            FlatButton.icon(
              icon: Icon(Icons.person),
              label: Text('logout'),
              onPressed: () async {
                await _auth.signOut();
              },
            ),
          ],
        ),
        body: 
          RestaurantList(),
          
      ),
      );
      //);
    
  }
}