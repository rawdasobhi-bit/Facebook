import 'package:facebook/ui/models/story_model.dart';
import 'package:facebook/ui/widgets/create_story_widget.dart';
import 'package:facebook/ui/widgets/post_widget.dart';
import 'package:facebook/ui/widgets/story_widget.dart';
import 'package:facebook/utils/app_assets.dart';
import 'package:facebook/utils/app_colors.dart';
import 'package:facebook/utils/app_styles.dart';
import 'package:facebook/utils/size_config.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../utils/app_strings.dart';
import '../models/post_model.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
  List<StoryModel> stories = [
    StoryModel(profileImg: AppImages.profile1, storyImg: AppImages.story1),
    StoryModel(profileImg: AppImages.profile2, storyImg: AppImages.story2),
    StoryModel(profileImg: AppImages.profile3, storyImg: AppImages.story3),
    StoryModel(profileImg: AppImages.profile4, storyImg: AppImages.story4),
    StoryModel(profileImg: AppImages.profile5, storyImg: AppImages.story5),
  ];
  List<PostModel> posts = [
    PostModel(
      profileImg: AppImages.profile1,
      userName: 'rawda sobhi',
      time: '12',
      postImg: AppImages.story2,
    ),
    PostModel(
      profileImg: AppImages.profile2,
      userName: 'hour mahmoud',
      time: '1',
      postImg: AppImages.story4,
    ),
    PostModel(
      profileImg: AppImages.profile3,
      userName: 'Yasmine Mohsen',
      time: '23',
      postImg: AppImages.story1,
    ),
    PostModel(
      profileImg: AppImages.profile5,
      userName: 'Lina Mohamed',
      time: '17',
      postImg: AppImages.story5,
    ),
    PostModel(
      profileImg: AppImages.profile4,
      userName: 'Salma Ali',
      time: '4',
      postImg: AppImages.story3,
    ),PostModel(
      profileImg: AppImages.profile1,
      userName: 'rawda sobhi',
      time: '12',
      postImg: AppImages.story2,
    ),
    PostModel(
      profileImg: AppImages.profile3,
      userName: 'hour mahmoud',
      time: '1',
      postImg: AppImages.story4,
    ),
    PostModel(
      profileImg: AppImages.profile3,
      userName: 'Yasmine Mohsen',
      time: '23',
      postImg: AppImages.story1,
    ),
    PostModel(
      profileImg: AppImages.profile5,
      userName: 'Lina Mohamed',
      time: '17',
      postImg: AppImages.story5,
    ),
    PostModel(
      profileImg: AppImages.profile4,
      userName: 'Salma Ali',
      time: '4',
      postImg: AppImages.story3,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    double height = SizeConfig.height(context);
    double width = SizeConfig.width(context);
    return DefaultTabController(
      length: 5,

      child: Scaffold(
        appBar: AppBar(
          backgroundColor: AppColors.white,
          title: Image.asset(AppImages.facebook, height: height * .03),
          actions: [
            IconButton(
              onPressed: () {},
              icon: ImageIcon(AssetImage(AppIcons.addIcon)),
            ),
            IconButton(
              onPressed: () {},
              icon: ImageIcon(AssetImage(AppIcons.searchIcon)),
            ),

            IconButton(
              onPressed: () {},
              icon: ImageIcon(AssetImage(AppIcons.messengerIcon)),
            ),
          ],
          actionsPadding: EdgeInsets.only(right: width * .05),
          actionsIconTheme: IconThemeData(color: AppColors.black),
          bottom: TabBar(
            indicatorSize: TabBarIndicatorSize.tab,
            indicatorColor: AppColors.blue,
            dividerHeight: 1,
            labelColor: AppColors.blue,
            unselectedLabelColor: AppColors.grey,
            tabs: [
              Tab(icon: ImageIcon(AssetImage(AppIcons.homeIcon))),
              Tab(icon: ImageIcon(AssetImage(AppIcons.videoIcon))),
              Tab(icon: ImageIcon(AssetImage(AppIcons.storeIcon))),
              Tab(icon: ImageIcon(AssetImage(AppIcons.notificationIcon))),

              Tab(icon: ImageIcon(AssetImage(AppIcons.profileIcon))),
            ],
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              ListTile(
                leading: CircleAvatar(
                  radius: 25,
                  backgroundImage: AssetImage(AppImages.profilePhoto),
                ),
                title: TextField(
                  decoration: InputDecoration(
                    hintText: AppString.whatsInYourMind,
                    hintStyle: AppStyles.medium16grey,
                    border: InputBorder.none,
                  ),
                ),
                trailing: ImageIcon(
                  AssetImage(AppIcons.photosIcon),
                  color: AppColors.green,
                ),
              ),
              Divider(color: AppColors.grey, thickness: 2),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12.0),
                child: SizedBox(
                  height: height * .22,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      if (index == 0) return CreateStoryWidget();
                      final story = stories[index - 1];
                      return StoryWidget(
                        profileImg: story.profileImg,
                        storyImg: story.storyImg,
                      );
                    },
                    itemCount: stories.length + 1,
                  ),
                ),
              ),
              Divider(color: AppColors.grey, thickness: 2),
              ListView.separated(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  return PostWidget(
                    profileImg: posts[index].profileImg,
                    userName: posts[index].userName,
                    time: posts[index].time,
                    postImg: posts[index].postImg,
                  );
                },
                separatorBuilder: (context, index) {
                  return Divider(color: AppColors.grey, thickness: 2);
                },
                itemCount: posts.length,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
