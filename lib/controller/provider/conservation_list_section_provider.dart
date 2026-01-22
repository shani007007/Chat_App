import 'package:flutter/material.dart';

class ConservationListSectionProvider extends ChangeNotifier {
  int selectedStatus = 0;
  int selectedUser = 0;

  upDateSelectedStatus(index){
    selectedStatus=index;
    notifyListeners();
  }
  upDateSelectedUser(index){
    selectedUser=index;
    notifyListeners();
  }
}
