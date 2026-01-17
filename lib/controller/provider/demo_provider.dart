

import 'package:flutter/material.dart';

class DemoProvider extends ChangeNotifier {

  
  int count =0;

  addCount(){
    count = count + 1;
   notifyListeners();
  }

  
}