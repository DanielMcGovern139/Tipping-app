
import 'package:flutter/material.dart';
import 'package:tippingapp/screens/home/NavBar/Top_up.dart';


import '../../services/balance.dart';
import 'NavBar/settings.dart';
int _balance = 100;
class NavScreen extends StatefulWidget{
   @override
  NavBar createState() => NavBar();
 }
 
class NavBar extends State<NavScreen>{
  

  // callback(int amount) {
  //   setState(() {
  //     _balance = _balance - amount;
  //   });
  //}
  @override
  Widget build(BuildContext context){
  
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
         UserAccountsDrawerHeader(
           accountName: Text('Daniel224'), //we would need get email 
           accountEmail: Text('Daniel224@gmail.com'),
           currentAccountPicture: CircleAvatar(
              child: ClipOval(
                child: Image.network(
                  'https://eitrawmaterials.eu/wp-content/uploads/2016/09/person-icon.png',
                  width: 90,
                  height: 90,
                  fit: BoxFit.cover
                      )
                     ),
                 ),
            decoration: BoxDecoration(
                color: Colors.blue,
                image: DecorationImage(
                  image: NetworkImage(
                     'https://media-cdn.tripadvisor.com/media/photo-s/1a/b8/46/6d/london-stock.jpg',
                     ),
                     fit: BoxFit.cover,
                   )
                 ),
               ),
             
             ListTile(
               leading: Icon(Icons.favorite),
               title: Text('Favourites'),
             ),
             ListTile(
               leading: Icon(Icons.settings),
               title: Text('Settings'),
               onTap: () => Navigator.push(
                             context, MaterialPageRoute(builder: (_) => SettingsPage()
             ),
               ),
             ),
             ListTile(
               leading: Icon(Icons.share),
               title: Text('Share'),
             ),
             ListTile(
               leading: Icon(Icons.money),
               title: Text('Top up account'),
               onTap: () => Navigator.push(
                             context, MaterialPageRoute(builder: (_) => TopUpScreen()
             ),
               ),
               //onTap: () => print(''),
               ),
                SizedBox(height: 350),
               
               Column(
                mainAxisAlignment: MainAxisAlignment.center,
                
                children: [
                
                  ValueListenableBuilder(
                  
                  valueListenable: Balance.balance,
                  builder: (context, subbalance, child){
                    var result;
                    return result =  Balance.balance.value >= 0 ? Row(children:  
                    [Text("       Your balance is: €",), Text((Balance.balance.value).toString())]) : Text('Please Top up');
                  }
                )
               
             ],
           )
        ]
         )
    );
       }
    }