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
                          child: Image.asset(
                            'assets/images/adds.png',
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
                      height: 25.h,
                      child: ListView.builder(
                         itemCount: catstate!.length,
                         shrinkWrap: true,
                         scrollDirection: Axis.horizontal,
                        itemBuilder: ((context, index) {
                          return Padding(
                            padding: const EdgeInsets.all(10),
                            child: Container(
                              height: 25.h,
                              width: 45.w,
                              padding: const EdgeInsets.only(left: 10),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: Colors.white,
                                boxShadow: const [
                                   BoxShadow(
                                    color: Colors.grey,
                                    offset: Offset(2.0,2.0),
                                    blurRadius: 5,
                                    spreadRadius: 1,
                                  )
                                ]

                              ),

                              child: Column(
                                children: [
                                  Image.network(
                                  catstate[index].categoryImg,
                                  height: 12.h,
                                  width: 45.w,
                                  fit: BoxFit.fill,
                                  errorBuilder: (context, Object, StackTrace) =>   Center(
                                    child: Image.asset("assets/images/dd.jpg",fit: BoxFit.fill),
                               ),
                              ),
                               Center(
                                child: InkWell(
                                  onTap: () {

                                //  Get.to(()=>Story1Page(),arguments: catstate[index].category);
                                 
                                  },
                                  child: Container(
                                   decoration: BoxDecoration(
                                     borderRadius: BorderRadius.circular(6),
                                     color: Color(0xff962CFF) ,
                                   ),
                                    alignment: Alignment.center,
                                    width: 20.w,
                                    height: 4.h,
                                    
                                    child: Text("Read",style: TextStyle(color: Colors.white,fontSize: 14,fontWeight: FontWeight.w500)),
                                    )
                                    ),),
                                    


                             ]
                              ),
                            ),
                            
                            );
                          
                        })
                      
                      //  CarouselSlider.builder(
                      //   itemCount: catstate!.length,

                      //   options: CarouselOptions(
                      //       // autoPlay: false,
                      //       // viewportFraction: 1,
                      //       //   enlargeCenterPage: false,
                      //      aspectRatio: 16 / 9
                      //       ),
                      //   itemBuilder: (context, index, i) {
                      //     return GestureDetector(
                      //       onTap: (){

                      //        /* viewStoryController.id = catstate[index].id;
                      //         viewStoryController.callGetStoryApi();*/

                      //         //Navigator.push(context, MaterialPageRoute(builder: (context)=>Story1Page()));


                      //         // Get.toNamed(
                      //         //   storyDetailsScreenRoute,
                      //         // );
                      //       },

                      //       child: Image.network(
                      //         catstate[index].categoryImg,
                      //         errorBuilder: (context, Object, StackTrace) =>   Center(
                      //           child: Image.asset("assets/images/dd.jpg") ,
                      //         ),
                      //       ),
                      //     );
                      //   },
                      // ),
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
                  height: 25.h,
                  child: ListView.builder( 
                     itemCount: trendstate!.length,
                         shrinkWrap: true,
                         scrollDirection: Axis.horizontal,
                        itemBuilder: ((context, snapshot) {
                          return Padding(
                            padding: EdgeInsets.all(10),
                            child: Container(
                              height: 25.h,
                              width: 45.w,
                              padding: EdgeInsets.only(left: 10),
                                decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: Colors.white,
                                boxShadow: const [
                                   BoxShadow(
                                    color: Colors.grey,
                                    offset: Offset(2.0,2.0),
                                    blurRadius: 5,
                                    spreadRadius: 1,
                                  )
                                ]

                              ),
                              child: Column(
                                children: [
                                  Expanded(
                                    child: Image.network(
                                      trendstate[snapshot].trendingImg ,
                                    height: 12.h,
                                    width: 45.w,
                                    fit: BoxFit.fill,
                                    errorBuilder: (context, Object, StackTrace) =>   Center(
                                      child: Image.asset("assets/images/gf.jpg",fit: BoxFit.fill) ,
                                  ),
                                   ),
                                  ),
                                  Text(trendstate[snapshot].trending),

                              Center(
                                child: InkWell(
                                  onTap: () {
                                    
                                    // Get.toNamed(storyScreenRoute,
                  //               //     arguments: trendstate[snapshot].storyId);
                  //              /*viewStoryController.id = trendstate[snapshot].storyId;
                  //               viewStoryController.callGetStoryApi();*/
                               Get.to(()=>Story1Page(),arguments: trendstate[snapshot].storyId);

                  //              // Navigator.push(context, MaterialPageRoute(builder: (context)=>Story1Page()));
                                  },
                                  child: Container(
                                   decoration: BoxDecoration(
                                     borderRadius: BorderRadius.circular(6),
                                     color: Color(0xff962CFF) ,
                                   ),
                                    alignment: Alignment.center,
                                    width: 20.w,
                                    height: 4.h,
                                    
                                    child: Text("Read",style: TextStyle(color: Colors.white,fontSize: 14,fontWeight: FontWeight.w500)),
                                    )
                                    ),),
                                    SizedBox(height: 5,)
                             ]
                              ),
                            ),
                            
                            );
                        })
                  
                  )
                  // CarouselSlider.builder(
                  //   itemCount: trendstate!.length,
                  //   options: CarouselOptions(
                  //       autoPlay: false,
                  //       enlargeCenterPage: true,
                  //       aspectRatio: 16.5 / 4),
                  //   itemBuilder: (context, snapshot, i) {
                  //     return Column(
                  //       children: [
                  //         Expanded(
                  //           child: GestureDetector(
                  //             onTap: (){

                  //               // Get.toNamed(storyScreenRoute,
                  //               //     arguments: trendstate[snapshot].storyId);

                  //               /*viewStoryController.id = trendstate[snapshot].storyId;
                  //               viewStoryController.callGetStoryApi();*/

                  //               Get.to(()=>Story1Page(),arguments: trendstate[snapshot].storyId);

                  //              // Navigator.push(context, MaterialPageRoute(builder: (context)=>Story1Page()));

                  //             },
                  //             child: Image.network(
                  //              trendstate[snapshot].trendingImg ,
                  //               fit: BoxFit.cover,
                  //               errorBuilder: (context,_,__)=>Container(
                  //                 height: 100,
                  //                 color: Colors.grey.shade200,
                  //                 child: Image.asset("assets/images/gf.jpg"),
                  //               ),
                  //             ),
                  //           ),
                  //         ),
                  //         Text(trendstate[snapshot].trending),
                  //       ],
                  //     );
                  //   },
                  // ),
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
                  height: 25.h,
                      child: ListView.builder(
                        itemCount: lateststate!.length,
                       shrinkWrap: true,
                         scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: EdgeInsets.all(10),
                            child: Container(
                              height: 25.h,
                              width: 45.w,
                              padding: EdgeInsets.only(left: 10),
                                decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: Colors.white,
                                boxShadow: const [
                                   BoxShadow(
                                    color: Colors.grey,
                                    offset: Offset(2.0,2.0),
                                    blurRadius: 5,
                                    spreadRadius: 1,
                                  )
                                ]

                              ),
                            child: Column(
                              children: [
                                Expanded(
                                  child: Image.network(
                                    lateststate[index].latestImg.toString(),
                                    height: 12.h,
                                    width: 45.w, 
                                    fit: BoxFit.fill,                                   
                                    errorBuilder: (context, Object, StackTrace)=>Center(                                  
                                      child: Image.asset("assets/images/gfm.jpg",fit: BoxFit.fill),
                                    ),
                                  ),
                                ),
                                Text(lateststate[index].latest),
                                Center(
                                  child: InkWell(
                                    onTap: () {

                                  Get.to(()=>Story1Page(),arguments: lateststate[index].storyId);

                                    },
                                    child: Container(
                                     decoration: BoxDecoration(
                                       borderRadius: BorderRadius.circular(6),
                                       color: Color(0xff962CFF) ,
                                     ),
                                      alignment: Alignment.center,
                                      width: 20.w,
                                      height: 4.h,
                                      
                                      child: Text("Read",style: TextStyle(color: Colors.white,fontSize: 14,fontWeight: FontWeight.w500)),
                                      )
                                      ),),
                                      SizedBox(height: 5,)
                              ],
                            ),
                            )
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
