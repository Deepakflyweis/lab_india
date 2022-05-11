import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get.dart';
import 'package:lab_india/constants/app_colors.dart';
import 'package:lab_india/controllers/rating_controller.dart';
import 'package:sizer/sizer.dart';

class ReviewTile extends GetView<ViewRatingController> {
  // RatingController ratingController = Get.put(RatingController());
  ViewRatingController viewRatingController = Get.put(ViewRatingController());

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(4.sp),
      child: InkWell(
        onTap: (){
          showMyAlertDialog(context);
        },
        child: Container(
            height: 8.h,
            decoration: BoxDecoration(
                border: Border.all(color: AppColors.primaryColor, width: 3),
                borderRadius: BorderRadius.circular(6.sp)),
            child: Center(
                child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                ClipOval(
                  child: Image.network(
                    '',
                    width: 20.w,
                    fit: BoxFit.cover,
                    errorBuilder: ((context, error, stackTrace) => Icon(
                          Icons.account_circle_outlined,
                          size: 25.sp,
                        )),
                  ),
                ),
                  viewRatingController.obx(
                          (viewratingstate) => SizedBox(
                  width: 60.w,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                    Row(
                      children: [
                        Expanded(
                          child: Text(viewRatingController.firstname.toString(),
                          style: TextStyle(
                            color: AppColors.black,
                            fontSize: 12,
                          ),
                          ),
                        ),

                        RatingBar.builder(
                          itemSize: 15,
                          initialRating: 2,
                          minRating: 1,
                          direction: Axis.horizontal,
                          allowHalfRating: true,
                          itemCount: 5,
                          itemPadding: EdgeInsets.symmetric(horizontal: 0.0),
                          itemBuilder: (context, _) => const Icon(
                            Icons.star,size: 10,
                            color: Colors.amber,
                          ),
                          onRatingUpdate: (rating) {
                              viewRatingController.rating;
                            print(rating);
                          },
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 0.5.h,
                    ),

                    Text(viewRatingController.review.toString(),
                      maxLines: 2,
                      style: TextStyle(
                        color: AppColors.grey400,
                        fontSize: 10,

                      ),

                    ),

                    Text('Lorem Ipsum is the lorem ipsum',
                      style: TextStyle(
                        color: AppColors.grey400,
                        fontSize: 10,

                      ),

                    ),
                  ]),
                )
            )],
            )),
          ),
        ),
      );
  }
}

showMyAlertDialog(BuildContext context) {

  // Create SimpleDialog
  SimpleDialog dialog = SimpleDialog(
    title: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            ClipOval(
              child: Image.network(
                '',
                width: 20.w,
                fit: BoxFit.cover,
                errorBuilder: ((context, error, stackTrace) => Icon(
                  Icons.account_circle_outlined,
                  size: 25.sp,
                )),
              ),
            ),
            Text('',
              style: TextStyle(
                color: AppColors.black,
                fontSize: 15,

              ),
            ),
          ],
        ),

        Column(
          children: [
            RatingBar.builder(
              itemSize: 15,
              initialRating: 2,
              minRating: 1,
              direction: Axis.horizontal,
              allowHalfRating: true,
              itemCount: 5,
              itemPadding: EdgeInsets.symmetric(horizontal: 0.0),
              itemBuilder: (context, _) => const Icon(
                Icons.star,size: 10,
                color: Colors.amber,
              ),
              onRatingUpdate: (rating) {
                print(rating);
              },
            ),
            Text('01/04/2022',
              style: TextStyle(
                color: AppColors.grey400,
                fontSize: 10,

              ),
            ),

          ],
        ),
      ],
    ),
    children: <Widget>[

      SizedBox(
        height: 3.h,
      ),
      Padding(
        padding: EdgeInsets.symmetric(horizontal: 4.w),
        child: Text('What is Lorem Ipsum?'
            '\nLorem Ipsum is simply dummy text of the '
            'printing and typesetting industry. Lorem Ipsum'
            ' has been the industry\'s '
            'standard dummy text ever since the 1500s'
            'printing and typesetting industry. Lorem Ipsum'
            ' has been the industry\'s '
            'standard dummy text ever since the 1500s'
            'printing and typesetting industry. Lorem Ipsum'
            ' has been the industry\'s '

            'standard dummy text ever since the 1500s\n\n\n'
            'How it will use?',
          style: TextStyle(
            color: AppColors.black,
            fontSize: 11,

          ),
        ),
      ),


    ],
  );

  // Call showDialog function to show dialog.
  Future futureValue = showDialog(
      context: context,
      builder: (BuildContext context) {
        return dialog;
      }
  );


}


