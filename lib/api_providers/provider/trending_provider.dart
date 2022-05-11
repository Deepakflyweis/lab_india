import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:lab_india/models/trending_model.dart';

import '../../helpers.dart';

class TrendingProvider{
  Dio client;
  TrendingProvider({required this.client});


  Future<List<TrendingModel>> getTrending({required String storyId}) async {
    try{
      Response response = await client.get("/api/get/Trending/$storyId",);
      CommonLoader.hideLoading();
      if(response.statusCode == 200){
        return trendingModelFromJson(jsonEncode(response.data));
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