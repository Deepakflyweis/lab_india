 
import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get_rx/get_rx.dart';
 
import 'package:lab_india/helpers.dart';
import 'package:lab_india/modules/nav_bar_module/bottom_nav_bar_screen.dart';
import 'package:lab_india/modules/signin_module/otp_signin_screen.dart';
import 'package:get/get.dart' as g;
import 'package:lab_india/modules/signup_module/otp_signup_screen.dart';
 

class UserEndPoint {
  Dio client;
  UserEndPoint({required this.client});
  var isLoading = false.obs;

  getUserDetails({
      String ? imagePath,
    required String fName,
    required String lName,
    required String relationship,
    required String percentage,
    required String childName,
    required String childAge,
    required String city,
    required String state,
    required String pinCode,
    required String street1,
    required String street2,
    required String email,
    required String phoneNo,
  }) async {
    isLoading.value = true;
    CommonLoader.showLoading();
    debugPrint("imagepath $imagePath");
    //final file  =  await MultipartFile.fromFile(imagePath);
    //debugPrint("file $file");
    // var data = FormData.fromMap({
    //   "myField": await MultipartFile.fromFile(imagePath),
    //   "firstname": fName,
    //   "lastname": lName,
    //   "relationship": relationship,
    //   "percentage": percentage,
    //   "childName": childName,
    //   "childage": childAge,
    //   "city": city,
    //   "state": state,
    //   "pinCode": pinCode,
    //   "street1": street1,
    //   "street2": street2,
    //   "email": email,
    //   "phoneNo": phoneNo,
    // });

    var data = FormData.fromMap({
      // 'myField': await MultipartFile.fromFile(imagePath),
      'firstname': fName ,
      'lastname': lName,
      'relationship': relationship,
      'percentage': percentage,
      'numberofchildren': '2',
      'childage': childAge,
      'childgender': 'female',
      'country': 'India',
      'city': city,
      'state': state,
      'pincode': pinCode,
      'street1': street1,
      'street2': street2 ,
      'email': email,
      'phone': phoneNo
    });
    try {
      debugPrint("data ${data.fields.toString()}");

      Response r = await client.post("/api/signup/user", data: data);
      CommonLoader.hideLoading();
      if (r.statusCode == 200) {
        // Client.token = r.data["data"]["otpResponse"];
        // GetStorage box = GetStorage();
        // await box.write("token", Client.token);
        g.Get.to(() => OtpSignUpScreen());
      } else {
        return Future.error(r.data["error"]);
      }
    } on DioError catch (e) {
      CommonLoader.hideLoading();
      //debugPrint("e ${e.response!.data}");
      return Future.error(e.message);
    }
  }

  ///signin
  signin({required String email}) async {
    CommonLoader.showLoading();
    var data = {
      "email": email,
    };

    try {
      Response response = await client.post("/api/signin", data: data);
      CommonLoader.hideLoading();
      print(" response $response");
      if (response.statusCode == 200) {
        // Client.token = response.data["data"]["token"];
        // GetStorage box = GetStorage();
        // await box.write("token", Client.token);
        // print(" User name ${['data']}");
        g.Get.to(() => OtpLoginScreen());
      } else {
        CommonLoader.showErrorDialog(description: response.data['error']);
      }
    } on DioError catch (e) {
      log(e.response!.data.toString());
      CommonLoader.hideLoading();
      CommonLoader.showErrorDialog(description: e.message);
    }
  }

  ///verify otp
  verifyOTP(String email, String otp) async {
    CommonLoader.showLoading();
    var data = {"email": email, 'otp': otp};

    try {
      Response response = await client.post("/api/varify-otp", data: data);
      CommonLoader.hideLoading();
      print(" response $response");
      if (response.statusCode == 200) {
        // print(" User name ${['data']}");
        g.Get.offAll(() => BottomNavBarScreen());
      } else {
        CommonLoader.showErrorDialog(description: response.data['error']);
      }
    } on DioError catch (e) {
      log(e.response!.data.toString());
      CommonLoader.hideLoading();
      CommonLoader.showErrorDialog(description: e.message);
    }
  }
}
