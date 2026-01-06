import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:project_1/components/profile_image.dart';
import 'package:project_1/utils/app_color.dart';
import 'package:project_1/utils/image_path.dart';
import 'package:project_1/utils/space.dart';
import 'package:project_1/view/chat/chatroom_icons/chatroom_actionicon.dart';
import 'package:project_1/view/chat/chatroom_icons/chatroom_headericons.dart';

import 'package:project_1/view/chat/chat_room/custom_action.dart';
import 'package:project_1/view/chat/chat_room/message_bubble.dart';
import 'package:project_1/view/chat/sidebar/search_add.dart';
import 'package:project_1/view/chat/sidebar/sidebar_item.dart';

class ChatSidebar extends StatefulWidget {
  @override
  State<ChatSidebar> createState() => _ChatSidebarState();
}

class _ChatSidebarState extends State<ChatSidebar> {

  List<bool> ishover=[];
  TextEditingController MessageController = TextEditingController();
  List addMessage = [];
  int selcetdSidebarItem = 0;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        color: AppColor.lightBlue,
        child: Center(
          child: Row(
            children: [
              //Child 1  -- Side _bar
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    // width: 66,
                    // height: 775,
                    width: size.width * 0.0445,
                    height: size.height * 0.999,
                    constraints: BoxConstraints(minWidth: 64),
                    decoration: BoxDecoration(
                      color: AppColor.transperent,
                      border: BoxBorder.fromLTRB(),
                    ),

                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(3, 29, 3, 8),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          //For Profile_Image In Side Bar
                          ProfileImage(image: ImagePath.ProfileImage),
                          Space.h10,
                          //Search Icon
                          SearchAdd(icon: Icons.search),
                          Space.h10,
                          // Add Icon
                          SearchAdd(icon: Icons.add),
                          Space.h10,

                          ///Messeger///
                          InkWell(
                            onTap: () {
                              setState(() {
                                selcetdSidebarItem = 1;
                              });
                            },
                            child: SidebarItem(
                              isFav: true,
                              icon: FontAwesomeIcons.facebookMessenger,
                              count: "100",
                              text: "Messenger",
                              isSelected: selcetdSidebarItem == 1,
                            ),
                          ),
                          //Video Call
                          Expanded(
                            child: SingleChildScrollView(
                              child: Column(
                                children: [
                                  InkWell(
                                    onTap: () {
                                      setState(() {
                                        selcetdSidebarItem = 2;
                                      });
                                    },
                                    child: SidebarItem(
                                      icon: Icons.video_call_sharp,
                                      count: "22",
                                      text: "Meetings",
                                      isSelected: selcetdSidebarItem == 2,
                                    ),
                                  ),

                                  //Calender
                                  InkWell(
                                    onTap: () {
                                      setState(() {
                                        selcetdSidebarItem = 3;
                                      });
                                    },
                                    child: SidebarItem(
                                      icon: Icons.calendar_month,
                                      text: "Calenders",
                                      isSelected: selcetdSidebarItem == 3,
                                    ),
                                  ),

                                  // DocS
                                  InkWell(
                                    onTap: () {
                                      setState(() {
                                        selcetdSidebarItem = 4;
                                      });
                                    },
                                    child: SidebarItem(
                                      icon: Icons.edit_document,
                                      text: "Docs",
                                      isSelected: selcetdSidebarItem == 4,
                                    ),
                                  ),
                                  //Tasks
                                  InkWell(
                                    onTap: () {
                                      setState(() {
                                        selcetdSidebarItem = 5;
                                      });
                                    },
                                    child: SidebarItem(
                                      icon: Icons.task,
                                      count: "20",
                                      text: "Tasks",
                                      isSelected: selcetdSidebarItem == 5,
                                    ),
                                  ),

                                  //Group 1
                                  InkWell(
                                    onTap: () {
                                      setState(() {
                                        selcetdSidebarItem = 6;
                                      });
                                    },
                                    child: SidebarItem(
                                      icon: FontAwesomeIcons.peopleGroup,
                                      isFav: true,
                                      text: "Group 1",
                                      isSelected: selcetdSidebarItem == 6,
                                    ),
                                  ),

                                  //WorkPlace
                                  InkWell(
                                    onTap: () {
                                      setState(() {
                                        selcetdSidebarItem = 7;
                                      });
                                    },
                                    child: SidebarItem(
                                      icon: Icons.workspaces_filled,
                                      text: "Workplace",
                                      isSelected: selcetdSidebarItem == 7,
                                    ),
                                  ),

                                  //More _side bar
                                  InkWell(
                                    onTap: () {
                                      setState(() {
                                        selcetdSidebarItem = 8;
                                      });
                                    },
                                    child: SidebarItem(
                                      icon: Icons.more,
                                      text: "More",
                                      isSelected: selcetdSidebarItem == 8,
                                    ),
                                  ),

                                  Divider(
                                    color: AppColor.grey.withOpacity(0.2),
                                    endIndent: 17,
                                    indent: 17,
                                  ),

                                  //Aproval
                                  InkWell(
                                    onTap: () {
                                      setState(() {
                                        selcetdSidebarItem = 9;
                                      });
                                    },
                                    child: SidebarItem(
                                      icon: Icons.auto_graph_outlined,
                                      text: "Approval",
                                      isSelected: selcetdSidebarItem == 9,
                                    ),
                                  ),

                                  //Settings..
                                  InkWell(
                                    onTap: () {
                                      setState(() {
                                        selcetdSidebarItem = 10;
                                      });
                                    },
                                    child: SidebarItem(
                                      icon: Icons.settings,
                                      text: "Settings",
                                      isSelected: selcetdSidebarItem == 10,
                                    ),
                                  ),
                                  Container(
                                    height: 1,
                                    width: 40,
                                    color: AppColor.grey,
                                  ),
                                  //  download
                                  InkWell(
                                    onTap: () {
                                      setState(() {
                                        selcetdSidebarItem = 11;
                                      });
                                    },
                                    child: SidebarItem(
                                      icon: Icons.download,
                                      isSelected: selcetdSidebarItem == 11,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              //Child 3 ---Chat Room 
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(0, 28, 6, 7),
                  child: Container(
                    // height: size.height*0.99,
                    // width: size.width*0.734,
                    decoration: BoxDecoration(
                      color: Color(0xff151515),
                      borderRadius: BorderRadius.circular(6),
                    ),

                    child: Column(mainAxisSize: MainAxisSize.min,
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
                              ChatroomActionicon(icon: Icons.people_outline,size: 12,),
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
                                ChatroomHeadericons(
                                  icon: Icons.message_rounded,
                                  Color: AppColor.green,
                                  text: "Chat",
                                  isSelected: true,
                                ),
                            
                                Space.w3,
                                ChatroomHeadericons(
                                  icon: Icons.folder,
                                  Color: AppColor.amber,
                                  text: "File",
                                ),
                            
                                Space.w3,
                                ChatroomHeadericons(
                                  icon: Icons.push_pin,
                                  Color: AppColor.green,
                                  text: "Pinned",
                                ),
                            
                                Space.w3,
                            
                                ChatroomHeadericons(
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
                              ChatroomActionicon(icon: Icons.manage_search),

                              Space.w5,
                              ChatroomActionicon(
                                icon: Icons.video_call_outlined,
                              ),

                              Space.w5,
                              ChatroomActionicon(
                                icon: Icons.person_add_alt_1_outlined,
                              ),

                              Space.w5,
                              ChatroomActionicon(
                                icon: Icons.calendar_today_outlined,
                              ),

                              Space.w5,
                              ChatroomActionicon(icon: Icons.more_horiz_sharp),
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
                                    ishover[index]=true;
                                  });
                                },
                                onExit: (event) {
                                  setState(() {
                                    ishover[index]=false;
                                  });
                                },
                                child: message_Bubble(message: addMessage[index],
                                image: AssetImage("assets/7.jpg"),
                                name: "Zeeshan",
                                date:ishover[index]? "Yesterday":"",
                                time:ishover[index]? "9:23 AM":"",
                                                             
                                custom_action:ishover[index]? CustomAction():SizedBox.shrink(),
                                ),
                              );
                            },
                          ),
                        ),
                        // Input_Feild
                        Padding(
                          padding: const EdgeInsets.fromLTRB(20, 0, 20, 21),
                          child: TextField(cursorColor: AppColor.grey,
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
                                borderSide: BorderSide(color: AppColor.grey,width: 0.2)
                                
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5),
                                borderSide: BorderSide(color: AppColor.grey, )
                                
                              ),

                              suffixIcon: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Text(
                                    "Aa",
                                    style: TextStyle(
                                      color: AppColor.grey,
fontSize: 18
                                    ),
                                  ),
                                  Space.w10,
                                  ChatroomActionicon(
                                    icon: Icons.emoji_emotions_outlined,

                                  ),

                                  Space.w10,
                                  ChatroomActionicon(
                                    icon: Icons.alternate_email,

                                  ),

                                  Space.w10,

                                  SizedBox(
                                    width: 26,
                                    child: Stack(
                                      children: [
                                        Transform.rotate(
                                          angle: -3.1415926535 / 2,
                                          child: ChatroomActionicon(
                                            icon: Icons.cut,
                             
                                          ),
                                        ),
                                        Positioned(
                                          right: -4,
                                          bottom: 3,

                                          child: ChatroomActionicon(
                                            icon: Icons.keyboard_arrow_down,
                                            size: 13,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Space.w10,
                                  ChatroomActionicon(
                                    icon: Icons.add_circle_outline_rounded,

                                  ),

                                  Space.w10,
                                  ChatroomActionicon(
                                    icon: Icons.open_in_full,

                                  ),
                                  Space.w10,
                                  InkWell(
                                    onTap: () {
                                      setState(() {
                                        addMessage.add(MessageController.text);
                                        ishover.add(false);
                                        MessageController.clear();
                                      });
                                    },
                                    child: ChatroomActionicon(
                                      Color: AppColor.grey.withOpacity(0.4),
                                      icon: Icons.send,
                                      size: 22,
                                    ),
                                  ),
                                  Space.w5,
                                  Container(

                                    width: 0.5,
                                    color: AppColor.grey,
                                  ),
                                  Space.w5,
                                  ChatroomActionicon(
                                    icon: Icons.keyboard_arrow_down,
                                  ),
                                  Space.w15,
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}
