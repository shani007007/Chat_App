import 'package:flutter/material.dart';

class SidebarSectionProvider extends ChangeNotifier{
int selcetdSidebarItem = 0;

  upDateSelcetdSidebarItem(index){
    selcetdSidebarItem=index;
    notifyListeners();
  }
}