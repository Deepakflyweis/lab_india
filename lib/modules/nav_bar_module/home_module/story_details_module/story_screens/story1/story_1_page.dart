import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:just_audio/just_audio.dart';
import 'package:lab_india/common_widgets/buttons/small_rec_button.dart';
import 'package:lab_india/constants/app_colors.dart';
import 'package:lab_india/constants/app_texts.dart';
import 'package:lab_india/controllers/view_story_controller.dart';
import 'package:lab_india/models/view_stories.dart';
import 'package:lab_india/modules/nav_bar_module/home_module/rating_review/rating_review_screen.dart';
import 'package:sizer/sizer.dart';

import '../../../../../../common_widgets/app_bars/auto_leading_appbar.dart';


class Story1Page extends GetView<ViewStoryModel> with WidgetsBindingObserver{
   Story1Page({Key? key}) : super(key: key);

  //ViewStoryController viewStoryController = Get.find();
   ViewStoryController viewStoryController = Get.put(ViewStoryController());
  // TrendingStoryController _trendingStoryController = Get.find();

     AudioPlayer player = AudioPlayer();



   @override
   void initState() {
     // super.initState();
    //  player = AudioPlayer();
   }
   @override
   void dispose() {
     player.dispose();
     // super.dispose();
   }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AutoLeadingAppBar(title: 'Title'),
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 1.h,horizontal: 2.w),
        child: SingleChildScrollView(
          child:  viewStoryController.obx
          ((storydetails) =>  Column(
            children: [
              PhysicalModel(
                color: AppColors.white,
                borderRadius: BorderRadius.circular(6.sp),
                elevation: 1,
                child:
                SizedBox(
                  height: 21.3.h,
                  child: Padding(
                    padding: EdgeInsets.all(3.sp),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.network(
                          storydetails!.storyImg,
                          height: 20.h,
                          width: double.infinity,
                          fit: BoxFit.cover,
                          errorBuilder: ((context, error, stackTrace) => Container(
                            height: 100,
                            decoration: BoxDecoration(
                              color: AppColors.grey400,
                              borderRadius: BorderRadius.circular(4.sp),
                            ),
                            child: Center(
                                child:Image.asset("assets/images/sb.jpg",fit: BoxFit.fill,)
                            ),
                          )),
                        ),

                      ],
                    ),
                  ),
                ),
              ),

              SizedBox(
                height: 3.h,
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [

                  Text(storydetails.title,
                    style: TextStyle(
                      color: AppColors.black,
                      fontSize: 17,
                    ),
                  ),
                  Padding(
                    padding:  EdgeInsets.only(left: 0.w),
                    child: GestureDetector(
                      onTap: () async{
                        print("defefrf");
                        // await player.setUrl("https://github.com/Deepakflyweis/sample_audio/blob/main/Ek_Purani_Kahani_Baarish_Full_St_(getmp3.pro).mp3");
                        // player.play();

                         if (viewStoryController.isPause.value) {
                            viewStoryController.isPause.value = false;
                            player.pause();
                          } else {
                            viewStoryController.isPause.value = true;
                            //print(storydetails.storyAudio);
                            var url = storydetails.storyAudio;
                            await player.setUrl(url.trim());
                            // await player.setUrl(
                            //     "http://mern.online:4000/public/storyAudio/storyAudio1653044569570.mp3");
                            player.play();
                          }
                        }, child: Obx(
                          () {
                            if (viewStoryController.isPause.value == true) {
                              return Image.asset(
                                "assets/images/Black_Pause.png",
                                height: 4.h,
                              );
                            }
                            return Image.asset("assets/icons/play_button.png",
                                height: 4.h);
                          },
                        )

                    // },
                    //   child: Image.asset(
                    //     "assets/icons/play_button.png",
                    //     height: 4.h,
                    //   ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 2.h,
              ),

              Text( storydetails.description,
                style: TextStyle(
                  color: AppColors.black,
                  fontSize: 14,
                ),
              ),
              SizedBox(
                height: 2.h,
              ),

              // Text( storydetails.story.toString(),
              //
              //   style: TextStyle(
              //
              //     color: AppColors.black,
              //     fontSize: 14,
              //
              //   ),
              // ),

              SmallRecButton(title:AppTexts.NEXT, onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context)=> RatingReview()));
               }
              ),
            ],
          ),
        ),
      ),
      )
    );
  }
}
