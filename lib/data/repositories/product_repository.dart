
import 'package:flutter_app_sale_06072022/data/datasources/remote/api_request.dart';

class ProductRepository{
  late ApiRequest _apiRequest;
  void update(ApiRequest apiRequest){
    _apiRequest =apiRequest;
  }


  Future productRequest(String id,String name,String address,int price,String img,int quantity,List<String> gallery ){
    return _apiRequest.product(id, name, address, price, img, quantity, gallery);
  }
}