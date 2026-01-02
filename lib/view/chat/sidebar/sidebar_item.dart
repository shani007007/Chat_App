import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:project_1/components/custom_notification.dart';
import 'package:project_1/utils/app_color.dart';
import 'package:project_1/utils/space.dart';

class SidebarItem extends StatefulWidget {
  final icon, text, isFav, isSelected;
  String? count;
   SidebarItem({ this.count,required this.icon, this.text, this.isFav = false,this.isSelected=false});

  @override
  State<SidebarItem> createState() => _SidebarItemState();
}

class _SidebarItemState extends State<SidebarItem> {
  @override
  Widget build(BuildContext context) {
    Size size=MediaQuery.of(context).size;
    return Stack(
      children: [
        Container(
          height: 54.5,
          // height: size.width*0.036,
          width: 60,
          // width: size.height*0.073,
          decoration: BoxDecoration(
            color: widget.isSelected?AppColor.grey.withOpacity(0.3): AppColor.transperent,
            borderRadius: BorderRadius.circular(10),
          ),
          child:  Column(crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
              children: [
                !widget.isFav ?
                Icon(widget.icon , color: AppColor.white,size: 24,)
                 :
                FaIcon(
                  widget.icon,
                  color: AppColor.white,
                  size: 20,
                ),
                Space.h5,
                if(widget.text != null)
                Text(
                  widget.text ,
                  style: TextStyle(fontSize: 9, color: AppColor.white),
                ),
              ],
            ),
          
        ),
        if(widget.count != null)
        Positioned(
          right: 8,
          top: 2,
          child: NotificationBadge(
            count: widget.count,
          )
        ),
      ],
    );
  }
}
