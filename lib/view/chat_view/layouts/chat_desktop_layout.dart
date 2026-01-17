import 'package:flutter/material.dart';
import 'package:project_1/utils/app_color.dart';
import 'package:project_1/view/chat_view/sections/chat_room_section/chatroom_section.dart';
import 'package:project_1/view/chat_view/sections/conversation_list_section/conservation_list_section.dart';
import 'package:project_1/view/chat_view/sections/sidebar_section/sidebar_section.dart';

class ChatDesktopLayout extends StatefulWidget {
  @override
  State<ChatDesktopLayout> createState() => _ChatDesktopLayoutState();
}

class _ChatDesktopLayoutState extends State<ChatDesktopLayout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: AppColor.lightBlue,
        child: Center(
          child: Row(
            children: [
              //Child 1  -- Side _bar
              SidebarSection(),
              //Child 2   -- Chats
              ConservationListSection(),
              //Child 3 ---Chat Room
              ChatroomSection(),
            ],
          ),
        ),
      ),
    );
  }
}
