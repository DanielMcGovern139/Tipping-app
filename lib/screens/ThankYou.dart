


import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';
import 'package:tippingapp/shared/constants.dart';


class thankyou extends StatelessWidget{
  
     int ? value;
     thankyou(int balance, { this.value});


  @override
  Widget build(BuildContext context) {
   
     // return Container(
      return Scaffold(
        //drawer: NavBar(),
       // backgroundColor: Colors.blue[50],
        appBar: AppBar(
          title:  Text('Tipping Master'),
        ),
        body: Center(child: Column(
          //mainAxisAlignment: MainAxisAlignment.center,
           children: <Widget>[
            SizedBox(height: 30),
            Text("Your tip has been processed...", style: TextStyle(fontSize: 15.0)),
            SizedBox(height: 10),
            Text("and will go straight into your server's pocket", style: TextStyle(fontSize: 15.0)),
            SizedBox(height: 10),
            Image.network('https://global-uploads.webflow.com/61832088cc97eb577fc81c35/61832088cc97eb139cc8201d_61516ba9589fb6822bd4a7c9_thankyou__FillWzcwMCw0NDBd.jpeg', height: 200, width: 200),
            //SizedBox(height:150),
            Text('What did you like most about our service?', style: TextStyle(fontSize: 20.0)),
            SizedBox(height: 10,),
            TextFormField(
                decoration: textInputDecoration.copyWith(hintText: 'Type here'),),
               RaisedButton(
                color: Colors.blue[400],
                child: Text(
                  'Submit',
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: () {

                },
               ),
            
           ]
        )
        
      )
      );
         
}

}