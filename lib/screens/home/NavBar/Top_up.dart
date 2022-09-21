import 'package:flutter/material.dart';
import 'package:tippingapp/screens/home/NavBar/TopUp2.dart';
import 'package:tippingapp/services/balance.dart';

class TopUpScreen extends StatefulWidget{
   @override
 TopUpScreenState createState() => TopUpScreenState();
 }

class TopUpScreenState extends State<TopUpScreen>{
  
 
  final Balance _balance = Balance();
  @override
   Widget build(BuildContext context){
     return Scaffold(
    // backgroundColor: Colors.blue[50],
        appBar: AppBar(
          title:  Text('Your account balance'),
        //  backgroundColor: Colors.blue[400],
      ),
      body: Center(child: Column(
        children: <Widget>[ 
           SizedBox(height: 30.0),
          Text('  How much would you like to Top up by?', style: TextStyle(fontSize: 20.0)),
          Row(
            children: [
            SizedBox(height: 20),
            Container(
            margin: EdgeInsets.all(20),
            child: FloatingActionButton(
                child: Text('€5'),
                  onPressed: () {
               _balance.add_five();
               Navigator.push(
                             context, MaterialPageRoute(builder: (_) => TopUpScreen2(),
             ),
          );
              
        }
      ),
    ),
           Container(
            margin: EdgeInsets.all(20),
            child: FloatingActionButton(
                child: Text('€10'),
                  onPressed: () {
               _balance.add_ten();
                   Navigator.push(
                             context, MaterialPageRoute(builder: (_) => TopUpScreen2(),
             ),
          );
               
        }
      ),
    ),
           Container(
            margin: EdgeInsets.all(20),
            child: FloatingActionButton(
                child: Text('€15'),
                  onPressed: () {
               _balance.add_fifteen();
               Navigator.push(
                             context, MaterialPageRoute(builder: (_) => TopUpScreen2(),
             ),
          );
        }
      ),
    ),
           Container(
            margin: EdgeInsets.all(20),
            child: FloatingActionButton(
                child: Text('€20'),
                  onPressed: () {
               _balance.add_twenty();
               Navigator.push(
                             context, MaterialPageRoute(builder: (_) => TopUpScreen2(),
             ),
          );
        }
      ),
    )
         
  ]
), 
            SizedBox(height: 20),
           // Text('Thank you for Topping up your balance is now...'),
           // SizedBox(height: 20),
             ValueListenableBuilder(
                  valueListenable: Balance.balance,
                  builder: (context, subbalance, child){
                      var result;
                    return result =  Balance.balance.value >= 0 ? Row(mainAxisAlignment: MainAxisAlignment.center, children: [Text("Your balance is €"), Text((Balance.balance.value).toString())]) : Text('Please Top up');
                      
                  },
                ),
                SizedBox(height: 20),
                Image.network('https://st4.depositphotos.com/1008801/25101/v/600/depositphotos_251017258-stock-illustration-money-jar-saving-dollar-coin.jpg', height: 300, width: 300)
             ],
          )
       )
     );
   }

}