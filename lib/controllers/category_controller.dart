 import 'package:get/get.dart';
import 'package:lab_india/api_providers/api_client.dart';
import 'package:lab_india/api_providers/provider/category_provider.dart';
import 'package:lab_india/models/categories_model.dart';

class CategoryController extends GetxController with StateMixin<List<CategoriesModel>>{

  String id = "";
  List<CategoriesModel> categoryImg = List<CategoriesModel>.empty().obs;
  late Rx<CategoriesModel> category;
  // late Rx<CategoriesModel> id;


  callGetCategoryApi(){

    Client cclient = Client();
    CategoryProvider categoryProvider = CategoryProvider(client : cclient.init());
    try {
      categoryProvider.getCategories(id: id).then((value) {
        if (value.isNotEmpty) {
          change(value, status: RxStatus.success());
        } else {
          change(null, status: RxStatus.empty());
        }
      }
      ,onError: (err){
            change(null,status: RxStatus.error(err.toString()));
          });

    }  catch (e) {
      change(null,status: RxStatus.error(e.toString()));
    }
  }

  @override
  void onInit() {
    callGetCategoryApi();
    super.onInit();
  }
}