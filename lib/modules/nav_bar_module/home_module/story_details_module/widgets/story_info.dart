import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lab_india/common_widgets/buttons/small_rec_button.dart';
import 'package:lab_india/constants/app_colors.dart';
import 'package:lab_india/constants/app_texts.dart';
import 'package:lab_india/controllers/view_story_controller.dart';
import 'package:sizer/sizer.dart';

import '../../../../../constants/app_text_styles.dart';
import '../story_screens/story1/story_1_page.dart';

class StoryInfo extends GetView {
   StoryInfo({Key? key}) : super(key: key);

  final ViewStoryController _viewStoryController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 1.h),
      child: PhysicalModel(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(6.sp),
        elevation: 2,
        child: _viewStoryController.obx
          ((storystate) => SizedBox(
          height: 35.h,
          child: Padding(
            padding: EdgeInsets.all(3.sp),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.network(
                   storystate!.storyImg,
                    // 'https://i.graphicmama.com/blog/wp-content/uploads/2018/02/21095725/Children-Book-Illustrations-Breathtaking-Examples-for-Inspiration.jpg',
                  height: 20.h,
                  width: double.infinity,
                  fit: BoxFit.cover,
                  errorBuilder: ((context, error, stackTrace) => Container(
                        decoration: BoxDecoration(
                          color: AppColors.grey400,
                          borderRadius: BorderRadius.circular(4.sp),
                        ),
                        child: Center(
                            child: Text(
                          error.toString(),
                          style: AppTextStyles.black12,
                        )),
                      )),
                ),
                Spacer(),
                Text(
                  storystate.title,
                  style: AppTextStyles.grey10,
                ),
                Spacer(),
                Text(
                   storystate.description,
                    maxLines: 3,
                  style: AppTextStyles.grey10,
                ),
                Spacer(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SmallRecButton(title: AppTexts.read, onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Story1Page()));

                      //Story1Page
                    }),
                    Image.asset(
                      "assets/icons/play_button.png",
                      height: 3.h,
                    )
                  ],
                )
              ],
            ),
          ),
          ),
        ),
      ),
    );
  }
}
