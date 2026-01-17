import 'package:flutter/material.dart';
import 'package:project_1/controller/provider/demo2_provider.dart';
import 'package:project_1/controller/provider/demo_provider.dart';
import 'package:project_1/view/chat_view/main_chat_view.dart';
import 'package:project_1/view/demo/demo_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create:  (_) => DemoProvider()),
        ChangeNotifierProvider(create:  (_) => Demo2Provider()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "Flutter first Ui Project ",
        // home: MainChatView(),
        home: MainChatView(),
      ),
    );
  }
}
