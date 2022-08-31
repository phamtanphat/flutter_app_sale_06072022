import 'package:dio/dio.dart';
import 'package:flutter_app_sale_06072022/common/constants/api_constant.dart';
import 'package:flutter_app_sale_06072022/data/datasources/remote/dio_client.dart';

class ApiRequest {
  late Dio _dio;
  
  ApiRequest(){
    _dio = DioClient.instance.dio;
  }
  
  Future signIn(String email, String password) {
    return _dio.post(ApiConstant.SIGN_IN_URL, data: {
      "email": email,
      "password": password
    });
  }
  Future signUp(String email, String password,String name,String address,int phone) {
    return _dio.post(ApiConstant.SIGN_IN_URL, data: {
      "email": email,
      "password": password,
      "name": name,
      "phone": phone,
      "address": address,
    });
  }
}