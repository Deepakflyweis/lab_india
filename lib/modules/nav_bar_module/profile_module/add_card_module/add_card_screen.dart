import 'package:flutter/material.dart';
import 'package:lab_india/common_widgets/app_bars/auto_leading_appbar.dart';
import 'package:lab_india/common_widgets/buttons/rec_button.dart';
import 'package:lab_india/common_widgets/text_feilds/basic_filled_text_field.dart';
import 'package:lab_india/common_widgets/text_feilds/custom_filled_text_feild.dart';
import 'package:lab_india/common_widgets/text_feilds/primary_color_border_textfield.dart';
import 'package:lab_india/constants/app_colors.dart';
import 'package:lab_india/constants/app_text_styles.dart';
import 'package:lab_india/constants/app_texts.dart';
import 'package:sizer/sizer.dart';

class AddCardScreen extends StatelessWidget {
  const AddCardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AutoLeadingAppBar(title: AppTexts.addNewCard),
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 5.w,
        ),
        child: Column(
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 3.h),
                child: Text(
                  AppTexts.nameOfCardHolder,
                  style: AppTextStyles.black12,
                ),
              ),
            ),
            PrimaryColorBorderTextFeild(hint: AppTexts.firstNameHint),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 3.h),
                child: Text(
                  AppTexts.cardNumber,
                  style: AppTextStyles.black12,
                ),
              ),
            ),
            CustomFilledTextFeild(hint: "123456789111"),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: 40.w,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 3.h),
                        child: Text(
                          AppTexts.expiration,
                          style: AppTextStyles.black12,
                        ),
                      ),
                      FilledTextFeild(hint: '02/25')
                    ],
                  ),
                ),
                SizedBox(
                  width: 40.w,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 3.h),
                        child: Text(
                          AppTexts.cvv,
                          style: AppTextStyles.black12,
                        ),
                      ),
                      FilledTextFeild(hint: '231')
                    ],
                  ),
                )
              ],
            ),
            SizedBox(
              height: 5.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: 40.w,
                  child: RecButton(title: AppTexts.add, onTap: () {}),
                ),
                Container(
                  height: 7.h,
                  width: 40.w,
                  decoration: BoxDecoration(
                      border:
                          Border.all(color: AppColors.primaryColor, width: 3),
                      borderRadius: BorderRadius.circular(6.sp)),
                  child: Center(
                    child: Text(
                      AppTexts.cancel,
                      style: AppTextStyles.black15,
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
