import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../constants/app_colors.dart';
import '../../constants/app_texts.dart';

class CustomFilledTextFeild extends StatelessWidget {
  const CustomFilledTextFeild({
    Key? key,
    required this.hint,
    //required this.label,
  }) : super(key: key);
  //final String label;
  final String hint;
  @override
  Widget build(BuildContext context) {
    return PhysicalModel(
      borderRadius: BorderRadius.circular(12.sp),
      color: AppColors.primaryColor,
      elevation: 6,
      child: TextField(
        decoration: InputDecoration(
            floatingLabelBehavior: FloatingLabelBehavior.always,
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12.sp),
                borderSide:
                    BorderSide(width: 3, color: AppColors.primaryColor)),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12.sp),
                borderSide:
                    BorderSide(width: 3, color: AppColors.primaryColor)),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12.sp),
                borderSide:
                    BorderSide(width: 3, color: AppColors.primaryColor)),
            hintStyle: TextStyle(color: AppColors.white),
            hintText: hint,
            suffixIcon: Padding(
              padding: EdgeInsets.fromLTRB(0, 4.sp, 8.sp, 4.sp),
              child: Container(
                decoration: BoxDecoration(
                  color: AppColors.white,
                  borderRadius: BorderRadius.circular(6.sp),
                ),
                child: Stack(
                  children: [
                    Container(
                      height: 5.h,
                      width: 25.w,
                      decoration: BoxDecoration(
                          color: AppColors.primaryColor.withAlpha(100),
                          borderRadius: BorderRadius.circular(6.sp)),
                    ),
                    Positioned(
                      right: 5.w,
                      child: Container(
                        height: 5.h,
                        width: 25.w,
                        decoration: BoxDecoration(
                            color: AppColors.primaryColor.withAlpha(40),
                            borderRadius: BorderRadius.circular(6.sp)),
                      ),
                    ),
                    Positioned(
                      right: 10.w,
                      child: Container(
                        height: 5.h,
                        width: 25.w,
                        decoration: BoxDecoration(
                            color: AppColors.primaryColor.withAlpha(40),
                            borderRadius: BorderRadius.circular(6.sp)),
                      ),
                    )
                  ],
                ),
              ),
            )),
      ),
    );
  }
}
