import 'package:flutter_app_sale_06072022/common/bases/base_bloc.dart';
import 'package:flutter_app_sale_06072022/common/bases/base_event.dart';
import 'package:flutter_app_sale_06072022/data/repositories/sign_up_repository.dart';
import 'package:flutter_app_sale_06072022/presentation/features/Sign_Up/sign_up_event.dart';

class SignUpBloc extends BaseBloc{
  late SignUpRepository _repository;
  void updateRepository(SignUpRepository signUpRepository){
    _repository = signUpRepository;
  }

  @override
  @override
  void dispatch(BaseEvent event) {
    switch (event.runtimeType) {
      // case SignUpEvent:
      //   _handleSignUp(event as SignUpEvent);
      //   break;
    }
  }

}