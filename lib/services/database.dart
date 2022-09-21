import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:tippingapp/models/RestModel.dart';
import 'package:tippingapp/models/restaurant.dart';

import '../models/user.dart';

class DatabaseService {

  final String? uid;
  DatabaseService({ this.uid });
  

  // collection reference
  final CollectionReference RestaurantCollection = FirebaseFirestore.instance.collection('Restaurants');

  // Future<void> updateUserData(String FavRestaurants, String FavWaiters) async {
  //   return await RestaurantCollection.doc(uid).set({
  //     'Locations': Locations,
  //     'FavWaiters': FavWaiters,
     
  //   });
  // }


 List<RestaurantModel> _RestaurantListFromSnapshot(QuerySnapshot snapshot) {
    return snapshot.docs.map((doc){ //mapping thru documents 
      //print(doc.data);
      return RestaurantModel(
         Name:      doc.get('Name') ?? '',
         Location:  doc.get('Location') ?? '',
         waiter1:   doc.get('waiter1') ?? '',
         waiter2:   doc.get('waiter2') ?? '',
         waiter3:   doc.get('waiter3') ?? '',
         waiter4:   doc.get('waiter4') ?? '',
         waiter5:   doc.get('waiter5') ?? '',
         waiter6:   doc.get('waiter6') ?? '',
       );
    }).toList(); //convert it to a list
  }

  //  // get user doc stream
  // Stream<UserData> get userData {
  //   return RestaurantCollection.doc(uid).snapshots()
  //     .map(_userDataFromSnapshot);
  // }

 
  // get brews stream
  Stream<List<RestaurantModel>> get restuarants {
    return RestaurantCollection.snapshots()
      .map(_RestaurantListFromSnapshot);
  }

}