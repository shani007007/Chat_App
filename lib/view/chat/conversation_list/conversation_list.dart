import 'package:flutter/material.dart';
import 'package:project_1/components/custom_notification.dart';
import 'package:project_1/components/profile_image.dart';
import 'package:project_1/utils/app_color.dart';
import 'package:project_1/utils/space.dart';

class ConversationTile extends StatelessWidget {
  final leadingImage, title, time, subtitile, trailingImage,isSelected;
  String? count;
  ConversationTile({
    required this.leadingImage,
    this.title,
    this.subtitile,
    this.time,
    this.trailingImage,
    this.isSelected=false,
    this.count
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          padding: EdgeInsets.fromLTRB(3, 4, 3, 3),
          decoration: BoxDecoration(
            color:isSelected? AppColor.blueAccent.withOpacity(0.2):AppColor.transperent,
            borderRadius: BorderRadius.circular(6)
            ),
          child: Row(
            children: [
              Space.w10,
              ProfileImage(image: leadingImage,size: 20,),
          
              Space.w10,
              Flexible(
                // width: 212,
                // width: size.width*0.139,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
          
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: Text(
                            title,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(color: AppColor.white, fontSize: 14),
                          ),
                        ),
                        Text(
                          time,
                          style: TextStyle(color: AppColor.grey, fontSize: 12),
                        ),
                      ],
                    ),
                    Space.h5,
                    Row(
                      children: [
                        Expanded(
                          child: Text(
                            subtitile,
                            overflow: TextOverflow.ellipsis,
                            maxLines: 1,
                            style: TextStyle(color: AppColor.grey, fontSize: 12),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(color: AppColor.blueAccent, width: 1),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(1.3),
                            child: ProfileImage(image: trailingImage,size: 10,)
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Space.w5,
            ],
          ),
        ),
        if(count != null)
        Positioned(
          left: 36,
          top: 5,
          child: NotificationBadge(
            count: count ,))
      ],
    );
  }
}
