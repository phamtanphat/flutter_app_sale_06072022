
import 'package:flutter_app_sale_06072022/data/datasources/remote/api_request.dart';

class SignUpRepository{
  late ApiRequest _apiRequest;
  void update(ApiRequest apiRequest){
    _apiRequest =apiRequest;
  }


  Future signUpRequest(String email, String password,String name,String address,int phone){
    return _apiRequest.signUp(email, password, name, address, phone);
  }
}