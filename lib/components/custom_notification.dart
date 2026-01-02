import 'package:flutter/material.dart';
import 'package:project_1/utils/app_color.dart';
class NotificationBadge extends StatelessWidget {
  final count;
  NotificationBadge({this.count});

  @override
  Widget build(BuildContext context) {
    return Container(
              constraints: BoxConstraints(minWidth: 15),
              decoration: BoxDecoration(
                color: AppColor.red,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(4, 0, 4, 1),
                  child: Text(
                    count,
                    style: TextStyle(color: AppColor.white, fontSize: 10),
                  ),
                ),
              ),
            );
  }
}