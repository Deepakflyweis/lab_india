import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lab_india/constants/app_colors.dart';
import 'package:sizer/sizer.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import '../../../common_widgets/buttons/rec_button.dart';
import '../../../constants/app_texts.dart';
import '../../../routes/routing_constant.dart';
import '../../common_widgets/app_bars/auto_leading_appbar.dart';
import '../../common_widgets/text_feilds/basic_filled_text_field.dart';
import '../../common_widgets/text_feilds/custom_filled_text_feild.dart';
import '../../common_widgets/text_feilds/primary_color_border_textfield.dart';
import '../../constants/app_text_styles.dart';
import '../nav_bar_module/home_module/story_details_module/story_details_screen.dart';
import '../subscriptions_module_screen/subscription_page3/subscriptions_page3.dart';

class PaymentPage extends StatelessWidget {
  const PaymentPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AutoLeadingAppBar(title: AppTexts.Subscriptions),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            width: 100.w,
            color: Colors.white,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 3.w,
                ),



                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 3.w),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(AppTexts.Current+""+AppTexts.Credit+""+AppTexts.card,
                      style: TextStyle(
                        fontSize: 17,
                        color: AppColors.black,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 1.h,
                ),

                Padding(
                  padding:  EdgeInsets.symmetric(horizontal: 3.w),
                  child: PhysicalModel(
                    elevation: 5.0,
                    //shape: BoxShape.rectangle,

                      borderRadius: BorderRadius.circular(10),

                    shadowColor: Colors.greenAccent,
                    color: Colors.white,
                    child: Container(
                      height: 145,
                      width: 246,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: AppColors.primaryColor,
                      ),

                      child: Padding(
                        padding:  EdgeInsets.symmetric(horizontal: 2.w,vertical: 3.h),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [


                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 3.w,vertical: 0.h),
                              child: Image.asset('assets/images/cc-visa.png',height: 5.h,width: 6.w,),
                            ),
                            SizedBox(
                              width: 12.h,
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 3.w,vertical: 2.h),
                              child: Text('.... .... .... 5434',style: TextStyle(
                                  fontSize: 11.sp,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold
                              ),),
                            )

                          ],
                        ),
                      ),
                    ),
                  ),
                ),

                SizedBox(
                  height: 2.h,
                ),


                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 3.w),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(AppTexts.Add+""+AppTexts.New+""+AppTexts.Credit+""+AppTexts.card,
                      style: TextStyle(
                        fontSize: 17,
                        color: AppColors.black,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 1.h,
                ),

                Padding(
                  padding:  EdgeInsets.symmetric(horizontal: 3.w),
                  child: PhysicalModel(
                    elevation: 5.0,
                    //shape: BoxShape.rectangle,

                    borderRadius: BorderRadius.circular(10),

                    shadowColor: Colors.greenAccent,
                    color: Colors.white,
                    child: Container(
                      height: 145,
                      width: 246,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: AppColors.primaryColor,
                      ),

                      child: Center(
                          child: Icon(Icons.add_circle,color: Colors.white,size: 35,),
                          //Image.asset('assets/images/cc-visa.png',height: 5.h,width: 6.w,)
                         ),
                    ),
                  ),
                ),


                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.symmetric(vertical: 2.h,horizontal: 3.w),
                    child: Text(
                      AppTexts.nameOfCardHolder,
                      style: AppTextStyles.black12,
                    ),
                  ),
                ),
                Padding(
                  padding:  EdgeInsets.symmetric(horizontal: 3.w),
                  child: PrimaryColorBorderTextFeild(hint: AppTexts.firstNameHint),
                ),
                Padding(
                  padding:  EdgeInsets.symmetric(horizontal: 3.w),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.symmetric(vertical: 1.h,),
                      child: Text(
                        AppTexts.cardNumber,
                        style: AppTextStyles.black12,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding:  EdgeInsets.symmetric(horizontal: 3.w),
                  child: CustomFilledTextFeild(hint: "123456789111"),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: 40.w,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(vertical: 1.h,horizontal: 3.w),
                            child: Text(
                              AppTexts.expiration,
                              style: AppTextStyles.black12,
                            ),
                          ),
                          Padding(
                            padding:  EdgeInsets.symmetric(horizontal: 3.w),
                            child: FilledTextFeild(hint: '02/25'),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 40.w,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(vertical: 1.h,horizontal: 3.w),
                            child: Text(
                              AppTexts.cvv,
                              style: AppTextStyles.black12,
                            ),
                          ),
                          Padding(
                            padding:  EdgeInsets.symmetric(horizontal: 3.w),
                            child: FilledTextFeild(hint: '231'),
                          )
                        ],
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 1.h,
                ),


                Padding(
                  padding:  EdgeInsets.symmetric(horizontal: 3.w,vertical: 0.5.h),
                  child: Container(
                    height: 7.h,
                    width: 97.w,
                    decoration: BoxDecoration(
                        border:
                        Border.all(color: AppColors.primaryColor, width: 1),
                        borderRadius: BorderRadius.circular(6.sp)),
                    child: Padding(
                      padding:  EdgeInsets.symmetric(horizontal: 3.w),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image.asset('assets/images/paytm (2).png'),
                          Icon(Icons.arrow_forward_ios,size: 20,color: AppColors.primaryColor,)
                        ],
                      ),
                    ),


                  ),
                ),

                Padding(
                  padding:  EdgeInsets.symmetric(horizontal: 3.w,vertical: 0.5.h),
                  child: Container(
                    height: 7.h,
                    width: 97.w,
                    decoration: BoxDecoration(
                        border:
                        Border.all(color: AppColors.primaryColor, width: 1),
                        borderRadius: BorderRadius.circular(6.sp)),
                    child: Padding(
                      padding:  EdgeInsets.symmetric(horizontal: 3.w),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image.asset('assets/images/gpay (2).png',height: 50,width: 50,),
                          Icon(Icons.arrow_forward_ios,size: 20,color: AppColors.primaryColor)
                        ],
                      ),
                    ),


                  ),
                ),


                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: 45.w,
                      child: RecButton(title:'Payment', onTap: () {
                        Navigator.push(
                          //GoldenPay
                          //StoryDetailsScreen
                            context, MaterialPageRoute(builder: (context)=> StoryDetailsScreen()));
                      }),
                    ),
                    Padding(
                      padding:  EdgeInsets.symmetric(horizontal: 3.w),
                      child: Container(
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
                      ),
                    )
                  ],
                ),




              ],
            ),
          ),
        ),
      ),
    );
  }
}
