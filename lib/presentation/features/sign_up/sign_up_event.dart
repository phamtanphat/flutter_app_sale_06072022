import 'package:flutter_app_sale_06072022/common/bases/base_event.dart';

class SignUpEvent extends BaseEvent{
  String email ,password ,name ,address;
  int phone ;
  SignUpEvent({required this.email, required this.password,required this.name,required this.phone,required this.address});
  @override
  // TODO: implement props
  List<Object?> get props => [];

}