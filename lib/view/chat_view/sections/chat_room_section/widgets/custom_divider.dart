import 'package:flutter/material.dart';
import 'package:project_1/utils/app_color.dart';
class CustomDivider extends StatelessWidget {
  const CustomDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(width: 0.9, color: AppColor.grey.withOpacity(0.2,)
    );
  }
}