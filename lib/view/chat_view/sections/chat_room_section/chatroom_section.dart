import 'package:flutter/material.dart';
import 'package:project_1/components/profile_image.dart';
import 'package:project_1/utils/app_color.dart';
import 'package:project_1/utils/image_path.dart';
import 'package:project_1/utils/space.dart';
import 'package:project_1/view/chat_view/sections/chat_room_section/widgets/chatroom_custom_icons.dart';
import 'package:project_1/view/chat_view/sections/chat_room_section/widgets/chatroom_header_icons.dart';
import 'package:project_1/view/chat_view/sections/chat_room_section/widgets/custom_chatbubble_icons.dart';
import 'package:project_1/view/chat_view/sections/chat_room_section/widgets/message_bubble.dart';
class ChatroomSection extends StatefulWidget {
  const ChatroomSection({super.key});

  @override
  State<ChatroomSection> createState() => _ChatroomSectionState();
}

class _ChatroomSectionState extends State<ChatroomSection> {
  List<bool> ishover = [];
  TextEditingController MessageController = TextEditingController();
  List addMessage = [];
  
  @override
  Widget build(BuildContext context) {
    return  Expanded(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(0, 28, 6, 7),
                  child: Container(
                    // height: size.height*0.99,
                    // width: size.width*0.734,
                    decoration: BoxDecoration(
                      color: Color(0xff151515),
                      borderRadius: BorderRadius.circular(6),
                    ),

                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        //Chat Area Section _1_Header_Section
                        ListTile(
                          leading: ProfileImage(
                            image: ImagePath.UserProfile,
                            size: 20,
                          ),
                          title: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                "CircleUp",
                                style: TextStyle(color: AppColor.white),
                              ),
                              Space.w10,
                              ChatroomCustomIcons(
                                icon: Icons.people_outline,
                                size: 12,
                              ),
                              Space.w3,
                              Text(
                                "6",
                                style: TextStyle(
                                  color: AppColor.grey.withOpacity(0.6),
                                  fontSize: 10,
                                ),
                              ),
                            ],
                          ),
                          subtitle: Padding(
                            padding: const EdgeInsets.only(top: 5),
                            child: Row(
                              children: [
                                ChatroomHeaderIcons(
                                  icon: Icons.message_rounded,
                                  Color: AppColor.green,
                                  text: "Chat",
                                  isSelected: true,
                                ),

                                Space.w3,
                                ChatroomHeaderIcons(
                                  icon: Icons.folder,
                                  Color: AppColor.amber,
                                  text: "File",
                                ),

                                Space.w3,
                                ChatroomHeaderIcons(
                                  icon: Icons.push_pin,
                                  Color: AppColor.green,
                                  text: "Pinned",
                                ),

                                Space.w3,

                                ChatroomHeaderIcons(
                                  icon: Icons.add,
                                  text: "",
                                  Color: AppColor.white54,
                                ),
                              ],
                            ),
                          ),

                          trailing: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              ChatroomCustomIcons(icon: Icons.manage_search),

                              Space.w10,
                              ChatroomCustomIcons(
                                icon: Icons.video_call_outlined,
                              ),

                              Space.w10,
                              ChatroomCustomIcons(
                                icon: Icons.person_add_alt_1_outlined,
                              ),

                              Space.w10,
                              ChatroomCustomIcons(
                                icon: Icons.calendar_today_outlined,
                              ),

                              Space.w10,
                              ChatroomCustomIcons(icon: Icons.more_horiz_sharp),
                            ],
                          ),
                        ),

                        // Divider(color: AppColor.grey.withOpacity(0.2),endIndent: 17,indent: 17,),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                          child: Container(
                            height: 0.5,
                            color: AppColor.grey.withOpacity(0.4),
                          ),
                        ),

                        //Chat Area Section _2

                        //  Chat_Room
                        Expanded(
                          child: ListView.builder(
                            itemCount: addMessage.length,
                            itemBuilder: (context, index) {
                              return MouseRegion(
                                onEnter: (event) {
                                  setState(() {
                                    ishover[index] = true;
                                  });
                                },
                                onExit: (event) {
                                  setState(() {
                                    ishover[index] = false;
                                  });
                                },
                                child: MessageBubble(
                                  message: addMessage[index],
                                  image: AssetImage(ImagePath.ProfileImage),
                                  name: "Zeeshan",
                                  date: ishover[index] ? "Yesterday" : "",
                                  time: ishover[index] ? "9:23 AM" : "",

                                  custom_action: ishover[index]
                                      ? CustomChatbubbleIcons()
                                      : SizedBox.shrink(),
                                ),
                              );
                            },
                          ),
                        ),
                        // Input_Feild
                        Padding(
                          padding: const EdgeInsets.fromLTRB(20, 0, 20, 21),
                          child: TextField(
                            onChanged: (value) {
                              setState(() {});
                            },
                            cursorColor: AppColor.grey,
                            onSubmitted: (value) {
                              setState(() {
                                addMessage.add(MessageController.text);
                                ishover.add(false);
                                MessageController.clear();
                              });
                            },
                            controller: MessageController,
                            style: TextStyle(color: AppColor.grey),
                            decoration: InputDecoration(
                              fillColor: AppColor.grey,
                              hint: Text(
                                "Message CirleUp",
                                style: TextStyle(color: AppColor.grey),
                              ),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5),
                                borderSide: BorderSide(
                                  color: AppColor.grey,
                                  width: 0.2,
                                ),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5),
                                borderSide: BorderSide(color: AppColor.grey),
                              ),

                              suffixIcon: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Text(
                                    "Aa",
                                    style: TextStyle(
                                      color: AppColor.grey,
                                      fontSize: 18,
                                    ),
                                  ),
                                  Space.w10,
                                  ChatroomCustomIcons(
                                    icon: Icons.emoji_emotions_outlined,
                                  ),

                                  Space.w10,
                                  ChatroomCustomIcons(
                                    icon: Icons.alternate_email,
                                  ),

                                  Space.w10,

                                  SizedBox(
                                    width: 26,
                                    child: Stack(
                                      children: [
                                        Transform.rotate(
                                          angle: -3.1415926535 / 2,
                                          child: ChatroomCustomIcons(
                                            icon: Icons.cut,
                                          ),
                                        ),
                                        Positioned(
                                          right: -4,
                                          bottom: 3,

                                          child: ChatroomCustomIcons(
                                            icon: Icons.keyboard_arrow_down,
                                            size: 13,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Space.w10,
                                  ChatroomCustomIcons(
                                    icon: Icons.add_circle_outline_rounded,
                                  ),

                                  Space.w10,
                                  ChatroomCustomIcons(icon: Icons.open_in_full),
                                  Space.w10,
                                  Container(
                                    height: 26,
                                    width: 57,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(6),
                                      color: MessageController.text.isNotEmpty
                                          ? AppColor.blue.withOpacity(0.2)
                                          : AppColor.transperent,
                                    ),
                                    child: Center(
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          SizedBox(width: 7),
                                          InkWell(
                                            onTap: () {
                                              setState(() {
                                                addMessage.add(
                                                  MessageController.text,
                                                );
                                                ishover.add(false);
                                                MessageController.clear();
                                              });
                                            },
                                            child: ChatroomCustomIcons(
                                              Color:
                                                  MessageController
                                                      .text
                                                      .isNotEmpty
                                                  ? AppColor.royalBlue
                                                  : AppColor.grey.withOpacity(
                                                      0.4,
                                                    ),
                                              icon: Icons.send,
                                            ),
                                          ),
                                          SizedBox(width: 5),
                                          Container(
                                            height: 16,
                                            width: 0.8,
                                            color: AppColor.grey.withOpacity(
                                              0.4,
                                            ),
                                          ),
                                          Space.w5,
                                          ChatroomCustomIcons(
                                            Color:
                                                MessageController
                                                    .text
                                                    .isNotEmpty
                                                ? AppColor.blue
                                                : AppColor.grey.withOpacity(
                                                    0.4,
                                                  ),
                                            size: 12,
                                            icon: Icons.keyboard_arrow_down,
                                          ),
                                          Space.w5,
                                        ],
                                      ),
                                    ),
                                  ),
                                  Space.w10,
                                ],
                              ),
                            ),
                          ),
                        ),

                        //Chat area Column end bracket
                      ],
                    ),
                  ),
                ),
              )
            
            ;
  }
}