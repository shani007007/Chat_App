import 'package:flutter/material.dart';
import 'package:project_1/utils/image_path.dart';

class ProfileImage extends StatelessWidget {
  var image, size;
  ProfileImage({required this.image, this.size = 17});

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundImage: AssetImage(image),
      maxRadius: size,
    );
  }
}
