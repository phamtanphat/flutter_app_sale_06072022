
import 'package:flutter_app_sale_06072022/data/datasources/remote/api_request.dart';

class OrderRepository{
  late ApiRequest _apiRequest;
  void update(ApiRequest apiRequest){
    _apiRequest =apiRequest;
  }


  Future orderRequest(String id, List<dynamic> products,int price,bool status,String date_created){
    return _apiRequest.orderHistory(id, products, price, status, date_created);
  }
}