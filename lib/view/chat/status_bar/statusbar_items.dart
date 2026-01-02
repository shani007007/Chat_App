import 'package:flutter/material.dart';
import 'package:project_1/components/custom_notification.dart';
import 'package:project_1/components/profile_image.dart';
import 'package:project_1/utils/app_color.dart';
import 'package:project_1/utils/space.dart';

class StatusbarItems extends StatelessWidget {
  final image, isSelected;
  String? text, count;
  StatusbarItems({
    this.count,
    required this.image,
    required this.text,
    this.isSelected = false,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 70,
          width: 60,
          padding: EdgeInsets.fromLTRB(0, 3, 0, 0),
          decoration: BoxDecoration(
            color: isSelected
                ? AppColor.blue.withOpacity(0.2)
                : AppColor.transperent,
            borderRadius: BorderRadius.circular(6),
          ),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ProfileImage(image: image, size: 20),
                Space.h5,
                Text(
                  text!,
                  style: TextStyle(color: AppColor.grey, fontSize: 10),
                ),
              ],
            ),
          ),
        ),
        if (count != null)
          Positioned(
            right: 6,
            top: 1,
            child: NotificationBadge(
              count: count,
            )
          ),
      ],
    );
  }
}
