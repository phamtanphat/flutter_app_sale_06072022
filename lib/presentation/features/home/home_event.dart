import 'package:flutter_app_sale_06072022/common/bases/base_event.dart';

class GetListProductEvent extends BaseEvent {

  @override
  List<Object?> get props => [];
}
class HomeSuccessEvent extends BaseEvent {
  String message;

  HomeSuccessEvent({required this.message});

  @override
  List<Object?> get props => [message];
}