import 'package:facebook/utils/app_assets.dart';
import 'package:facebook/utils/app_colors.dart';
import 'package:facebook/utils/size_config.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class StoryWidget extends StatelessWidget {
  String storyImg;
  String profileImg;
  StoryWidget({required this.profileImg, required this.storyImg});

  @override
  Widget build(BuildContext context) {
    double height = SizeConfig.height(context);
    double width = SizeConfig.width(context);
    return Container(
      alignment: Alignment.topLeft,
      padding: EdgeInsets.all(6),
      margin: EdgeInsets.all(10),
      height: height * .192,
      width: width * .29,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        image: DecorationImage(image: AssetImage(storyImg), fit: BoxFit.cover),
      ),
      child: Container(
        width: width * .1,
        height: width * .1,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(color: AppColors.blue, width: 2.5),
        ),
        child: Padding(
          padding: const EdgeInsets.all(2.0),
          child: CircleAvatar(
            backgroundImage: AssetImage(profileImg),
          ),
        ),
      ),
    );
  }
}