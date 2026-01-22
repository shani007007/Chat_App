import 'package:flutter/material.dart';

class ChatroomSectionProvider extends ChangeNotifier {
  TextEditingController MessageController = TextEditingController();
  List addMessage = [];
  List<bool> ishover = [];

   addNewMessage() {
    addMessage.add(MessageController.text.trim());
    ishover.add(false);
    MessageController.clear();
    notifyListeners();
  }

   updateHoverStatus(int index, bool status) {
    ishover[index] = status;
    notifyListeners();
  }

  bool hasText() {
    return MessageController.text.trim().isNotEmpty;
  }
}
