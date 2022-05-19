
 import 'package:dio/dio.dart';

class Client{
  static String token = "";
  Dio init() {
    Dio _dio = Dio();
    _dio.interceptors.add(ApiInterceptors());
    _dio.options.baseUrl = "http://mern.online:4000";
    return _dio;
  }
}

 class ApiInterceptors extends Interceptor {
   @override
   void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
       super.onRequest(options, handler);
         if (Client.token != "") {
           options.headers["Authorization"] = "Bearer ${Client.token}";
         }
   }

 }

