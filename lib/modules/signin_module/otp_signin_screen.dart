import 'package:flutter/material.dart';
import 'package:lab_india/api_providers/api_client.dart';
import 'package:lab_india/api_providers/provider/user_endpoint.dart';
import 'package:lab_india/common_widgets/buttons/rec_button.dart';
import 'package:lab_india/common_widgets/text_feilds/otp_Input.dart';
import 'package:sizer/sizer.dart';

import '../../common_widgets/app_bars/center_title_appbar.dart';
import '../../constants/app_colors.dart';
import '../../constants/app_text_styles.dart';
import '../../constants/app_texts.dart';
import '../../routes/routing_constant.dart';

class OtpLoginScreen extends StatelessWidget {
  OtpLoginScreen({Key? key}) : super(key: key);
  List<TextEditingController> otpList = [
    TextEditingController(),
    TextEditingController(),
    TextEditingController(),
    TextEditingController(),
  ];
  final _formKey = GlobalKey<FormState>();
  String verifyCode = "";
  String email = "";


  // SignUpController _signUpController = Get.put(SignUpController());

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScopeNode currentFocus = FocusScope.of(context);
        if (!currentFocus.hasPrimaryFocus) {
          currentFocus.unfocus();
        }
      },
      child: Scaffold(
        appBar: const CenterTitleAppBar(
          title: '',
        ),
        body: Form(
          key: _formKey,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 5.w),
            child: Column(
              children: [
                Spacer(),
                Text(
                  AppTexts.weSendYouOtpOn,
                  style: AppTextStyles.grey12,
                ),
                Padding(
                  padding: EdgeInsets.all(6.sp),
                  child: Text(
                    AppTexts.enterOtp,
                    style: AppTextStyles.black15,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    for (var item in otpList)
                      OtpInput(controller: item, autoFocus: false)
                  ],
                ),
                SizedBox(
                  height: 5.h,
                ),
                RecButton(
                    title: AppTexts.confirm,
                    onTap: () {
                      _verifyCode();

                      // Navigator.pushNamed(context, bottomNavBarScreenRoute);
                      // Navigator.pushNamedAndRemoveUntil(
                      //     context, bottomNavBarScreenRoute, (route) => false);
                    }),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Text.rich(
                          TextSpan(
                            children: [
                              TextSpan(
                                  text: AppTexts.resend + ' ',
                                  style: AppTextStyles.black12),
                              TextSpan(
                                  text: AppTexts.otp,
                                  style: AppTextStyles.primary12)
                            ],
                          ),
                        ),
                        Container(
                          height: 1,
                          width: 75.sp,
                          color: AppColors.primaryColor,
                        )
                      ],
                    ),
                    Text(
                      AppTexts.min,
                      style: AppTextStyles.grey12,
                    )
                  ],
                ),
                Spacer()
              ],
            ),
          ),
        ),
      ),
    );
  }

   void _verifyCode() async{
     if(_formKey.currentState!.validate()){
      return;
     }
    _formKey.currentState!.save();

       Client client = Client();
       UserEndPoint userEndPoint = UserEndPoint(client: client.init());
        userEndPoint.verifyOTP(email, verifyCode );
  }
}
