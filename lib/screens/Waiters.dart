import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tippingapp/models/RestModel.dart';
import 'package:tippingapp/screens/PayingScreen.dart';
import 'package:tippingapp/services/auth.dart';

//import 'PayingScreen.dart';
import 'Waiters.dart';

class WaiterScreen extends StatelessWidget {
  
  final RestaurantModel restaurantModel;
  // final AuthService _auth = AuthService();
  WaiterScreen(this.restaurantModel);
  @override
  Widget build(BuildContext context) {
     // return Container(
      return Scaffold(
        //drawer: NavBar(),
        backgroundColor: Colors.blue[50],
        appBar: AppBar(
          title:  Text('Click to tip...'),
           
      
         // backgroundColor: Colors.blue[400],
      ),
      body: ListView(
          children: [
             Card(
               elevation: 4,
               child: ListTile(
               leading: Icon(Icons.person),
               title: Text('${restaurantModel.waiter1}'),
                onTap: () => Navigator.push(
                             context, MaterialPageRoute(builder: (_) => PayScreen(),
               ),
              ),
             ),
            ),
              Card(
               elevation: 4,
               child: ListTile(
               leading: Icon(Icons.person),
               title: Text('${restaurantModel.waiter2}'),
               
              onTap: () => Navigator.push(
                             context, MaterialPageRoute(builder: (_) => PayScreen(),
               ),
              ),
             ),
            ),
              Card(
               elevation: 4,
               child: ListTile(
               leading: Icon(Icons.person),
               title: Text('${restaurantModel.waiter3}'),
              onTap: () => Navigator.push(
                             context, MaterialPageRoute(builder: (_) => PayScreen(),
               ),
              ),
             ),
            ),
            Card(
               elevation: 4,
               child: ListTile(
               leading: Icon(Icons.person),
               title: Text('${restaurantModel.waiter4}'),
                onTap: () => Navigator.push(
                             context, MaterialPageRoute(builder: (_) => PayScreen(),
               ),
              ),
             ),
            ),
            Card(
               elevation: 4,
               child: ListTile(
               leading: Icon(Icons.person),
               title: Text('${restaurantModel.waiter5}'),
                onTap: () => Navigator.push(
                             context, MaterialPageRoute(builder: (_) => PayScreen(),
               ),
              ),
             ),
            ),
            Card(
               elevation: 4,
               child: ListTile(
               leading: Icon(Icons.person),
               title: Text('${restaurantModel.waiter6}'),
                onTap: () => Navigator.push(
                             context, MaterialPageRoute(builder: (_) => PayScreen(),
               ),
              ),
             ),
            ),
          ],
        )
    );
  }
}