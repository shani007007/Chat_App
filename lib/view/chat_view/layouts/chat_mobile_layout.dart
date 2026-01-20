import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:project_1/components/profile_image.dart';
import 'package:project_1/utils/app_color.dart';
import 'package:project_1/utils/image_path.dart';
import 'package:project_1/utils/space.dart';
import 'package:project_1/view/chat_view/sections/chat_room_section/chatroom_section.dart';
import 'package:project_1/view/chat_view/sections/chat_room_section/widgets/chatroom_custom_icons.dart';
import 'package:project_1/view/chat_view/sections/chat_room_section/widgets/chatroom_header_icons.dart';
import 'package:project_1/view/chat_view/sections/chat_room_section/widgets/custom_chatbubble_icons.dart';
import 'package:project_1/view/chat_view/sections/chat_room_section/widgets/message_bubble.dart';
import 'package:project_1/view/chat_view/sections/sidebar_section/sidebar_section.dart';
import 'package:project_1/view/chat_view/sections/sidebar_section/widgets/search_add.dart';
import 'package:project_1/view/chat_view/sections/sidebar_section/widgets/sidebar_item.dart';

class ChatMobileLayout extends StatefulWidget {
  @override
  State<ChatMobileLayout> createState() => _ChatMobileLayoutState();
}

class _ChatMobileLayoutState extends State<ChatMobileLayout> {
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
              //Child 3 ---Chat Room
              ChatroomSection(),
            ],
          ),
        ),
      ),
    );
  }
}
