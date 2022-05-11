import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../constants/app_colors.dart';

class OtpInput extends StatelessWidget {
  const OtpInput({Key? key, required this.controller, required this.autoFocus})
      : super(key: key);
  final bool autoFocus;
  final TextEditingController controller;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        height: 12.w,
        width: 12.w,
        child: TextField(
          decoration: InputDecoration(
            counterText: '',
            //focusColor: Colors.black,
            border: OutlineInputBorder(
              borderSide: BorderSide(
                color: AppColors.primaryColor,
              ),
              borderRadius: BorderRadius.circular(6.sp),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: AppColors.primaryColor,
              ),
              borderRadius: BorderRadius.circular(6.sp),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: AppColors.primaryColor,
              ),
              borderRadius: BorderRadius.circular(6.sp),
            ),
          ),
          autofocus: autoFocus,
          textAlign: TextAlign.center,
          keyboardType: TextInputType.number,
          controller: controller,
          maxLength: 1,
          onChanged: (value) {
            if (value.length == 1) {
              FocusScope.of(context).nextFocus();
            }
          },
        ),
      ),
    );
  }
}
