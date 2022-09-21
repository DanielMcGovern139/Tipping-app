//import 'dart:html';

import 'package:flutter/material.dart';
import 'package:tippingapp/screens/ThankYou.dart';
import 'package:tippingapp/services/balance.dart';



import '../models/RestModel.dart';
import '../shared/constants.dart';



 class PayScreen extends StatefulWidget{
   @override
  PayingScreen createState() => PayingScreen();
 }

class PayingScreen extends State<PayScreen>{
  
 
  final Balance _balance = Balance();
  @override
   Widget build(BuildContext context){
     return Scaffold(
    // backgroundColor: Colors.blue[50],
        appBar: AppBar(
          title:  Text('Thank you for tipping'),
          backgroundColor: Colors.blue[400],
      ),
      body: Center(child: Column(
        children: <Widget>[ 
       
           SizedBox(height: 30.0),
          Text('How much would you like to tip?', style: TextStyle(fontSize: 25.0)),
          Row(
            children: [
            SizedBox(height: 20),
            Container(
            margin: EdgeInsets.all(20),
            child: FloatingActionButton(
                child: Text('€5'),
                
                  onPressed: () {
               _balance.minus_five();
               if(Balance.balance.value > 0)
                   Navigator.push(
                             context, MaterialPageRoute(builder: (_) => thankyou(Balance.balance.value),
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
               _balance.minus_ten();
                if(Balance.balance.value > 0)
                   Navigator.push(
                             context, MaterialPageRoute(builder: (_) => thankyou(Balance.balance.value),
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
               _balance.minus_fifteen();
                if(Balance.balance.value > 0)
                   Navigator.push(
                             context, MaterialPageRoute(builder: (_) => thankyou(Balance.balance.value),
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
               _balance.minus_twenty();
                if(Balance.balance.value > 0)
                   Navigator.push(
                             context, MaterialPageRoute(builder: (_) => thankyou(Balance.balance.value),
             ),
          );   
        }
      ),
    )
         
            ]
          ), 
          //  Container(  
          //     margin: EdgeInsets.all(25),  
          //     child: RaisedButton(  
          //       child: Text('Different Amount', style: TextStyle(fontSize: 15.0),),  
          //      // backgroundColor: Colors.blue,  
          //        //textColor: Colors.white,  
          //       onPressed: () {//{Navigator.push(
          //          //context, 
          //        //  MaterialPageRoute(builder: (context) => FiveEuro())
          //        //);}, 
          //       } 
          //     ),  
          //   ), 
             ValueListenableBuilder(
                  valueListenable: Balance.balance,
                  builder: (context, subbalance, child){
                       var number;
                     // return number =  Balance.balance.value >= 0 ? Text((Balance.balance.value).toString()) : Text('Please Top up');
                        return number =  Balance.balance.value >= 0 ? 
                         Row(mainAxisAlignment: MainAxisAlignment.center,children:  [Text(" Your balance is €"), Text((Balance.balance.value).toString())]) : Text('Please top up your account!');
                      
                  },
                ),
                SizedBox(height:20),
                Image.network('https://img.freepik.com/free-vector/professional-waiter-waitress-flat-style-collection_70155-187.jpg', height: 400, width: 400),
             ],
          )
       )
     );
   }

}