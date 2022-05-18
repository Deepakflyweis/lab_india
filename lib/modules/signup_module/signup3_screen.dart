import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lab_india/common_widgets/buttons/rec_button.dart';
import 'package:lab_india/common_widgets/drop_downs/custom_drop_down.dart';
import 'package:lab_india/common_widgets/text_feilds/basic_text_feild.dart';
import 'package:lab_india/controllers/sign_up_controller.dart';
import 'package:lab_india/routes/routing_constant.dart';
import 'package:sizer/sizer.dart';
import '../../common_widgets/app_bars/center_title_appbar.dart';
import '../../constants/app_texts.dart';

class SignUp3Screen extends StatelessWidget {
  SignUp3Screen({Key? key}) : super(key: key);

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
          key: signUpController.signup3FormKey,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 5.w),
            child: Column(
              children: [
                Spacer(),
                CustomDropDown(
                  items: ['India', 'America', 'China']
                      .map((e) => DropdownMenuItem(value: e, child: Text(e)))
                      .toList(),
                  onChanged: (val) {},
                  label: AppTexts.country,
                ),
                BasicTextField(
                    controller: signUpController.city,
                    validator: (val) {
                      if (val == null) {
                        return "Enter Data";
                      }
                    },
                    hint: AppTexts.cityHint,
                    label: AppTexts.city),
                BasicTextField(
                  controller: signUpController.state,
                  hint: AppTexts.stateHint,
                  label: AppTexts.state,
                  validator: (val) {
                    if (val == null) {
                      return "Enter Data";
                    }
                  },
                ),
                BasicTextField(
                    controller: signUpController.pincode,
                    validator: (val) {
                      if (val == null) {
                        return "Enter Data";
                      }
                    },
                    hint: AppTexts.pincodeHint,
                    label: AppTexts.pincode),
                BasicTextField(
                    controller: signUpController.street1,
                    validator: (val) {
                      if (val == null) {
                        return "Enter Data";
                      }
                    },
                    hint: AppTexts.street1Hint,
                    label: AppTexts.street1),
                BasicTextField(
                    controller: signUpController.street2,
                    validator: (val) {
                      if (val == null) {
                        return "Enter Data";
                      }
                    },
                    hint: AppTexts.street2Hint,
                    label: AppTexts.street2),
                Spacer(
                  flex: 2,
                ),
                RecButton(
                    title: AppTexts.next,
                    onTap: () {
                      if (signUpController.signup3FormKey.currentState!
                          .validate()) {
                        Get.toNamed(signUp4ScreenRoute);
                      }
//                      Navigator.pushNamed(context, signUp4ScreenRoute);
                    })
              ],
            ),
          ),
        ),
      ),
    );
  }
}
