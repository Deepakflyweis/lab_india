

import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:lab_india/api_providers/api_client.dart';
import 'package:lab_india/api_providers/provider/user_endpoint.dart';


class SignUpController extends GetxController{
  final signup1FormKey = GlobalKey<FormState>();
  final signup2FormKey = GlobalKey<FormState>();
  final signup3FormKey = GlobalKey<FormState>();
  final signup4FormKey = GlobalKey<FormState>();
  final fnameFormKey = GlobalKey<FormState>();
  final lnameFormKey = GlobalKey<FormState>();
  final relationFormKey = GlobalKey<FormState>();
  final percntageFormKey = GlobalKey<FormState>();
  final fname = TextEditingController();
  final lname = TextEditingController();
  final reltn = TextEditingController();
  final percnt = TextEditingController();

  final childname = TextEditingController();
  final childage = TextEditingController();

  final city = TextEditingController();
  final state = TextEditingController();
  final pincode = TextEditingController();
  final street1 = TextEditingController();
  final street2 = TextEditingController();

  final emailFormKey = GlobalKey<FormState>();
  final mobNoFormKey = GlobalKey<FormState>();
  final email = TextEditingController();
  final mob = TextEditingController();





  sendotp() async{
    if(emailFormKey.currentState!.validate()) {
      Client client = Client();
      UserEndPoint userEndPoint = UserEndPoint(client: client.init());
      userEndPoint.signin(email: email.text);
    }
  }

  checkRegister1() {
    if(signup1FormKey.currentState!.validate()){
      if(fnameFormKey.currentState!.validate()){
        if(lnameFormKey.currentState!.validate()){
          if (relationFormKey.currentState!.validate()){
            if(percntageFormKey.currentState!.validate()){
              return;

              //
              // Client register = Client();
              // UserEndPoint authPoint = UserEndPoint(client: register.init());
              // authPoint.getUserDetails( fname : fname.text,
              // );
              // // Navigator.pushNamed(context, signUp2ScreenRoute);
            }
          }
        }
      }
    }
    signup1FormKey.currentState!.save();

  }
  checkRegister2(){
     if(signup2FormKey.currentState!.validate()){
       return;
     }
     signup2FormKey.currentState!.save();
  }

  checkRegister3(){
      if(signup3FormKey.currentState!.validate()){
        return;
    }
      signup3FormKey.currentState!.save();
  }

  checkRegister4(){
    if(signup4FormKey.currentState!.validate()){
      if(emailFormKey.currentState!.validate()){
        if(mobNoFormKey.currentState!.validate()){
              Client register = Client();
              UserEndPoint authPoint = UserEndPoint(client: register.init());
              authPoint.getUserDetails(
                fName: fname.text,
                street2:  street2.text,
                relationship: reltn.text,
                childName: childname.text,
                lName: lname.text,
                street1: street1.text,
                city: city.text,
                pinCode: pincode.text,
                email: email.text,
                childAge: childage.text,
                phoneNo: mob.text,
                state: state.text,
                percentage: percnt.text,
              );
        }
      }
    }
  }
}