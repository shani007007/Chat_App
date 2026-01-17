import 'package:flutter/material.dart';
import 'package:project_1/utils/app_color.dart';
import 'package:project_1/utils/image_path.dart';
import 'package:project_1/utils/space.dart';
import 'package:project_1/view/chat_view/sections/conversation_list_section/widgets/conversation_list.dart';
import 'package:project_1/view/chat_view/sections/conversation_list_section/widgets/statusbar_items.dart';
class ConservationListSection extends StatefulWidget {
  const ConservationListSection({super.key});

  @override
  State<ConservationListSection> createState() => _ConservationListSectionState();
}

class _ConservationListSectionState extends State<ConservationListSection> {
  int selectedUser = 0;
  int selectedStatus = 0;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return   Padding(
                padding: const EdgeInsets.fromLTRB(0, 28, 7, 7),
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 3),
                  // width: 320,
                  // height: 900,
                  height: size.height * 0.99,
                  width: size.width * 0.207,
                  constraints: BoxConstraints(minWidth: 260),

                  decoration: BoxDecoration(
                    color: Color(0xff151515),
                    borderRadius: BorderRadius.circular(6),
                  ),

                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(5, 10, 5, 0),
                    child: Column(
                      children: [
                        //Chats  First chaildren
                        Row(
                          children: [
                            // Menu Icons
                            Space.w10,
                            Icon(Icons.menu, color: AppColor.white),
                            Space.w5,
                            // Chats
                            Text(
                              "Chats",
                              style: TextStyle(
                                color: AppColor.white,
                                fontSize: 18,
                              ),
                            ),
                          ],
                        ),
                        Space.h10,

                        //2nd Children
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                          child: SizedBox(
                            height: 65,
                            child: ListView.builder(
                              shrinkWrap: true,
                              scrollDirection: Axis.horizontal,
                              itemCount: 8,
                              itemBuilder: (context, index) {
                                return InkWell(
                                  onTap: () {
                                    setState(() {
                                      selectedStatus = index;
                                    });
                                  },
                                  child: StatusbarItems(
                                    image: ImagePath.StatusImage,
                                    text: "SmartLog",
                                    isSelected: selectedStatus == index,
                                  ),
                                );
                              },
                            ),
                          ),
                        ),
                        //3rd Children___----------______-------_________----------_______---------________--------
                        Space.h10,
                        Expanded(
                          child: ListView.builder(
                            itemCount: 18,
                            itemBuilder: (context, index) {
                              return InkWell(
                                onTap: () {
                                  setState(() {
                                    selectedUser = index;
                                  });
                                },
                                child: ConversationTile(
                                  leadingImage: ImagePath.UserProfile,
                                  title: "Task Assistant",
                                  time: "9:25 AM",
                                  subtitile:
                                      "Abdul Wahab: @Arham Sarwar How Are You ",
                                  trailingImage: "assets/9.jpg",
                                  isSelected: selectedUser == index,
                                ),
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              );
  }
}