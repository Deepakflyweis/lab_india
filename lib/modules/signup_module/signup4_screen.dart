import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:lab_india/common_widgets/buttons/rec_button.dart';
import 'package:lab_india/common_widgets/text_feilds/basic_text_feild.dart';
import 'package:lab_india/controllers/sign_up_controller.dart';
import 'package:lab_india/routes/routing_constant.dart';
import 'package:sizer/sizer.dart';
import '../../common_widgets/app_bars/center_title_appbar.dart';
import '../../constants/app_texts.dart';

class SignUp4Screen extends StatelessWidget {
  SignUp4Screen({Key? key}) : super(key: key);

  SignUpController signUpController = Get.find();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        appBar: CenterTitleAppBar(
          title: AppTexts.signUp,
        ),
        body: Form(
          key: signUpController.signup4FormKey,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 5.w),
            child: Column(
              children: [
                Spacer(),
                BasicTextField(
                    controller: signUpController.email,
                    validator: (val) {
                      if (val == "") {
                        return "Enter Your email id";
                      }
                    },
                    hint: AppTexts.emailHint,
                    label: AppTexts.email),
                BasicTextField(
                    controller: signUpController.mob,
                    validator: (val) {
                      if (val == "") {
                        return "Enter your mob";
                      }
                    },
                    hint: AppTexts.mobileNumberHint,
                    label: AppTexts.mobileNumber),
                Spacer(),
                RecButton(
                    title: AppTexts.next,
                    onTap: () {
                      signUpController.checkRegister4();
                      //Navigator.pushNamed(context, otpSignInScreenRoute);
                    })
              ],
            ),
          ),
        ),
      ),
    );
  }
}
