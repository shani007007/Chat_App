import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:project_1/utils/app_color.dart';
import 'package:project_1/utils/space.dart';
import 'package:project_1/view/chat/chat_room/custom_action.dart';

class message_Bubble extends StatelessWidget {
  final message, image, name, date, time, bubble_color, custom_action;
  message_Bubble({
    this.message,
    this.image,
    this.name,
    this.date,
    this.time,
    this.bubble_color,
    this.custom_action,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 9),
      color: AppColor.transperent,
      child: Padding(
        padding: const EdgeInsets.only(left: 16, right: 16),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CircleAvatar(backgroundImage: image),
            Space.w10,
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "$name   $date $time",
                    style: TextStyle(color: AppColor.grey, fontSize: 12),
                  ),
                  Space.h10,
                  IntrinsicHeight(
                    child: Row(
                      children: [
                        Flexible(
                          child: Container(
                            padding: EdgeInsets.fromLTRB(12, 10, 8, 10),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(6),
                              color: AppColor.blueAccent,
                            ),
                            child: Text(
                              message,
                              style: TextStyle(color: Colors.white),
                              softWrap: true,
                            ),
                          ),
                        ),
                        Space.w5,
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            custom_action,
                            FaIcon(
                              FontAwesomeIcons.clock,
                              color: AppColor.green,
                              size: 14,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
