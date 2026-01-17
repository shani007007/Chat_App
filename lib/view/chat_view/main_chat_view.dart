
import 'package:flutter/material.dart';
import 'package:project_1/view/chat_view/layouts/chat_desktop_layout.dart';
import 'package:project_1/view/chat_view/layouts/chat_mobile_layout.dart';
class MainChatView extends StatefulWidget {
  const MainChatView({super.key});

  @override
  State<MainChatView> createState() => _MainChatViewState();
}

class _MainChatViewState extends State<MainChatView> {
  @override
  Widget build(BuildContext context) {
    Size size=MediaQuery.of(context).size;

    print(size.width);
    return Scaffold(
      body: size.width>=735? ChatDesktopLayout(): ChatMobileLayout()
    );
  }
}