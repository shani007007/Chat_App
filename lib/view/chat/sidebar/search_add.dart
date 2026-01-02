import 'package:flutter/material.dart';
import 'package:project_1/utils/app_color.dart';
class SearchAdd extends StatelessWidget {
  final icon;
  SearchAdd({this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
                            height: 28,
                            width: 28,
                            decoration: BoxDecoration(
                              color: AppColor.white.withOpacity(0.1),
                              shape: BoxShape.circle,
                            ),
                            child: Icon(
                              icon,
                              size: 20,
                              color: AppColor.white,
                            ),
                          );
  }
}