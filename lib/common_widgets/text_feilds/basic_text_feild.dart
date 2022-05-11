import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../constants/app_colors.dart';
import '../../constants/app_texts.dart';

class BasicTextField extends StatelessWidget {
  const BasicTextField({
    Key? key,
    required this.hint,
    required this.label,
    required this.controller,

  }) : super(key: key);
  final String label;
  final String hint;
  final TextEditingController controller;
  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
          floatingLabelBehavior: FloatingLabelBehavior.always,
          enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: AppColors.grey400)),
          focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: AppColors.grey400)),
          border: UnderlineInputBorder(
              borderSide: BorderSide(color: AppColors.grey400)),
          labelText: label,
          labelStyle: TextStyle(color: AppColors.grey400),
          hintText: hint),
    );
  }
}
