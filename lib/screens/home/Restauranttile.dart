//import 'package:brew_crew/models/Res.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tippingapp/models/RestModel.dart';

import '../Waiters.dart';

//import 'Waiters.dart';

class BrewTile extends StatelessWidget {

   final RestaurantModel restaurantModel;
   BrewTile({ required this.restaurantModel });

  @override
  Widget build(BuildContext context) {
   // final RestModel restmodel;
    final restuarants = Provider.of<List<RestaurantModel>>(context) ?? [];

    // itemCount: brews.length;
     //itemBuilder: (context, index) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: Card(
        margin: EdgeInsets.fromLTRB(20.0, 6.0, 20.0, 0.0),
        child: ListTile(
           leading: Icon(Icons.house),
          title: Text('${restaurantModel.Name}'),
          subtitle: Text('${restaurantModel.Location} '),
          trailing: Icon(Icons.restaurant),
           onTap: () => Navigator.push(
                             context, MaterialPageRoute(builder: (_) => WaiterScreen(restaurantModel),
          ),
         )
       )
      )
    );
  }
}