import 'package:flutter/material.dart';
import 'package:project_1/utils/app_color.dart';

class ChatroomCustomIcons extends StatelessWidget {
  final icon,size,Color;
  ChatroomCustomIcons({required this.icon,this.size=20,this.Color=AppColor.grey});

  @override
  Widget build(BuildContext context) {
    return Icon(icon, size: size, color: Color);
  }
}
