import 'package:flutter/material.dart';
import 'package:project_1/utils/app_color.dart';

class ChatroomActionicon extends StatelessWidget {
  final icon,size,Color;
  ChatroomActionicon({required this.icon,this.size=12,this.Color=AppColor.grey});

  @override
  Widget build(BuildContext context) {
    return Icon(icon, size: size, color: Color);
  }
}
