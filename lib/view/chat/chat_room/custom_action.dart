import 'package:flutter/material.dart';
import 'package:project_1/utils/app_color.dart';
import 'package:project_1/view/chat/chat_room/custom_divider.dart';

class CustomAction extends StatelessWidget {
  const CustomAction({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 25,
      width: 108,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(3),
        border: Border.all(color: AppColor.grey.withOpacity(0.4)),
      ),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(3, 0, 3, 0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Icon(Icons.thumb_up, size: 15, color: AppColor.white54),
            CustomDivider(),
            Icon(Icons.reply, size: 15, color: AppColor.white54),
            CustomDivider(),
            Icon(Icons.forward, size: 15, color: AppColor.white54),
            CustomDivider(),
            Icon(Icons.message, size: 15, color: AppColor.white54),
            CustomDivider(),
            Icon(Icons.more_horiz_sharp, size: 15, color: AppColor.white54),
          ],
        ),
      ),
    );
  }
}
