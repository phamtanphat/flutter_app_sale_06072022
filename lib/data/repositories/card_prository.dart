
import 'package:flutter_app_sale_06072022/data/datasources/remote/api_request.dart';

class CardRepository{
  late ApiRequest _apiRequest;
  void update(ApiRequest apiRequest){
    _apiRequest =apiRequest;
  }

  Future productRequest(String id, List<dynamic> products,int price){
    return _apiRequest.cart(id, products, price);
  }
}