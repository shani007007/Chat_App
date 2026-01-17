

import 'package:flutter/material.dart';

class Demo2Provider extends ChangeNotifier {

  
  int counter =0;

  addCount(){
    counter = counter + 2;
   notifyListeners();
  }


}