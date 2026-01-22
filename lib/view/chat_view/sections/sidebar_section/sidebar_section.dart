import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:project_1/components/profile_image.dart';
import 'package:project_1/controller/provider/sidebar_section_provider.dart';
import 'package:project_1/utils/app_color.dart';
import 'package:project_1/utils/image_path.dart';
import 'package:project_1/utils/space.dart';
import 'package:project_1/view/chat_view/sections/sidebar_section/widgets/search_add.dart';
import 'package:project_1/view/chat_view/sections/sidebar_section/widgets/sidebar_item.dart';
import 'package:provider/provider.dart';
class SidebarSection extends StatelessWidget {
  const SidebarSection({super.key});

  // int selcetdSidebarItem = 0;
  @override
  Widget build(BuildContext context) {
    var providerWatch = context.watch<SidebarSectionProvider>();
    var providerRead = context.read<SidebarSectionProvider>();

    Size size = MediaQuery.of(context).size;
    return     Column(
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
                            onTap: () =>providerRead.upDateSelcetdSidebarItem(1),
                            child: SidebarItem(
                              isFav: true,
                              icon: FontAwesomeIcons.facebookMessenger,
                              count: "100",
                              text: "Messenger",
                              isSelected: providerRead.selcetdSidebarItem == 1,
                            ),
                          ),
                          //Video Call
                          Expanded(
                            child: SingleChildScrollView(
                              child: Column(
                                children: [
                                  InkWell(
                                    onTap: ()=>providerRead.upDateSelcetdSidebarItem(2),
                                    child: SidebarItem(
                                      icon: Icons.video_call_sharp,
                                      count: "22",
                                      text: "Meetings",
                                      isSelected: providerRead.selcetdSidebarItem == 2,
                                    ),
                                  ),

                                  //Calender
                                  InkWell(
                                    onTap: ()=>providerRead.upDateSelcetdSidebarItem(3),
                                    child: SidebarItem(
                                      icon: Icons.calendar_month,
                                      text: "Calenders",
                                      isSelected: providerRead.selcetdSidebarItem == 3,
                                    ),
                                  ),

                                  // DocS
                                  InkWell(
                                    onTap: ()=>providerRead.upDateSelcetdSidebarItem(4),
                                    child: SidebarItem(
                                      icon: Icons.edit_document,
                                      text: "Docs",
                                      isSelected: providerRead.selcetdSidebarItem == 4,
                                    ),
                                  ),
                                  //Tasks
                                  InkWell(
                                    onTap: () =>providerRead.upDateSelcetdSidebarItem(5),
                                    child: SidebarItem(
                                      icon: Icons.task,
                                      count: "20",
                                      text: "Tasks",
                                      isSelected: providerRead.selcetdSidebarItem == 5,
                                    ),
                                  ),

                                  //Group 1
                                  InkWell(
                                    onTap: ()=>providerRead.upDateSelcetdSidebarItem(6),
                                    child: SidebarItem(
                                      icon: FontAwesomeIcons.peopleGroup,
                                      isFav: true,
                                      text: "Group 1",
                                      isSelected: providerRead.selcetdSidebarItem == 6,
                                    ),
                                  ),

                                  //WorkPlace
                                  InkWell(
                                    onTap: ()=>providerRead.upDateSelcetdSidebarItem(7),
                                    child: SidebarItem(
                                      icon: Icons.workspaces_filled,
                                      text: "Workplace",
                                      isSelected: providerRead.selcetdSidebarItem == 7,
                                    ),
                                  ),

                                  //More _side bar
                                  InkWell(
                                    onTap: ()=>providerRead.upDateSelcetdSidebarItem(8),
                                    child: SidebarItem(
                                      icon: Icons.more,
                                      text: "More",
                                      isSelected: providerRead.selcetdSidebarItem == 8,
                                    ),
                                  ),

                                  Divider(
                                    color: AppColor.grey.withOpacity(0.2),
                                    endIndent: 17,
                                    indent: 17,
                                  ),

                                  //Aproval
                                  InkWell(
                                    onTap: ()=>providerRead.upDateSelcetdSidebarItem(9),
                                    child: SidebarItem(
                                      icon: Icons.auto_graph_outlined,
                                      text: "Approval",
                                      isSelected: providerRead.selcetdSidebarItem == 9,
                                    ),
                                  ),

                                  //Settings..
                                  InkWell(
                                    onTap: () =>providerRead.upDateSelcetdSidebarItem(10),
                                    child: SidebarItem(
                                      icon: Icons.settings,
                                      text: "Settings",
                                      isSelected: providerRead.selcetdSidebarItem == 10,
                                    ),
                                  ),
                                  Container(
                                    height: 1,
                                    width: 40,
                                    color: AppColor.grey,
                                  ),
                                  //  download
                                  InkWell(
                                    onTap: () =>providerRead.upDateSelcetdSidebarItem(11),
                                    child: SidebarItem(
                                      icon: Icons.download,
                                      isSelected: providerRead.selcetdSidebarItem == 11,
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
              );
  }
}