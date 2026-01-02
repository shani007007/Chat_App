import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:project_1/components/profile_image.dart';
import 'package:project_1/utils/app_color.dart';
import 'package:project_1/utils/image_path.dart';
import 'package:project_1/utils/space.dart';

class ChatSidebar extends StatelessWidget {
  const ChatSidebar({super.key});

  @override
  Widget build(BuildContext context) {
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
                    width: 66,
                    height: 718,
                    // width: size.width*0.045,
                    // height: size.height*0.925,
                    decoration: BoxDecoration(
                      color: AppColor.transperent,
                      border: BoxBorder.fromLTRB(
                        bottom: BorderSide(color: AppColor.grey, width: 0.25),
                      ),
                    ),

                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(3, 40, 3, 8),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          //For Profile_Image In Side Bar
                         ProfileImage(image: ImagePath.ProfileImage,size: 100,),
                          Space.h10,
                          //Search Icon
                          Container(
                            height: 28,
                            width: 28,
                            decoration: BoxDecoration(
                              color: AppColor.white.withOpacity(0.1),
                              shape: BoxShape.circle,
                            ),
                            child: Icon(
                              Icons.search,
                              size: 20,
                              color: AppColor.white,
                            ),
                          ),
                          Space.h10,
                          // Add Icon
                          Container(
                            height: 28,
                            width: 28,
                            decoration: BoxDecoration(
                              color: AppColor.white.withOpacity(0.1),
                              shape: BoxShape.circle,
                            ),
                            child: Icon(Icons.add, color: AppColor.white),
                          ),
                          Space.h10,

                          ///Messeger///
                          Stack(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  color: AppColor.grey.withOpacity(0.3),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.fromLTRB(
                                    3.5,
                                    8,
                                    3.5,
                                    8,
                                  ),
                                  child: Column(
                                    children: [
                                      FaIcon(
                                        FontAwesomeIcons.facebookMessenger,
                                        color: AppColor.blue,
                                        size: 22,
                                      ),
                                      SizedBox(height: 3),
                                      Text(
                                        "Messemger",
                                        style: TextStyle(
                                          fontSize: 9,
                                          color: AppColor.white,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Positioned(
                                right: 8,
                                top: 2,
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: AppColor.red,
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.fromLTRB(
                                      4,
                                      1,
                                      4,
                                      1,
                                    ),
                                    child: Text(
                                      "930",
                                      style: TextStyle(
                                        color: AppColor.white,
                                        fontSize: 9,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),

                          //Video Call
                          Stack(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  color: AppColor.grey.withOpacity(0),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.fromLTRB(
                                    8,
                                    6,
                                    8,
                                    6,
                                  ),
                                  child: Column(
                                    children: [
                                      Icon(
                                        Icons.video_call_sharp,
                                        color: AppColor.white,
                                        size: 26,
                                      ),
                                      Text(
                                        "Meetings",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 9,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Positioned(
                                right: 8,
                                top: 2,
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: AppColor.red,
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.fromLTRB(
                                      4,
                                      1,
                                      4,
                                      1,
                                    ),
                                    child: Text(
                                      "22",
                                      style: TextStyle(
                                        color: AppColor.white,
                                        fontSize: 9,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          //Calender
                          Stack(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  color: AppColor.grey.withOpacity(0),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.fromLTRB(
                                    8,
                                    6,
                                    8,
                                    6,
                                  ),
                                  child: Column(
                                    children: [
                                      Icon(
                                        Icons.calendar_month,
                                        color: AppColor.white,
                                        size: 26,
                                      ),
                                      Text(
                                        "Calenders",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 9,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Positioned(
                                right: 8,
                                top: 2,
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: AppColor.transperent,
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.fromLTRB(
                                      4,
                                      1,
                                      4,
                                      1,
                                    ),
                                    child: Text(
                                      "",
                                      style: TextStyle(
                                        color: AppColor.white,
                                        fontSize: 9,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          // DocS
                          Stack(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  color: AppColor.grey.withOpacity(0),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.fromLTRB(
                                    8,
                                    6,
                                    8,
                                    6,
                                  ),
                                  child: Column(
                                    children: [
                                      Icon(
                                        Icons.edit_document,
                                        color: AppColor.white,
                                        size: 26,
                                      ),
                                      Text(
                                        "Docs",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 9,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Positioned(
                                right: 8,
                                top: 2,
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: AppColor.transperent,
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.fromLTRB(
                                      4,
                                      1,
                                      4,
                                      1,
                                    ),
                                    child: Text(
                                      "",
                                      style: TextStyle(
                                        color: AppColor.white,
                                        fontSize: 9,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),

                          //Tasks
                          Stack(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  color: AppColor.grey.withOpacity(0),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.fromLTRB(
                                    8,
                                    6,
                                    8,
                                    6,
                                  ),
                                  child: Column(
                                    children: [
                                      Icon(
                                        Icons.task,
                                        color: AppColor.white,
                                        size: 26,
                                      ),
                                      Text(
                                        "Tasks",
                                        style: TextStyle(
                                          color: AppColor.white,
                                          fontSize: 9,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Positioned(
                                right: 4,
                                top: 2,
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: AppColor.red,
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.fromLTRB(
                                      4,
                                      1,
                                      4,
                                      1,
                                    ),
                                    child: Text(
                                      "20",
                                      style: TextStyle(
                                        color: AppColor.white,
                                        fontSize: 9,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          //Group 1
                          Stack(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  color: AppColor.grey.withOpacity(0),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.fromLTRB(
                                    8,
                                    6,
                                    8,
                                    6,
                                  ),
                                  child: Column(
                                    children: [
                                      Container(
                                        decoration: BoxDecoration(
                                          color: AppColor.white.withOpacity(
                                            0.2,
                                          ),
                                          borderRadius: BorderRadius.circular(
                                            3,
                                          ),
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.all(4.0),
                                          child: FaIcon(
                                            FontAwesomeIcons.peopleGroup,
                                            color: AppColor.blue,
                                            size: 12,
                                          ),
                                        ),
                                      ),
                                      SizedBox(height: 2),
                                      Text(
                                        "Group 1",
                                        style: TextStyle(
                                          color: AppColor.white,
                                          fontSize: 9,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Positioned(
                                right: 10,
                                top: 2,
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: AppColor.transperent,
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.fromLTRB(
                                      4,
                                      1,
                                      4,
                                      1,
                                    ),
                                    child: Text(
                                      "",
                                      style: TextStyle(
                                        color: AppColor.white,
                                        fontSize: 9,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          //WorkPlace
                          Stack(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  color: AppColor.grey.withOpacity(0),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.fromLTRB(
                                    8,
                                    6,
                                    8,
                                    6,
                                  ),
                                  child: Column(
                                    children: [
                                      Icon(
                                        Icons.workspaces_filled,
                                        color: AppColor.white,
                                        size: 26,
                                      ),
                                      Text(
                                        "Workplace",
                                        style: TextStyle(
                                          color: AppColor.white,
                                          fontSize: 8.5,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Positioned(
                                right: 8,
                                top: 2,
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: AppColor.transperent,
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.fromLTRB(
                                      4,
                                      1,
                                      4,
                                      1,
                                    ),
                                    child: Text(
                                      "",
                                      style: TextStyle(
                                        color: AppColor.white,
                                        fontSize: 9,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          //More _side bar
                          Stack(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  color: AppColor.grey.withOpacity(0),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.fromLTRB(
                                    8,
                                    6,
                                    8,
                                    6,
                                  ),
                                  child: Column(
                                    children: [
                                      Container(
                                        decoration: BoxDecoration(
                                          color: AppColor.white.withOpacity(
                                            0.2,
                                          ),
                                          borderRadius: BorderRadius.circular(
                                            3,
                                          ),
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.all(3),
                                          child: Icon(
                                            Icons.workspaces_filled,
                                            color: AppColor.blue,
                                            size: 14,
                                          ),
                                        ),
                                      ),
                                      SizedBox(height: 2),
                                      Text(
                                        "More",
                                        style: TextStyle(
                                          color: AppColor.white,
                                          fontSize: 9,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Positioned(
                                right: 10,
                                top: 2,
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: AppColor.transperent,
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.fromLTRB(
                                      4,
                                      1,
                                      4,
                                      1,
                                    ),
                                    child: Text(
                                      "",
                                      style: TextStyle(
                                        color: AppColor.white,
                                        fontSize: 10,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),

                          Divider(
                            color: AppColor.grey.withOpacity(0.2),
                            endIndent: 17,
                            indent: 17,
                          ),

                          //Aproval
                          Stack(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  color: AppColor.grey.withOpacity(0),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.fromLTRB(
                                    8,
                                    6,
                                    8,
                                    6,
                                  ),
                                  child: Column(
                                    children: [
                                      Container(
                                        decoration: BoxDecoration(
                                          color: AppColor.deepOrangeAccent,
                                          borderRadius: BorderRadius.circular(
                                            7,
                                          ),
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.all(3.0),
                                          child: Icon(
                                            Icons.auto_graph_outlined,
                                            color: AppColor.white,
                                            size: 14,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                      SizedBox(height: 2),
                                      Text(
                                        "Approval",
                                        style: TextStyle(
                                          color: AppColor.white,
                                          fontSize: 9,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Positioned(
                                right: 10,
                                top: 2,
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: AppColor.transperent,
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.fromLTRB(
                                      4,
                                      1,
                                      4,
                                      1,
                                    ),
                                    child: Text(
                                      "",
                                      style: TextStyle(
                                        color: AppColor.white,
                                        fontSize: 10,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),

                          //Workplac..
                          Stack(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  color: AppColor.grey.withOpacity(0),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.fromLTRB(
                                    8,
                                    6,
                                    8,
                                    0,
                                  ),
                                  child: Column(
                                    children: [
                                      Icon(
                                        Icons.settings,
                                        color: AppColor.blueAccent,
                                        size: 25,
                                      ),
                                      Text(
                                        "Workplac..",
                                        style: TextStyle(
                                          color: AppColor.white,
                                          fontSize: 8.5,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Positioned(
                                right: 8,
                                top: 2,
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: AppColor.transperent,
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.fromLTRB(
                                      4,
                                      1,
                                      4,
                                      1,
                                    ),
                                    child: Text(
                                      "",
                                      style: TextStyle(
                                        color: AppColor.white,
                                        fontSize: 9,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 16),
                  //  FaIcon(FontAwesomeIcons.download , color: AppColor.blueAccent,),
                  Container(
                    height: 21,
                    width: 22,
                    decoration: BoxDecoration(
                      color: AppColor.blueAccent,
                      borderRadius: BorderRadius.circular(6),
                      boxShadow: [
                        BoxShadow(
                          color: AppColor.white.withOpacity(0.1),
                          spreadRadius: 7,
                          blurRadius: 0.76,
                        ),
                      ],
                    ),
                    child: Icon(
                      Icons.download,
                      color: AppColor.white,
                      size: 15,
                    ),
                  ),
                ],
              ),

              //Child 3 ---Chat Screen Circle Up
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(0, 10, 6, 10),
                  child: Container(
                    // height: size.height*0.99,
                    // width: size.width*0.734,
                    decoration: BoxDecoration(
                      color: Color(0xff151515),
                      borderRadius: BorderRadius.circular(12),
                    ),

                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        //Chat Area Section _1
                        Row(
                          children: [
                            SizedBox(width: 16),
                            Icon(
                              Icons.arrow_back_ios_new,
                              color: AppColor.white,
                              size: 18,
                            ),

                            Expanded(
                              child: ListTile(
                                leading: CircleAvatar(
                                  backgroundImage: AssetImage("assets/1.jpg"),
                                ),
                                title: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Text(
                                      "CircleUp",
                                      style: TextStyle(color: AppColor.white),
                                    ),
                                    SizedBox(width: 7),
                                    Icon(
                                      Icons.people_outline,
                                      size: 12,
                                      color: AppColor.grey.withOpacity(0.6),
                                    ),
                                    SizedBox(width: 3),
                                    Text(
                                      "6",
                                      style: TextStyle(
                                        color: AppColor.grey.withOpacity(0.6),
                                        fontSize: 10,
                                      ),
                                    ),
                                  ],
                                ),
                                subtitle: Row(
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                        color: AppColor.blueAccent.withOpacity(
                                          0.2,
                                        ),
                                        borderRadius: BorderRadius.circular(6),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                          7,
                                          5,
                                          7,
                                          5,
                                        ),
                                        child: Row(
                                          children: [
                                            Icon(
                                              Icons.message_rounded,
                                              size: 12,
                                              color: AppColor.blue,
                                            ),
                                            SizedBox(width: 3),
                                            Text(
                                              "Chat",
                                              style: TextStyle(
                                                fontSize: 10,
                                                color: AppColor.blueAccent,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    SizedBox(width: 10),
                                    Container(
                                      child: Row(
                                        children: [
                                          Icon(
                                            Icons.folder,
                                            size: 12,
                                            color: AppColor.amber,
                                          ),
                                          SizedBox(width: 3),
                                          Text(
                                            "File",
                                            style: TextStyle(
                                              fontSize: 10,
                                              color: AppColor.grey,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(width: 12),
                                    Container(
                                      child: Row(
                                        children: [
                                          Icon(
                                            Icons.push_pin,
                                            size: 12,
                                            color: AppColor.green,
                                          ),
                                          SizedBox(width: 3),
                                          Text(
                                            "Pinned",
                                            style: TextStyle(
                                              color: AppColor.grey,
                                              fontSize: 10,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(width: 12),
                                    Icon(
                                      Icons.add,
                                      size: 12,
                                      color: AppColor.grey,
                                    ),
                                  ],
                                ),

                                trailing: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Icon(
                                      Icons.manage_search,
                                      size: 14,
                                      color: AppColor.grey,
                                    ),
                                    SizedBox(width: 6),
                                    Icon(
                                      Icons.video_call_outlined,
                                      size: 14,
                                      color: AppColor.grey,
                                    ),
                                    SizedBox(width: 6),
                                    Icon(
                                      Icons.person_add_alt_1_outlined,
                                      size: 14,
                                      color: AppColor.grey,
                                    ),
                                    SizedBox(width: 6),
                                    Icon(
                                      Icons.calendar_today_outlined,
                                      size: 14,
                                      color: AppColor.grey,
                                    ),
                                    SizedBox(width: 6),
                                    Icon(
                                      Icons.more_horiz_sharp,
                                      size: 14,
                                      color: AppColor.grey,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),

                        // Divider(color: AppColor.grey.withOpacity(0.2),endIndent: 17,indent: 17,),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(16, 0, 16, 0),
                          child: Container(
                            height: 0.5,
                            color: AppColor.grey.withOpacity(0.4),
                          ),
                        ),
                        //Chat Area Section _2

                        // ListTile for chat messages
                        ListTile(
                          leading: CircleAvatar(
                            backgroundImage: AssetImage("assets/7.jpg"),
                          ),
                          title: Text(
                            "Abdul Wahab",
                            style: TextStyle(
                              color: AppColor.grey,
                              fontSize: 12,
                            ),
                          ),
                          subtitle: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  color: AppColor.white.withOpacity(0.1),
                                  borderRadius: BorderRadius.circular(6),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Center(
                                    child: Text(
                                      "Tracker stop",
                                      style: TextStyle(color: AppColor.white),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Space.h10,
                        //Time showing
                        Center(
                          child: Text(
                            "Yesterday",
                            style: TextStyle(color: AppColor.grey, fontSize: 9),
                          ),
                        ),
                        Space.h10,

                        ListTile(
                          leading: CircleAvatar(
                            backgroundImage: AssetImage("assets/7.jpg"),
                          ),
                          title: Text(
                            "Abdul Wahab",
                            style: TextStyle(
                              color: AppColor.grey,
                              fontSize: 12,
                            ),
                          ),
                          subtitle: Row(
                            mainAxisSize: MainAxisSize.min,

                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  color: AppColor.white.withOpacity(0.1),
                                  borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(6),
                                    topLeft: Radius.circular(6),
                                    bottomRight: Radius.circular(6),
                                  ),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Center(
                                    child: Text(
                                      "Admin App Deploy",
                                      style: TextStyle(color: AppColor.white),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),

                        Padding(
                          padding: const EdgeInsets.fromLTRB(66, 0, 0, 0),
                          child: Row(
                            children: [
                              Icon(Icons.reply, color: AppColor.blue, size: 20),
                              Text(
                                "1 reply",
                                style: TextStyle(
                                  color: AppColor.blue,
                                  fontSize: 12,
                                ),
                              ),
                            ],
                          ),
                        ),

                        SizedBox(height: 8),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(66, 0, 0, 0),
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(6),
                                bottomRight: Radius.circular(6),
                                topRight: Radius.circular(6),
                              ),
                              color: AppColor.white.withOpacity(0.1),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "| Reply to Abul Wahan: admin app deploy",
                                    style: TextStyle(
                                      color: AppColor.grey,
                                      fontSize: 11,
                                    ),
                                  ),
                                  SizedBox(height: 4),
                                  Container(
                                    decoration: BoxDecoration(
                                      color: AppColor.blue,
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                        3,
                                        0,
                                        3,
                                        0,
                                      ),
                                      child: Text(
                                        "@Arham Sarwar",
                                        style: TextStyle(
                                          color: AppColor.white,
                                          fontSize: 11,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),

                        SizedBox(height: 8),
                        ListTile(
                          leading: CircleAvatar(
                            backgroundImage: AssetImage("assets/8.jpg"),
                          ),
                          title: Text(
                            "Arham Sarwar   |Trust is the key to unlock the Hearts.",
                            style: TextStyle(
                              color: AppColor.grey,
                              fontSize: 12,
                            ),
                          ),
                          subtitle: Row(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  color: const Color.fromARGB(
                                    255,
                                    24,
                                    96,
                                    155,
                                  ).withOpacity(0.7),
                                  borderRadius: BorderRadius.circular(6),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Center(
                                    child: Text(
                                      "What is done is admin",
                                      style: TextStyle(color: AppColor.white),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(width: 4),
                              FaIcon(
                                FontAwesomeIcons.clock,
                                color: AppColor.green,
                                size: 12,
                              ),
                            ],
                          ),
                        ),

                        Padding(
                          padding: const EdgeInsets.fromLTRB(66, 0, 0, 0),
                          child: Row(
                            children: [
                              Icon(Icons.reply, color: AppColor.blue, size: 20),
                              Text(
                                "1 reply",
                                style: TextStyle(
                                  color: AppColor.blue,
                                  fontSize: 12,
                                ),
                              ),
                            ],
                          ),
                        ),

                        SizedBox(height: 8),

                        ListTile(
                          leading: CircleAvatar(
                            backgroundImage: AssetImage("assets/7.jpg"),
                          ),
                          title: Text(
                            "Abdul Wahab   YesterDay, 8:24 PM",
                            style: TextStyle(
                              color: AppColor.grey,
                              fontSize: 12,
                            ),
                          ),
                          subtitle: Row(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  color: AppColor.white.withOpacity(0.1),
                                  borderRadius: BorderRadius.circular(6),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "| Reply to Adnan Sarwar: what is don is admin",
                                        style: TextStyle(
                                          color: AppColor.grey,
                                          fontSize: 11,
                                        ),
                                      ),
                                      SizedBox(height: 4),
                                      Row(
                                        children: [
                                          Container(
                                            decoration: BoxDecoration(
                                              color: AppColor.blue,
                                              borderRadius:
                                                  BorderRadius.circular(12),
                                            ),
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.fromLTRB(
                                                    3,
                                                    0,
                                                    3,
                                                    0,
                                                  ),
                                              child: Text(
                                                "@Arham Sarwar",
                                                style: TextStyle(
                                                  color: AppColor.white,
                                                  fontSize: 11,
                                                ),
                                              ),
                                            ),
                                          ),
                                          SizedBox(width: 6),
                                          Text(
                                            "mvvm, pagination {Edited}",
                                            style: TextStyle(
                                              color: AppColor.grey,
                                              fontSize: 11,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),

                              SizedBox(width: 4),
                              Container(
                                height: 20,
                                width: 80,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(4),
                                  border: Border.all(
                                    color: AppColor.grey.withOpacity(0.4),
                                  ),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.fromLTRB(
                                    3,
                                    0,
                                    3,
                                    0,
                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Icon(
                                        Icons.thumb_up,
                                        size: 10,
                                        color: AppColor.white54,
                                      ),
                                      Container(
                                        width: 0.6,
                                        color: AppColor.grey.withOpacity(0.2),
                                      ),
                                      Icon(
                                        Icons.reply,
                                        size: 10,
                                        color: AppColor.white54,
                                      ),
                                      Container(
                                        width: 0.6,
                                        color: AppColor.grey.withOpacity(0.2),
                                      ),
                                      Icon(
                                        Icons.forward,
                                        size: 10,
                                        color: AppColor.white54,
                                      ),
                                      Container(
                                        width: 0.6,
                                        color: AppColor.grey.withOpacity(0.2),
                                      ),
                                      Icon(
                                        Icons.message,
                                        size: 10,
                                        color: AppColor.white54,
                                      ),
                                      Container(
                                        width: 0.6,
                                        color: AppColor.grey.withOpacity(0.2),
                                      ),
                                      Icon(
                                        Icons.more_horiz_sharp,
                                        size: 10,
                                        color: AppColor.white54,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),

                        SizedBox(height: 12),

                        Padding(
                          padding: const EdgeInsets.all(17.0),
                          child: Row(
                            children: [
                              Expanded(
                                flex: 1,
                                child: Container(
                                  // width: 475,
                                  height: 1,
                                  color: AppColor.blue,
                                ),
                              ),
                              SizedBox(width: 18),
                              Text(
                                "11:42 AM   New",
                                style: TextStyle(
                                  color: AppColor.blue,
                                  fontSize: 10,
                                ),
                              ),
                              SizedBox(width: 18),
                              Expanded(
                                flex: 1,
                                child: Container(
                                  // width: 477,
                                  height: 1,
                                  color: AppColor.blue,
                                ),
                              ),
                            ],
                          ),
                        ),

                        ListTile(
                          leading: CircleAvatar(
                            backgroundImage: AssetImage("assets/7.jpg"),
                          ),
                          title: Text(
                            "Abdul Wahab",
                            style: TextStyle(
                              color: AppColor.grey,
                              fontSize: 12,
                            ),
                          ),
                          subtitle: Row(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  color: AppColor.white.withOpacity(0.1),
                                  borderRadius: BorderRadius.circular(6),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          Container(
                                            decoration: BoxDecoration(
                                              color: AppColor.blue,
                                              borderRadius:
                                                  BorderRadius.circular(12),
                                            ),
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.fromLTRB(
                                                    3,
                                                    0,
                                                    3,
                                                    0,
                                                  ),
                                              child: Text(
                                                "@Arham Sarwar",
                                                style: TextStyle(
                                                  color: AppColor.white,
                                                  fontSize: 11,
                                                ),
                                              ),
                                            ),
                                          ),
                                          SizedBox(width: 6),
                                          Text(
                                            "How i test in stripe with live credential",
                                            style: TextStyle(
                                              color: AppColor.grey,
                                              fontSize: 11,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),

                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: TextField(
                            decoration: InputDecoration(
                              hint: Text(
                                "Message CirleUp",
                                style: TextStyle(color: AppColor.grey),
                              ),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5),
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
                                  SizedBox(width: 8),
                                  FaIcon(
                                    FontAwesomeIcons.smile,
                                    color: AppColor.grey,
                                    size: 18,
                                  ),
                                  SizedBox(width: 8),
                                  Text(
                                    "@",
                                    style: TextStyle(
                                      color: AppColor.grey,
                                      fontSize: 18,
                                    ),
                                  ),
                                  SizedBox(width: 8),

                                  SizedBox(
                                    width: 26,
                                    child: Stack(
                                      children: [
                                        Transform.rotate(
                                          angle: -3.1415926535 / 2,
                                          child: Icon(
                                            Icons.cut,
                                            color: AppColor.grey,
                                            size: 18,
                                          ),
                                        ),
                                        Positioned(
                                          right: -1,
                                          bottom: 2,

                                          child: Icon(
                                            Icons.keyboard_arrow_down,
                                            color: AppColor.grey,
                                            size: 12,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(width: 7),
                                  Icon(
                                    Icons.add_circle_outline_rounded,
                                    color: AppColor.grey,
                                    size: 18,
                                  ),
                                  SizedBox(width: 4),
                                  SizedBox(
                                    height: 24,
                                    width: 24,
                                    child: Image(
                                      image: AssetImage("assets/maximize.png"),
                                      color: AppColor.grey,
                                    ),
                                  ),
                                  SizedBox(width: 8),
                                  SizedBox(
                                    height: 18,
                                    width: 18,
                                    child: Image(
                                      image: AssetImage(
                                        "assets/send message.png",
                                      ),
                                      color: AppColor.white.withOpacity(0.2),
                                    ),
                                  ),
                                  SizedBox(width: 10),
                                  Container(
                                    height: 12,
                                    width: 0.3,
                                    color: AppColor.grey,
                                  ),
                                  SizedBox(width: 2),
                                  Icon(
                                    Icons.keyboard_arrow_down,
                                    color: AppColor.grey.withOpacity(0.5),
                                    size: 12,
                                  ),
                                  SizedBox(width: 16),
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
