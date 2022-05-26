import 'package:flutter/material.dart';
import 'package:get/utils.dart';
import 'package:lab_india/api_providers/api_client.dart';
import 'package:lab_india/api_providers/provider/user_endpoint.dart';
import 'package:lab_india/common_widgets/buttons/rec_button.dart';
import 'package:lab_india/common_widgets/drop_downs/custom_drop_down.dart';
import 'package:lab_india/common_widgets/text_feilds/basic_text_feild.dart';
import 'package:lab_india/controllers/sign_up_controller.dart';
import 'package:lab_india/routes/routing_constant.dart';
import 'package:sizer/sizer.dart';

import '../../common_widgets/app_bars/center_title_appbar.dart';
import '../../constants/app_colors.dart';
import '../../constants/app_enums.dart';
import '../../constants/app_text_styles.dart';
import '../../constants/app_texts.dart';
import 'package:get/get.dart';

class SignUp2Screen extends StatelessWidget {
  SignUp2Screen({Key? key}) : super(key: key);
  
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
          key: signUpController.signup2FormKey,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 5.w),
            child: Column(
              children: [
                Spacer(),
                CustomDropDown(
                  items: ['1', '2', '3']
                      .map((e) => DropdownMenuItem(value: e, child: Text(e)))
                      .toList(),
                  onChanged: (val) {},
                  label: AppTexts.numberOfChildren,
                ),
                BasicTextField(
                    controller: signUpController.childname,
                    validator: (val) {
                      if (val == "") {
                        return "Enter child name";
                      }
                    },
                    hint: AppTexts.childNameHint,
                    label: AppTexts.childName),
                BasicTextField(
                    controller: signUpController.childage,
                    validator: (val) {
                      if (val == "") {
                        return "Enter child age";
                      }
                    },
                    hint: AppTexts.childAgeHint,
                    label: AppTexts.childAge),
                CustomDropDown(
                  items: Gender.values
                      .map((e) =>
                          DropdownMenuItem(value: e, child: Text(e.name)))
                      .toList(),
                  onChanged: (val) {},
                  label: AppTexts.childGender,
                ),
                Spacer(
                  flex: 2,
                ),
                RecButton(
                    title: AppTexts.next,
                    onTap: () {
                      if (signUpController.signup2FormKey.currentState!
                          .validate()) {
                        Get.toNamed(signUp3ScreenRoute);
                      }
                      // }
                    })
              ],
            ),
          ),
        ),
      ),
    );
  }
}
