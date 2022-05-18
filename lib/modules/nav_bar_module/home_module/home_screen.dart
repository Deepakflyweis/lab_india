import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lab_india/common_widgets/app_bars/auto_leading_appbar.dart';
import 'package:lab_india/constants/app_colors.dart';
import 'package:lab_india/constants/app_text_styles.dart';
import 'package:lab_india/constants/app_texts.dart';
import 'package:lab_india/controllers/category_controller.dart';
import 'package:lab_india/controllers/latest_controller.dart';
import 'package:lab_india/controllers/trending_controller.dart';
import 'package:lab_india/controllers/trending_story_controller.dart';
import 'package:lab_india/controllers/view_story_controller.dart';
import 'package:lab_india/modules/nav_bar_module/home_module/story_details_module/story_details_screen.dart';
import 'package:lab_india/modules/nav_bar_module/home_module/story_details_module/story_screens/story1/story_1_page.dart';
import 'package:lab_india/modules/nav_bar_module/home_module/widgets/story_tile.dart';
import 'package:lab_india/routes/routing_constant.dart';
import 'package:sizer/sizer.dart';

class HomeScreen extends GetView{
    HomeScreen({Key? key}) : super(key: key);

    final CategoryController _categorycontrollers = Get.put(CategoryController());
    final TrendingController _trendingController = Get.put(TrendingController());
    final LatestController _latestController = Get.put(LatestController());




    @override
    Widget build(BuildContext context) {
    return Scaffold(
      appBar: AutoLeadingAppBar(title: " "),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 5.w),
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CarouselSlider.builder(
                  itemCount: 1,
                  itemBuilder: (context, index, _) => Padding(
                        padding: EdgeInsets.all(4.sp),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(6.sp),
                          child: Image.network(
                            'https://i.graphicmama.com/blog/wp-content/uploads/2018/02/21095725/Children-Book-Illustrations-Breathtaking-Examples-for-Inspiration.jpg',
                            errorBuilder: ((context, error, stackTrace) =>
                                Container(
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
                        ),
                      ),
                  options: CarouselOptions()),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 1.h),
                child: Text(
                  AppTexts.categories,
                  style: AppTextStyles.black12,
                ),
              ),
              _categorycontrollers.obx(
                    (catstate) => SizedBox(
                  height: 20.h,
                      child: CarouselSlider.builder(
                        itemCount: catstate!.length,
                        options: CarouselOptions(
                            autoPlay: true,
                            enlargeCenterPage: true,
                            aspectRatio: 16.5 / 4),
                        itemBuilder: (context, index, i) {
                          return GestureDetector(
                            onTap: (){

                             /* viewStoryController.id = catstate[index].id;
                              viewStoryController.callGetStoryApi();*/

                              //Navigator.push(context, MaterialPageRoute(builder: (context)=>Story1Page()));


                              // Get.toNamed(
                              //   storyDetailsScreenRoute,
                              // );
                            },

                            child: Image.network(
                              catstate[index].categoryImg,
                              errorBuilder: (context, Object, StackTrace) =>   Center(
                                child: Image.asset("assets/images/dd.jpg") ,
                              ),
                            ),
                          );
                        },
                      ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 1.h),
                child: Text(
                  AppTexts.trending,
                  style: AppTextStyles.black12,
                ),
              ),
              _trendingController.obx(
                (trendstate) => SizedBox(
                  height: 20.h,
                  child: CarouselSlider.builder(
                    itemCount: trendstate!.length,
                    options: CarouselOptions(
                        autoPlay: true,
                        enlargeCenterPage: true,
                        aspectRatio: 16.5 / 4),
                    itemBuilder: (context, snapshot, i) {
                      return Column(
                        children: [
                          Expanded(
                            child: GestureDetector(
                              onTap: (){

                                // Get.toNamed(storyScreenRoute,
                                //     arguments: trendstate[snapshot].storyId);

                                /*viewStoryController.id = trendstate[snapshot].storyId;
                                viewStoryController.callGetStoryApi();*/

                                Get.to(()=>Story1Page(),arguments: trendstate[snapshot].storyId);

                               // Navigator.push(context, MaterialPageRoute(builder: (context)=>Story1Page()));

                              },
                              child: Image.network(
                               trendstate[snapshot].trendingImg ,
                                fit: BoxFit.cover,
                                errorBuilder: (context,_,__)=>Container(
                                  height: 100,
                                  color: Colors.grey.shade200,
                                  child: Image.asset("assets/images/gf.jpg"),
                                ),
                              ),
                            ),
                          ),
                          Text(trendstate[snapshot].trending),
                        ],
                      );
                    },
                  ),
                ),
                  onError: (err)=>Center(child: Text(err!)),
                  onEmpty: Center(child: Text("No Data"),)
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 1.h),
                child: Text(
                  AppTexts.latestRelease,
                  style: AppTextStyles.black12,
                ),
              ),
              _latestController.obx(
                    (lateststate) => SizedBox(
                  height: 20.h,
                      child: CarouselSlider.builder(
                        itemCount: lateststate!.length,
                        options: CarouselOptions(
                            autoPlay: true,
                            enlargeCenterPage: true,
                            aspectRatio: 16.5 / 4),
                        itemBuilder: (context, index, i) {
                          return Column(
                            children: [
                              Expanded(
                                child: GestureDetector(
                                  onTap: (){

                                    // Get.toNamed(storyScreenRoute,
                                    //     arguments: lateststate[index].storyId);

                                    /*viewStoryController.id = lateststate[index].storyId;
                                    viewStoryController.callGetStoryApi();*/

                                    Get.to(()=>Story1Page(),arguments: lateststate[index].storyId);

                                    //  Navigator.push(context, MaterialPageRoute(builder: (context)=>Story1Page()));
                                    // Get.toNamed(
                                    //   storyDetailsScreenRoute,
                                    // );
                                  },
                                  child: Image.network(
                                    lateststate[index].latestImg.toString(),
                                    fit: BoxFit.cover,
                                    errorBuilder: (context,_,__)=>Container(
                                      height: 100,
                                      color: Colors.grey.shade200,
                                      child: Image.asset("assets/images/gfm.jpg"),
                                    ),
                                  ),
                                ),
                              ),
                              Text(lateststate[index].latest),
                            ],
                          );
                        },
                      ),
                    ),
                  onError: (err)=>Center(child: Text(err!)),
                  onEmpty: Center(child: Text("No Data"),)
                ),
            ],
          ),
        ),
      ),
    );
  }
}
