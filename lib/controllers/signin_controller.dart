

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lab_india/api_providers/api_client.dart';
import 'package:lab_india/api_providers/provider/user_endpoint.dart';

class SignInController extends GetxController{

  final loginFormKey = GlobalKey<FormState>();
  final email = TextEditingController();


   sendotp() async {
    if (loginFormKey.currentState!.validate()) {
      Client client = Client();
      UserEndPoint userEndPoint = UserEndPoint(client: client.init());
      userEndPoint.signin(email: email.text);
    }
  }
}