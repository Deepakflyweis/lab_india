import 'package:flutter/material.dart';
import 'package:lab_india/common_widgets/buttons/rec_button.dart';
import 'package:lab_india/common_widgets/buttons/small_rec_button.dart';
import 'package:lab_india/modules/nav_bar_module/home_module/story_details_module/story_details_screen.dart';
import 'package:lab_india/modules/nav_bar_module/navigator_keys.dart';
import 'package:lab_india/routes/routing_constant.dart';
import 'package:sizer/sizer.dart';

import '../../../../constants/app_colors.dart';
import '../../../../constants/app_text_styles.dart';
import '../../../../constants/app_texts.dart';
import '../../../subscriptions_module_screen/golden_package_renew/subscription_golden_renew.dart';

class StoryTile extends StatelessWidget {
  const StoryTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(5.sp),
      child: PhysicalModel(
        borderRadius: BorderRadius.circular(4.sp),
        color: AppColors.white,
        elevation: 2,
        child: SizedBox(
          width: 42.5.w,
          height: 20.h,
          child: Column(
            children: [
              Image.network(
                'https://i.graphicmama.com/blog/wp-content/uploads/2018/02/21095725/Children-Book-Illustrations-Breathtaking-Examples-for-Inspiration.jpg',
                height: 9.h,
                width: 42.5.w,
                fit: BoxFit.cover,
                errorBuilder: ((context, error, stackTrace) =>
                    InkWell(
                      onTap: (){

                      },
                      child: Container(
                        decoration: BoxDecoration(
                          color: AppColors.grey400,
                          borderRadius: BorderRadius.circular(4.sp),
                        ),
                        child: Center(
                            child: Text(
                          error.toString(),
                          style: AppTextStyles.black12,
                        )),
                      ),
                    )
                ),
              ),
              Spacer(),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Title',
                  style: AppTextStyles.black10,
                ),
              ),
              Spacer(),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Short Description',
                  style: AppTextStyles.black10,
                ),
              ),
              SmallRecButton(
                  title: AppTexts.read,
                  onTap: () {
                    // Navigator.push(
                    //     context, MaterialPageRoute(builder: (context)=> StoryDetailsScreen()));
                    Navigator.pushNamed(context, storyDetailsScreenRoute);
                  })
            ],
          ),
        ),
      ),
    );
  }
}
