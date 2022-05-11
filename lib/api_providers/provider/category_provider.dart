

import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:lab_india/models/categories_model.dart';

import '../../helpers.dart';

class CategoryProvider{

  Dio client;
  CategoryProvider({required this.client});


  Future <List<CategoriesModel>> getCategories({required String id}) async {
    try{
      Response response = await client.get("/api/get/category/$id", );
      CommonLoader.hideLoading();
      if(response.statusCode == 200){
        return categoriesModelFromJson(jsonEncode(response.data));

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