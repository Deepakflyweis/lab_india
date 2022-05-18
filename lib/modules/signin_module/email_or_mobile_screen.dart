import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lab_india/api_providers/api_client.dart';
import 'package:lab_india/api_providers/provider/user_endpoint.dart';
import 'package:lab_india/common_widgets/app_bars/center_title_appbar.dart';
import 'package:lab_india/common_widgets/buttons/rec_button.dart';
import 'package:lab_india/constants/app_text_styles.dart';
import 'package:lab_india/constants/app_texts.dart';
import 'package:lab_india/controllers/signin_controller.dart';
import 'package:lab_india/routes/routing_constant.dart';
import 'package:sizer/sizer.dart';
import '../../common_widgets/text_feilds/basic_text_feild.dart';

class EnterEmailOrMobileScreen extends StatelessWidget {
  EnterEmailOrMobileScreen({Key? key}) : super(key: key);

  SignInController signInController = Get.put(SignInController());

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScopeNode currentFocus = FocusScope.of(context);
        if (!currentFocus.hasPrimaryFocus) {
          currentFocus.unfocus();
        }
      },
      child: Scaffold(
        appBar: CenterTitleAppBar(
          title: AppTexts.signIn,
        ),
        body: Form(
          key: signInController.loginFormKey,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 5.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Spacer(
                  flex: 3,
                ),
                BasicTextField(
                  label: AppTexts.email + '/' + AppTexts.mobileNumber,
                  validator: (val) {
                    if (val == null) {
                      return "Enter Data";
                    }
                  },
                  hint: AppTexts.emailHint,
                  controller: signInController.email,
                ),
                RecButton(
                    title: AppTexts.signIn,
                    onTap: () {
                      signInController.sendotp();

                      // Navigator.pushNamed(context, bottomNavBarScreenRoute);
                      // Navigator.pushNamedAndRemoveUntil(
                      //     context, bottomNavBarScreenRoute, (route) => false);

                      //  Navigator.pushNamed(context, HomeScreen);
                      // Navigator.pushNamed(context, otpSignInScreenRoute);
                    }),
                SizedBox(
                  height: 7.h,
                ),
                Text.rich(
                  TextSpan(children: [
                    TextSpan(
                        text: AppTexts.notAMember + "  ",
                        style: AppTextStyles.black12),
                    TextSpan(
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            Navigator.pushNamed(context, signUp1ScreenRoute);
                          },
                        text: AppTexts.signUp,
                        style: AppTextStyles.primary12)
                  ]),
                ),
                Spacer(
                  flex: 2,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

 
}
