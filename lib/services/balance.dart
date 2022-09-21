import 'package:flutter/material.dart';

class Balance {
  static ValueNotifier<int> balance = ValueNotifier(100);

  void minus_five(){
    balance.value -= 5;
  }
  void minus_ten(){
    balance.value -= 10;
  }
  void minus_fifteen(){
    balance.value -= 15;
  }
  void minus_twenty(){
    balance.value -= 20;
  }
  void add_five(){
    balance.value += 5;
  }
  void add_ten(){
    balance.value += 10;
  }
  void add_fifteen(){
    balance.value += 15;
  }
  void add_twenty(){
    balance.value += 20;
  }
}