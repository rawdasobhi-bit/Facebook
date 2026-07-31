import 'package:facebook/utils/app_assets.dart';
import 'package:facebook/utils/app_colors.dart';
import 'package:facebook/utils/app_styles.dart';
import 'package:facebook/utils/size_config.dart';
import 'package:flutter/material.dart';

class PostWidget extends StatelessWidget {
  final String profileImg;
  final String userName;
  final String time;
  final String postImg;

  const PostWidget({
    super.key,
    required this.profileImg,
    required this.userName,
    required this.time,
    required this.postImg,
  });

  @override
  Widget build(BuildContext context) {
    double height = SizeConfig.height(context);
    double width = SizeConfig.width(context);

    return Column(
      children: [
        ListTile(
          leading: CircleAvatar(
            radius: 25,
            backgroundImage: AssetImage(profileImg),
          ),
          title: Text(userName, style: AppStyles.medium16black),
          subtitle: Row(
            spacing: width * .01,
            children: [
              Text('${time}h', style: AppStyles.medium12grey),
              Icon(Icons.public, color: AppColors.grey, size: width * .05),
            ],
          ),
          trailing: Icon(Icons.more_horiz),
        ),
        Image.asset(
          postImg,
          height: height * .4,
          width: double.infinity,
          fit: BoxFit.cover,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 14),
          child: Row(
            children: [
              ImageIcon(AssetImage(AppIcons.likeIcon), color: AppColors.grey),
              SizedBox(width: width * .03),
              ImageIcon(
                AssetImage(AppIcons.messengerIcon),
                color: AppColors.grey,
              ),
              SizedBox(width: width * .03),
              ImageIcon(
                AssetImage(AppIcons.commentIcon),
                color: AppColors.grey,
              ),
              Spacer(),
              Image.asset(AppIcons.fbIcon, width: width * .06),
            ],
          ),
        ),
      ],
    );
  }
}
