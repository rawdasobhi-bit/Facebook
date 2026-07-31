import 'package:facebook/utils/size_config.dart';
import 'package:flutter/cupertino.dart';

import '../../utils/app_assets.dart';
import '../../utils/app_colors.dart';
import '../../utils/app_strings.dart';
import '../../utils/app_styles.dart';

class CreateStoryWidget extends StatelessWidget {
  const CreateStoryWidget({super.key});

  @override
  Widget build(BuildContext context) {
    double height=SizeConfig.height(context);
    double width=SizeConfig.width(context);
    return   Container(
      width: width * .29,

      margin: EdgeInsets.symmetric(horizontal: 4,vertical: 10),
      child: Stack(
        clipBehavior: Clip.none,
        alignment: Alignment.bottomCenter,
        children: [
          Column(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.only(topLeft: Radius.circular(16),topRight: Radius.circular(16) ),
                child: Image.asset(
                  AppImages.profilePhoto,
                  height: height * .15,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(height: height * .02),
              Text(
                AppString.createStory,
                style: AppStyles.semiBold12black,
              ),
            ],
          ),
          Positioned(
            bottom: height * .045,
            child: Container(
              height: width * .09,
              width: width * .09,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: AppColors.white,
                border: Border.all(color: AppColors.white, width: 2),
              ),
              child: Center(
                child: ImageIcon(
                  AssetImage(AppIcons.addIcon),
                  color: AppColors.blue,
                  size: width * .08,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
