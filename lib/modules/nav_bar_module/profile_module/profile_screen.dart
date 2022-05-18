import 'package:flutter/material.dart';
import 'package:lab_india/common_widgets/app_bars/center_title_appbar.dart';
import 'package:lab_india/common_widgets/buttons/rec_button.dart';
import 'package:lab_india/common_widgets/text_feilds/basic_text_feild.dart';
import 'package:lab_india/constants/app_colors.dart';
import 'package:lab_india/constants/app_text_styles.dart';
import 'package:lab_india/constants/app_texts.dart';
import 'package:lab_india/routes/routing_constant.dart';
import 'package:sizer/sizer.dart';

class ProfileScreen extends StatelessWidget {
  final name = TextEditingController();
  final mob = TextEditingController();
  final email = TextEditingController();

  ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CenterTitleAppBar(
        title: AppTexts.profileCaps,
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 5.w),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(vertical: 2.h),
                child: Stack(
                  children: [
                    CircleAvatar(
                      radius: 15.w,
                      backgroundColor: Colors.transparent,
                      child:
                          Image.asset('assets/images/profile_placeholder.png'),
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
              ),
              BasicTextField(
                validator: (val) {
                  if (val == null) {
                    return "Enter Data";
                  }
                },
                hint: AppTexts.firstNameHint + " " + AppTexts.lastNameHint,
                label: AppTexts.fullName,
                controller: name,
              ),
              BasicTextField(
                validator: (val) {
                  if (val == null) {
                    return "Enter Data";
                  }
                },
                hint: AppTexts.mobileNumberHint,
                label: AppTexts.mobileNumber,
                controller: mob,
              ),
              BasicTextField(
                  hint: AppTexts.emailHint,
                  validator: (val) {
                    if (val == null) {
                      return "Enter Data";
                    }
                  },
                  label: AppTexts.email,
                  controller: email),
              SizedBox(
                height: 5.h,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  AppTexts.addNewCard,
                  style: AppTextStyles.black12,
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 2.h),
                  child: InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, addNewCardsScreenRoute);
                    },
                    child: Container(
                      height: 17.h,
                      width: 65.w,
                      decoration: BoxDecoration(
                          color: AppColors.primaryColor,
                          borderRadius: BorderRadius.circular(6.sp)),
                      child: Center(
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.transparent.withAlpha(12),
                              shape: BoxShape.circle),
                          child: Padding(
                            padding: EdgeInsets.all(10.sp),
                            child: Icon(
                              Icons.add,
                              size: 25.sp,
                              color: AppColors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 2.h,
              ),
              RecButton(title: AppTexts.save, onTap: () {})
            ],
          ),
        ),
      ),
    );
  }
}
