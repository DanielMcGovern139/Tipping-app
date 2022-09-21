import 'package:flutter/material.dart';
import 'package:tippingapp/services/balance.dart';

class TopUpScreen2 extends StatefulWidget{
   @override
 TopUpScreenState2 createState() => TopUpScreenState2();
 }

class TopUpScreenState2 extends State<TopUpScreen2>{
   final Balance _balance = Balance();
  @override
   Widget build(BuildContext context){
     return Scaffold(
    // backgroundColor: Colors.blue[50],
        appBar: AppBar(
          title:  Text('Top Up Complete'),
        //  backgroundColor: Colors.blue[400],
      ),
      body: Center(child: Column(
        children: <Widget>[ 
            SizedBox(height: 20),
            Text('Thank you for Topping up your balance is now...'),
            SizedBox(height: 20),
             ValueListenableBuilder(
                  valueListenable: Balance.balance,
                  builder: (context, subbalance, child){
                     // var result;
                    return  Row(mainAxisAlignment: MainAxisAlignment.center, children: [Text("€"), Text((Balance.balance.value).toString())]);
                  }
             )
        ]
      )
      )
      );
   }
     
}