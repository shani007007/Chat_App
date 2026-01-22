import 'package:flutter/material.dart';
import 'package:project_1/controller/provider/chatroom_section_provider.dart';
import 'package:project_1/controller/provider/conservation_list_section_provider.dart';
import 'package:project_1/controller/provider/sidebar_section_provider.dart';
import 'package:project_1/view/chat_view/main_chat_view.dart';

import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (context)=>ChatroomSectionProvider()),
          ChangeNotifierProvider(create: (context)=>ConservationListSectionProvider()),
          ChangeNotifierProvider(create: (context)=>SidebarSectionProvider()),
        ],
      child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: "Flutter first Ui Project ",
          home: MainChatView(),
        ),
    );
  }
}
