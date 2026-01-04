import 'package:flutter/material.dart';
import 'package:project_1/utils/app_color.dart';
import 'package:project_1/utils/space.dart';

class ChatroomHeadericons extends StatelessWidget {
  final icon,text,Color,isSelected;
  ChatroomHeadericons({required this.icon,this.text,this.Color,this.isSelected=false});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color:!isSelected?AppColor.transperent: AppColor.blueAccent.withOpacity(0.8),
        borderRadius: BorderRadius.circular(6),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 3.8,horizontal: 6.5),
        child: Row(
          children: [
            Icon(icon, size:14, color:!isSelected? Color:AppColor.blue),
            Space.w3,
            Text(
              text,
              style: TextStyle(fontSize: 12, color:!isSelected? AppColor.grey:AppColor.blue),
            ),
          ],
        ),
      ),
    );
  }
}
