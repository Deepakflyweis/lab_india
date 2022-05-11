import 'package:flutter/material.dart';
import 'package:lab_india/common_widgets/buttons/rec_button.dart';
import 'package:lab_india/constants/app_text_styles.dart';
import 'package:lab_india/constants/app_texts.dart';
import 'package:lab_india/modules/splash_module/signIn_signup_screen.dart';
import 'package:lab_india/routes/routing_constant.dart';
import 'package:sizer/sizer.dart';

class GetStartedScreen extends StatelessWidget {
  const GetStartedScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Positioned(
              top: 5.h,
              left: 0,
              child: Image.asset(
                'assets/images/square_stack.png',
                height: 20.h,
              ),
            ),
            Positioned(
              bottom: 15.h,
              right: 0,
              child: Image.asset(
                'assets/images/circular_stack.png',
                height: 20.h,
              ),
            ),
            Column(
              children: [
                Spacer(),
                Image.asset(
                  'assets/images/iSubscribe.png',
                  width: 60.w,
                ),
                Spacer(),
                RecButton(
                    title: AppTexts.getStarted,
                    onTap: () {
                      Navigator.pushNamed(context, signinOrSignUpScreenRoute);
                    })
              ],
            )
          ],
        ),
      ),
    );
  }
}
