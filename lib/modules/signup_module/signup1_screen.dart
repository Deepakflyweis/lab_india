import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lab_india/common_widgets/buttons/rec_button.dart';
import 'package:lab_india/common_widgets/text_feilds/basic_text_feild.dart';
import 'package:lab_india/controllers/sign_up_controller.dart';
import 'package:lab_india/routes/routing_constant.dart';
import 'package:sizer/sizer.dart';

import '../../common_widgets/app_bars/center_title_appbar.dart';
 
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
                // GestureDetector(
                //     onTap: () => signUpController.showPicker(context),
                //     child: Stack(
                //       fit: StackFit.loose,
                //       children: [
                //         ClipOval(
                //           child: Obx(
                //             () => signUpController.image.value.path == ""
                //                 ? Padding(
                //                     padding: const EdgeInsets.all(8.0),
                //                     child: Icon(Icons.image,size: 50,),
                //                   )
                //                 : Image.file(
                //                     signUpController.image.value,
                //                     width: 25.w,
                //                     filterQuality: FilterQuality.high,
                //                     fit: BoxFit.cover,
                //                   ),
                //           ),
                //         ),
                //         Positioned(
                //             right: 0,
                //             child: Icon(
                //               Icons.add_circle,
                //               size: 25.sp,
                //               color: AppColors.primaryColor,
                //             )),
                //       ],
                //     )),
                // Spacer(),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    AppTexts.parent,
                    style: AppTextStyles.grey12,
                  ),
                ),
                BasicTextField(
                  hint: AppTexts.firstNameHint,
                  label: AppTexts.firstName,
                  controller: signUpController.fname,
                  validator: (val) {
                    if (val == "") {
                      return "Enter First name";
                    }
                  },
                ),
                BasicTextField(
                    controller: signUpController.lname,
                    hint: AppTexts.lastNameHint,
                    validator: (val) {
                      if (val == "") {
                        return "Enter Last name";
                      }
                    },
                    label: AppTexts.lastName),
                BasicTextField(
                    controller: signUpController.reltn,
                    hint: AppTexts.relationshipHint,
                    validator: (val) {
                      if (val == "") {
                        return "Enter Relationship";
                      }
                    },
                    label: AppTexts.relationship),
                BasicTextField(
                  hint: AppTexts.percentageHint,
                  validator: (val) {
                    if (val == "") {
                      return "Enter Percentage";
                    }
                  },
                  label: AppTexts.percentage,
                  controller: signUpController.percnt,
                ),
                Spacer(
                  flex: 2,
                ),
                RecButton(
                    title: AppTexts.next,
                    onTap: () {
                      // signUpController.checkRegister1();
                      if (signUpController.signup1FormKey.currentState!
                          .validate()) {
                        Get.toNamed(signUp2ScreenRoute);
                      }
                      //Navigator.pushNamed(context, signUp2ScreenRoute);
                    })
              ],
            ),
          ),
        ),
      ),
    );
  }
}
