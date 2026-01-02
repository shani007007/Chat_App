import 'package:flutter/material.dart';
import 'package:project_1/utils/app_color.dart';
import 'package:project_1/view/chat/message_Bubble/custom_divider.dart';

class CustomAction extends StatelessWidget {
  const CustomAction({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 20,
      width: 80,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4),
        border: Border.all(color: AppColor.grey.withOpacity(0.4)),
      ),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(3, 0, 3, 0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Icon(Icons.thumb_up, size: 10, color: AppColor.white54),
            CustomDivider(),
            Icon(Icons.reply, size: 10, color: AppColor.white54),
            CustomDivider(),
            Icon(Icons.forward, size: 10, color: AppColor.white54),
            CustomDivider(),
            Icon(Icons.message, size: 10, color: AppColor.white54),
            CustomDivider(),
            Icon(Icons.more_horiz_sharp, size: 10, color: AppColor.white54),
          ],
        ),
      ),
    );
  }
}
