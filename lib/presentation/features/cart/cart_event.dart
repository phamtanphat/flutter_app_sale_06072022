import '../../../common/bases/base_event.dart';

class CardEvent extends BaseEvent {
  String id;
  int price;
  List<dynamic> products;

  CardEvent({required this.id, required this.products,required this.price});

  @override
  List<Object?> get props => [];
}