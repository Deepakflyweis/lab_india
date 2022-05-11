import 'package:flutter/material.dart';
import 'package:lab_india/common_widgets/buttons/rec_button.dart';
import 'package:lab_india/constants/app_text_styles.dart';
import 'package:lab_india/constants/app_texts.dart';
import 'package:lab_india/modules/splash_module/splash_screen1.dart';
import 'package:lab_india/modules/splash_module/splash_screen3.dart';
import 'package:lab_india/routes/routing_constant.dart';
import 'package:sizer/sizer.dart';
import 'package:video_player/video_player.dart';

import '../../constants/app_colors.dart';

class SplashScreen2 extends StatefulWidget {
  const SplashScreen2({Key? key}) : super(key: key);

  @override
  State<SplashScreen2> createState() => _SplashScreen2State();
}

class _SplashScreen2State extends State<SplashScreen2> {
  late VideoPlayerController _videoPlayerController;
  @override
  void initState() {
    _videoPlayerController =
        VideoPlayerController.asset('assets/video/splash_video.mp4');
    _videoPlayerController.addListener(() {
      setState(() {});
    });
    _videoPlayerController.setLooping(true);
    _videoPlayerController.initialize().then((_) => setState(() {}));
    _videoPlayerController.play();
    super.initState();
  }

  @override
  void dispose() {
    _videoPlayerController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Spacer(),
          Text(
            AppTexts.startApp,
            style: AppTextStyles.primary15,
          ),
          Spacer(),
          SizedBox(
            width: 40.w,
            height: 38.h,
            child: Stack(
              children: [
                Column(
                  children: [
                    const SizedBox(
                      height: 7,
                    ),
                    Expanded(child: VideoPlayer(_videoPlayerController)),
                    Padding(
                      padding: EdgeInsets.symmetric(
                          vertical: 6.sp, horizontal: 15.sp),
                      child: Container(
                        height: 3.h,
                        width: 100.w,
                        decoration: BoxDecoration(
                            color: AppColors.primaryColor,
                            borderRadius: BorderRadius.circular(2.sp)),
                        child: Center(
                          child: Text(AppTexts.getStarted,
                              style: AppTextStyles.white8Bold),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 7,
                    )
                  ],
                ),
                //SplashScreen1(),
                Image.asset(
                  'assets/images/iphone_frame.png',
                  width: 40.w,
                  height: 38.h,
                  fit: BoxFit.fill,
                )
              ],
            ),
          ),
          const Spacer(
            flex: 2,
          ),
          RecButton(
              title: AppTexts.next,
              onTap: () {
                Navigator.pushNamed(context, splash3ScreenRoute);
              })
        ],
      ),
    );
  }
}
