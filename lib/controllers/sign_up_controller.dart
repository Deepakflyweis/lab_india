import 'dart:io';

import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:lab_india/api_providers/api_client.dart';
import 'package:lab_india/api_providers/provider/user_endpoint.dart';

class SignUpController extends GetxController {
  final signup1FormKey = GlobalKey<FormState>();
  final signup2FormKey = GlobalKey<FormState>();
  final signup3FormKey = GlobalKey<FormState>();
  final signup4FormKey = GlobalKey<FormState>();  
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

  
  final email = TextEditingController();
  final mob = TextEditingController();

  var isSign = false.obs;
  var signPath = "".obs;

  void setSignature(String path) {
    signPath.value = path;
    isSign.value = true;
  }

  Rx<File> image = File("").obs;
  // submit() {
  //   if (signup1FormKey.currentState!.validate()) {
  //
  //     _commonMethod();
  //   } else if (image.value.path != "") {
  //
  //     _commonMethod();
  //   } else {
  //     return "pleaseSelectProfile ";
  //   }
  // }

  /* submit() {
    if (image.value.path != "")
      checkRegister1();
  }*/

  void showPicker(context) {
    showModalBottomSheet(
        context: context,
        builder: (BuildContext bc) {
          return SafeArea(
            child: Container(
              child: Wrap(
                children: <Widget>[
                  ListTile(
                      leading: const Icon(Icons.photo_library),
                      title: Text('Library'),
                      onTap: () {
                        _imgFromGallery();
                        Navigator.of(context).pop();
                      }),
                  ListTile(
                    leading: const Icon(Icons.photo_camera),
                    title: Text('Camera'),
                    onTap: () {
                      _imgFromCamera();
                      Navigator.of(context).pop();
                    },
                  ),
                ],
              ),
            ),
          );
        });
  }

  _imgFromCamera() async {
    ImagePicker _picker = ImagePicker();
    XFile? tempImage = await _picker.pickImage(
        source: ImageSource.camera,
        //  imageQuality: 50,
        preferredCameraDevice: CameraDevice.front);
    if (tempImage != null) {
      image.value = File(tempImage.path);
    }
  }

  _imgFromGallery() async {
    ImagePicker _picker = ImagePicker();
    XFile? tempImage = await _picker.pickImage(
      source: ImageSource.gallery,
      //imageQuality: 50
    );
    if (tempImage != null) {
      image.value = File(tempImage.path);
    }
  }

  // sendotp() async{
  //   if(emailFormKey.currentState!.validate()) {
  //     Client client = Client();
  //     UserEndPoint userEndPoint = UserEndPoint(client: client.init());
  //     userEndPoint.signin(email: email.text);
  //   }
  // }

  // checkRegister1() {
  //   if(signup1FormKey.currentState!.validate()){
  //             return;
  //
  //   }
  //   signup1FormKey.currentState!.save();
  //
  // }
  // checkRegister2(){
  //    if(signup2FormKey.currentState!.validate()){
  //      return;
  //    }
  //    signup2FormKey.currentState!.save();
  // }
  //
  // checkRegister3(){
  //     if(signup3FormKey.currentState!.validate()){
  //       return;
  //   }
  //     signup3FormKey.currentState!.save();
  // }

  checkRegister4() {
    Client register = Client();
    UserEndPoint authPoint = UserEndPoint(client: register.init());
    authPoint.getUserDetails(
      imagePath: image.value.path,
      fName: fname.text,
      street2: street2.text,
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
    // if(signup4FormKey.currentState!.validate()){
    //   if(emailFormKey.currentState!.validate()){
    //     if(mobNoFormKey.currentState!.validate()){
    //           Client register = Client();
    //           UserEndPoint authPoint = UserEndPoint(client: register.init());
    //           authPoint.getUserDetails(
    //             imagePath: image.value.path,
    //             fName: fname.text,
    //             street2:  street2.text,
    //             relationship: reltn.text,
    //             childName: childname.text,
    //             lName: lname.text,
    //             street1: street1.text,
    //             city: city.text,
    //             pinCode: pincode.text,
    //             email: email.text,
    //             childAge: childage.text,
    //             phoneNo: mob.text,
    //             state: state.text,
    //             percentage: percnt.text,
    //           );
    //     }
    //   }
    // }
  }
}
