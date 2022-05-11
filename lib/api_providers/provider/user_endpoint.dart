
import 'dart:convert';
import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:get/get_rx/get_rx.dart';
import 'package:lab_india/helpers.dart';
import 'package:lab_india/modules/nav_bar_module/bottom_nav_bar_screen.dart';
import 'package:lab_india/modules/signin_module/otp_signin_screen.dart';
import 'package:get/get.dart'as g;
import 'package:lab_india/modules/signup_module/otp_signup_screen.dart';

class UserEndPoint{
Dio client;
UserEndPoint({
  required this.client});
var isLoading = false.obs;

  getUserDetails({
        required String fName,
        required String lName,
        required String relationship,
        required String percentage,
        required  String childName,
        required String childAge,
        required String city,
        required  String state,
        required String pinCode,
        required String street1,
       required String street2,
       required String email,
       required String phoneNo,})  async{
      isLoading.value = true;
      CommonLoader.showLoading();
      var data= {
      "fName" : fName,
      "lName" : lName ,
      "relationship" : relationship,
      "percentage" : percentage,
      "childName" : childName,
      "childAge" : childAge,
      "city" : city,
      "state" : state,
      "pinCode" : pinCode,
      "street1" : street1,
      "street2" : street2,
      "email" : email,
      "phoneNo" : phoneNo,};

  try {
    Response r = await client.post("/api/signup/user", data: data );
    CommonLoader.hideLoading();
    if (r.statusCode == 200) {
      g.Get.to(() => OtpSignUpScreen());

    } else {
      return Future.error(r.data["error"]);
    }
  } on DioError catch (e) {
    return Future.error(e.message);
  }
}

///signin
signin({required String email }) async{
  CommonLoader.showLoading();
  var data= {"email" : email,};

  try{
    Response response = await client.post("/api/signin", data: data);
    CommonLoader.hideLoading();

    print(" response ${response}");
    if(response.statusCode == 200){
      print(" User name ${['data']}");
      g.Get.to(()=> OtpLoginScreen( ));
    }
    else{
      CommonLoader.showErrorDialog(description: response.data['error']);
    }

  }on DioError catch(e){
    log(e.response!.data.toString());
    CommonLoader.hideLoading();
    CommonLoader.showErrorDialog(description: e.message);

  }
}

///verify otp
  verifyOTP(String email, String otp) async {
  CommonLoader.showLoading();
  var data= {"email" : email,'otp': otp};

  try{
    Response response = await client.post("/api/varify-otp", data: data);
    CommonLoader.hideLoading();

    print(" response ${response}");
    if(response.statusCode == 200){
      print(" User name ${['data']}");
      g.Get.offAll(()=> BottomNavBarScreen());
    }
    else{
      CommonLoader.showErrorDialog(description: response.data['error']);
    }

   }on DioError catch(e){
    log(e.response!.data.toString());
    CommonLoader.hideLoading();
    CommonLoader.showErrorDialog(description: e.message);
  }
}

}