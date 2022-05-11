import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lab_india/api_providers/api_client.dart';
import 'package:lab_india/api_providers/provider/user_endpoint.dart';
import 'package:lab_india/common_widgets/buttons/rec_button.dart';
import 'package:lab_india/common_widgets/text_feilds/basic_text_feild.dart';
import 'package:lab_india/controllers/sign_up_controller.dart';
import 'package:lab_india/routes/routing_constant.dart';
import 'package:sizer/sizer.dart';

import '../../common_widgets/app_bars/center_title_appbar.dart';
import '../../constants/app_colors.dart';
import '../../constants/app_text_styles.dart';
import '../../constants/app_texts.dart';

class SignUp1Screen extends StatelessWidget {
    SignUp1Screen({Key? key}) : super(key: key);

    SignUpController signUpController = Get.put(SignUpController());

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
          key: signUpController.signup1FormKey,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 5.w),
            child: Column(
              children: [
                const Spacer(),
                Stack(
                  children: [
                    CircleAvatar(
                      radius: 15.w,
                      backgroundColor: Colors.transparent,
                      child: Image.asset('assets/images/profile_placeholder.png'),
                    ),
                    Positioned(
                        right: 0,
                        child: Icon(
                          Icons.add_circle,
                          size: 25.sp,
                          color: AppColors.primaryColor,
                        ))
                  ],
                ),
                Spacer(),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    AppTexts.parent,
                    style: AppTextStyles.grey12,
                  ),
                ),
                Form(
                  key: signUpController.fnameFormKey,
                  child: BasicTextField(
                      hint: AppTexts.firstNameHint, label: AppTexts.firstName, controller: signUpController.fname,),
                ),
                Form(
                  key: signUpController.lnameFormKey,
                  child: BasicTextField(
                      controller: signUpController.lname,
                      hint: AppTexts.lastNameHint, label: AppTexts.lastName),
                ),
                Form(
                  key: signUpController.relationFormKey ,
                  child: BasicTextField(
                      controller: signUpController.reltn,
                      hint: AppTexts.relationshipHint,
                      label: AppTexts.relationship),
                ),
                Form(
                  key: signUpController.percntageFormKey,
                  child: BasicTextField(
                      hint: AppTexts.percentageHint, label: AppTexts.percentage,
                    controller: signUpController.percnt,),
                ),
                  Spacer(
                  flex: 2,
                ),
                RecButton(
                    title: AppTexts.next,
                    onTap: () {
                      signUpController.checkRegister1();
                      Navigator.pushNamed(context, signUp2ScreenRoute);

                    })
              ],
            ),
          ),
        ),
      ),
    );
  }


}
