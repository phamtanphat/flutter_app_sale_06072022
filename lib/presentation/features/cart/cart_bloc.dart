import 'package:flutter_app_sale_06072022/common/bases/base_event.dart';
import '../../../common/bases/base_bloc.dart';
import '../../../data/repositories/card_repository.dart';

class CardBloc extends BaseBloc{
  late CardRepository _repository;

 void updateRepository(CardRepository cardRepository) {
    _repository = cardRepository;
  }
  @override
  void dispatch(BaseEvent event) {
    print(event.toString());
  }

}