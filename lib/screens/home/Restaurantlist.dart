//import 'package:brew_crew/models/brew.dart';
//import 'package:brew_crew/screens/home/brew_tile.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tippingapp/models/RestModel.dart';

//import 'Waiters.dart';
import 'Restauranttile.dart';

class RestaurantList extends StatefulWidget {
  @override
  _RestaurantListState createState() => _RestaurantListState();
}

class _RestaurantListState extends State<RestaurantList> {
 
   // final RestModel restmodel;
  //_BrewListState({ required this.restmodel });

  @override
  Widget build(BuildContext context) {
    
    //final RestModel restmodel;
    final restuarants = Provider.of<List<RestaurantModel>>(context) ?? [];
    return ListView.builder(
      itemCount: restuarants.length,
      itemBuilder: (context, index) {
      return BrewTile(restaurantModel: restuarants[index]);
      }
    );
  }
}