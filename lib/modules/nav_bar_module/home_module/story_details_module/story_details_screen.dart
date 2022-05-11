import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:lab_india/common_widgets/app_bars/auto_leading_appbar.dart';
import 'package:lab_india/controllers/rating_controller.dart';
import 'package:lab_india/modules/nav_bar_module/home_module/story_details_module/widgets/review_tile.dart';
import 'package:lab_india/modules/nav_bar_module/home_module/story_details_module/widgets/story_info.dart';
import 'package:sizer/sizer.dart';

import '../../../../constants/app_colors.dart';

class StoryDetailsScreen extends GetView<ViewRatingController>{

  ViewRatingController viewRatingController = Get.put(ViewRatingController());

@override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AutoLeadingAppBar(title: 'Title'),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 5.w),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              StoryInfo(),
              ListView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: 5,
                  itemBuilder: ((context, index) => Padding(
                    padding: EdgeInsets.all(4.sp),
                    child: InkWell(
                      onTap: (){
                        showMyAlertDialog(context);
                      },
                      child: Container(
                        height: 8.h,
                        decoration: BoxDecoration(
                            border: Border.all(color: AppColors.primaryColor, width: 3),
                            borderRadius: BorderRadius.circular(6.sp)),
                        child: Center(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                ClipOval(
                                  child: Image.network(
                                    '',
                                    width: 20.w,
                                    fit: BoxFit.cover,
                                    errorBuilder: ((context, error, stackTrace) => Icon(
                                      Icons.account_circle_outlined,
                                      size: 25.sp,
                                    )),
                                  ),
                                ),
                                viewRatingController.obx(
                                        (viewratingstate) => SizedBox(
                                      width: 60.w,
                                      child: Column(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Row(
                                              children: [
                                                Expanded(
                                                  child: Text(viewRatingController.firstname.toString(),
                                                    style: TextStyle(
                                                      color: AppColors.black,
                                                      fontSize: 12,
                                                    ),
                                                  ),
                                                ),

                                                RatingBar.builder(
                                                  itemSize: 15,
                                                  initialRating: 2,
                                                  minRating: 1,
                                                  direction: Axis.horizontal,
                                                  allowHalfRating: true,
                                                  itemCount: 5,
                                                  itemPadding: EdgeInsets.symmetric(horizontal: 0.0),
                                                  itemBuilder: (context, _) => const Icon(
                                                    Icons.star,size: 10,
                                                    color: Colors.amber,
                                                  ),
                                                  onRatingUpdate: (rating) {
                                                    viewRatingController.rating;
                                                    print(rating);
                                                  },
                                                ),
                                              ],
                                            ),
                                            SizedBox(
                                              height: 0.5.h,
                                            ),

                                            Text(viewRatingController.review.toString(),
                                              maxLines: 2,
                                              style: TextStyle(
                                                color: AppColors.grey400,
                                                fontSize: 10,

                                              ),

                                            ),

                                            Text('Lorem Ipsum is the lorem ipsum',
                                              style: TextStyle(
                                                color: AppColors.grey400,
                                                fontSize: 10,

                                              ),

                                            ),
                                          ]),
                                    )
                                )],
                            )),
                      ),
                    ),
                  )
                  )
              )
            ],
          ),
        ),
      ),
    );
  }
}
