import 'package:flutter/material.dart';
 

import '../../constants/app_colors.dart';
 

class BasicTextField extends StatelessWidget {
  const BasicTextField({
    Key? key,
    required this.hint,
    required this.label,
    required this.controller,
    required this.validator
  }) : super(key: key);
  final String label;
  final String hint;
  final TextEditingController controller;
 final String? Function(String?) validator;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      validator: validator,
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
           hintStyle: TextStyle(color: AppColors.grey200),
          hintText: hint),
    );
  }
}
