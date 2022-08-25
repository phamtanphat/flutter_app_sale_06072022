import 'package:dio/dio.dart';
import 'package:flutter_app_sale_06072022/common/constants/api_constant.dart';
import 'package:flutter_app_sale_06072022/data/datasources/remote/dio_client.dart';

class ApiRequest {
  late Dio _dio;
  
  ApiRequest(){
    _dio = DioClient.instance.dio;
  }
  
  Future signIn(String email, String password) {
    return _dio.get(ApiConstant.SIGN_IN_URL, queryParameters: {
      "email": email,
      "password": password
    });
  }
  Future signUp(String email, String password,String name,String address,int phone) {
    return _dio.get(ApiConstant.signUpURL, queryParameters: {
      "email": email,
      "password": password,
      "name": name,
      "phone": phone,
      "address": address,
    });
  }
  Future product(String id,String name,String address,int price,String img,int quantity,List<String> gallery ) {
    return _dio.get(ApiConstant.listProductsUrl, queryParameters: {
      'id' : id,
          'name' : name,
      'address' : address,
      'price' : price,
      'img':img,
      'quantity' : quantity,
      'gallery': gallery,
    });
  }
  Future cart(String id, List<dynamic> products,int price) {
    return _dio.get(ApiConstant.SIGN_IN_URL, queryParameters: {
    'id' : id,
      'products' : products,
      'price' : price,
    });
  }
  Future orderHistory(String id, List<dynamic> products,int price,bool status,String date_created) {
    return _dio.get(ApiConstant.orderHistoryUrl, queryParameters: {
      'id' : id,
      'products' : products,
      'price' : price,
      'status' : status,
      'date_created' : date_created,
    });
  }
}



