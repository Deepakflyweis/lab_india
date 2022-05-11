import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lab_india/constants/app_colors.dart';
import 'package:sizer/sizer.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import '../../../common_widgets/app_bars/auto_leading_appbar.dart';
import '../../../common_widgets/buttons/rec_button.dart';
import '../../../constants/app_texts.dart';
import '../../../routes/routing_constant.dart';
import '../../payment_model/card_payment_page.dart';

class GoldenPay extends StatelessWidget {
  const GoldenPay({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AutoLeadingAppBar(title: AppTexts.Subscriptions),
      body: SafeArea(
        child: Container(
          width: 100.w,

          color: Colors.white,
          child: Column(
            children: [
              SizedBox(
                height: 2.w,
              ),

              // PhysicalModel(
              //   elevation: 1.0,
              //   shape: BoxShape.rectangle,
              //   shadowColor: Colors.black,
              //   color: Colors.white,
              //   child: Container(
              //     height: 70.0,
              //     color: Colors.white,
              //     child: Padding(
              //       padding:  EdgeInsets.symmetric(horizontal: 2.w),
              //       child: Row(
              //         children: [
              //
              //           Icon(
              //             Icons.arrow_back_ios_rounded,
              //             color: Colors.black,
              //             size: 22.0,
              //           ),
              //           SizedBox(
              //             width: 1.w,
              //           ),
              //           Text(AppTexts.Subscriptions,style: TextStyle(
              //               fontSize: 11.sp,
              //               color: Colors.black,
              //               fontWeight: FontWeight.bold
              //           ),)
              //
              //         ],
              //       ),
              //     ),
              //   ),
              // ),
              SizedBox(
                height: 1.h,
              ),

              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 3.w),
                  child: Text(AppTexts.Gold+""+AppTexts.Package,style: TextStyle(
                    color: Color(0xffE8AB00),
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.w900,
                    fontSize: 35,
                  ),),
                ),
              ),

              Padding(
                padding:  EdgeInsets.symmetric(horizontal: 3.w,vertical: 2.h),
                child: Row(
                  children: [
                    Container(
                      height: 16.h,
                      width: 30.w,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Color(0xffFFDE80),
                      ),
                      child: Center(child: Image.asset('assets/images/gold_subscription.png')),
                    ),
                    SizedBox(
                      width: 2.w,
                    ),

                    Container(
                      // color: Colors.black,
                      height: 14.h,
                      width: 62.w,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Text('princeflyweis@gmail.com',
                                style: TextStyle(
                                  fontSize: 15,
                                  color: AppColors.black,
                                ),
                              )),
                          SizedBox(
                            height: 1.h,
                          ),

                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(AppTexts.Start,
                                    style: TextStyle(
                                      color: AppColors.grey400,
                                      fontSize: 15,
                                    ),
                                  ),
                                  Text(AppTexts.Expiry,
                                    style: TextStyle(
                                      color: AppColors.grey400,
                                      fontSize: 15,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 1.h,
                                  ),
                                  Text(AppTexts.Paid,style: TextStyle(
                                    fontSize: 15,

                                    color: Colors.green,
                                  ),),
                                ],
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('1 January 2022',
                                    style: TextStyle(
                                        fontSize: 15,
                                        color: AppColors.black
                                    ),

                                  ),
                                  Text('6 January 2022',
                                    style: TextStyle(
                                        fontSize: 15,
                                        color: AppColors.black
                                    ),


                                  ),
                                  SizedBox(
                                    height: 3.h,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),


                  ],
                ),
              ),

              Padding(
                padding: EdgeInsets.symmetric(horizontal: 3.w,vertical: 2.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          child: Row(
                            children: [
                              Text('3.9',
                                style: TextStyle(
                                  fontSize: 22,
                                  color: AppColors.primaryColor,
                                ),

                              ),

                              RatingBar.builder(
                                itemSize: 20,
                                initialRating: 2,
                                minRating: 1,
                                direction: Axis.horizontal,
                                allowHalfRating: true,
                                itemCount: 5,
                                itemPadding: EdgeInsets.symmetric(horizontal: 0.0),
                                itemBuilder: (context, _) => Icon(
                                  Icons.star,size: 10,
                                  color: Colors.amber,
                                ),
                                onRatingUpdate: (rating) {
                                  print(rating);
                                },
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 1.h,
                        ),

                        Row(
                          children: [
                            Text('4.1K',
                              style: TextStyle(
                                fontSize: 8.sp,
                                color: AppColors.black,
                              ),
                            ),
                            Text(AppTexts. Rating ,
                              style: TextStyle(
                                fontSize: 8.sp,
                                color: AppColors.grey400,
                              ),
                            ),

                          ],
                        ),

                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          child: Row(
                            children: [
                              Text(AppTexts.No,
                                style: TextStyle(
                                  fontSize: 13.sp,
                                  color: AppColors.grey400,
                                ),

                              ),
                              Text('3',
                                style: TextStyle(
                                  fontSize: 15,

                                ),

                              ),


                            ],
                          ),
                        ),
                        SizedBox(
                          height: 1.h,
                        ),

                        Row(
                          children: [
                            Text(AppTexts.Entertainment,
                              style: TextStyle(
                                fontSize: 8.sp,
                                color: AppColors.grey400,
                              ),
                            ),

                          ],
                        ),

                      ],
                    ),
                  ],
                ),
              ),


              SizedBox(
                height: 1.h,
              ),



              Padding(
                padding:  EdgeInsets.symmetric(horizontal: 2.w),
                child: Container(
                  height: 20.h,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,

                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(AppTexts.Membership,style: TextStyle(
                            color: AppColors.black,
                            //fontStyle: FontStyle.italic,
                            fontWeight: FontWeight.w400,
                            fontSize: 15,
                          ),),
                          Text(AppTexts.Ongoing+""+AppTexts.Plan,
                            style: TextStyle(
                              fontSize: 18,
                              color: AppColors.grey400,
                            ),
                          ),

                          Text(AppTexts.Yearly,
                            style: TextStyle(
                              fontSize: 18,
                              color: AppColors.grey400,
                            ),
                          ),

                          Text(AppTexts.Next+""+AppTexts.Billing,
                            style: TextStyle(
                              fontSize: 18,
                              color: AppColors.grey400,
                            ),
                          ),
                        ],
                      ),

                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text('2 Screen + HD',
                            style: TextStyle(
                              fontSize: 18,
                              color: AppColors.black,
                            ),
                          ),


                          Text('Rs 416/month',
                            style: TextStyle(
                              fontSize: 18,
                              color: AppColors.black,
                            ),
                          ),

                          Text('1/7/2022',
                            style: TextStyle(
                              fontSize: 18,
                              color: AppColors.black,
                            ),
                          ),

                        ],
                      ),

                    ],
                  ),
                ),
              ),

              Spacer(),

              RecButton(
                  title: AppTexts.PAY,
                  //title: AppTexts.getStarted,
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> PaymentPage()));
                    //Navigator.pushNamed(context, signinOrSignUpScreenRoute);
                  }),

              Spacer(),


            ],
          ),
        ),
      ),
    );
  }
}
