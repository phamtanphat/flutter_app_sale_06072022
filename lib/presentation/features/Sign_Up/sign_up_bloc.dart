import 'package:flutter_app_sale_06072022/common/bases/base_bloc.dart';
import 'package:flutter_app_sale_06072022/common/bases/base_event.dart';
import 'package:flutter_app_sale_06072022/data/repositories/sign_up_repository.dart';

class SignUpBloc extends BaseBloc{
  late SignUpRepository _repository;
  void update(SignUpRepository signUpRepository){
    _repository = signUpRepository;
  }

  @override
  void dispatch(BaseEvent event) {
    print(event.toString());
    // TODO: store data
  }

}