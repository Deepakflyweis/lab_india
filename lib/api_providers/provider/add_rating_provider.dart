
import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:lab_india/helpers.dart';
import 'package:lab_india/modules/nav_bar_module/bottom_nav_bar_screen.dart';
import 'package:get/get.dart'as g;


class AddRatingProvider{
  Dio client;

  AddRatingProvider({required this.client});

    addRating() async {
      try{
        Response response = await client.post("/api/add/Rating/");
        CommonLoader.hideLoading();
        if(response.statusCode == 200){
          g.Get.to(() => BottomNavBarScreen());
          // return addRatingModelFromJson(jsonEncode(response.data["data"]["rating"]));
        }
        else{
          return Future.error(response.data["error"]);
        }

      }on DioError catch (e) {
        print(e.response!.data);
        return Future.error(e.message);
      }
  }
}
