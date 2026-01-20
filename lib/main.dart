import 'package:flutter/material.dart';
import 'package:project_1/view/chat_view/main_chat_view.dart';

import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "Flutter first Ui Project ",
        home: MainChatView(),
      );
  }
}
