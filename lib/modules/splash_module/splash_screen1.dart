import 'package:flutter/material.dart';
import 'package:lab_india/common_widgets/buttons/rec_button.dart';
import 'package:lab_india/constants/app_texts.dart';
 
import 'package:lab_india/routes/routing_constant.dart';
import 'package:video_player/video_player.dart';
 

class SplashScreen1 extends StatefulWidget {
  const SplashScreen1({Key? key}) : super(key: key);

  @override
  State<SplashScreen1> createState() => _SplashScreen1State();
}

class _SplashScreen1State extends State<SplashScreen1> {
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
      body: SafeArea(
        child: Column(
          children: [
            Expanded(child: VideoPlayer(_videoPlayerController)),
            RecButton(
                title: AppTexts.getStarted,
                onTap: () {
                  Navigator.pushNamed(context, splash2ScreenRoute);
                })
          ],
        ),
      ),
    );
  }
}
