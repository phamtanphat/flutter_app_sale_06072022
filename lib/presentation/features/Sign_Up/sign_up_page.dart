import 'package:flutter/material.dart';
import 'package:flutter_app_sale_06072022/data/datasources/remote/api_request.dart';
import 'package:flutter_app_sale_06072022/data/repositories/sign_up_repository.dart';
import 'package:flutter_app_sale_06072022/presentation/features/Sign_Up/sign_up_bloc.dart';
import 'package:flutter_app_sale_06072022/presentation/features/Sign_Up/sign_up_event.dart';
import 'package:provider/provider.dart';
import 'package:flutter_app_sale_06072022/common/bases/base_widget.dart';
class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {

  @override
  Widget build(BuildContext context) {
    return PageContainer(
        appBar:AppBar(title: const Center(child: Text('Sign Up')),) ,
      child:SignUpContainer() ,
      providers: [
     Provider(create: (context )=>ApiRequest()),
        ProxyProvider<ApiRequest,SignUpRepository>(
          update: (context,request,repository){
           repository?.update(request);
           return repository?? SignUpRepository()..update(request);
          }
        ),
        ProxyProvider<SignUpRepository,SignUpBloc>(
            update: (context,repository,bloc){
              bloc?.update(repository);
              return bloc?? SignUpBloc()..update(repository);
            }
        ),
      ],
    );
  }
}
class SignUpContainer extends StatefulWidget {
  const SignUpContainer({Key? key}) : super(key: key);

  @override
  State<SignUpContainer> createState() => _SignUpContainerState();
}

class _SignUpContainerState extends State<SignUpContainer> {
  late SignUpBloc _bloc;
  @override
  void initState() {
    _bloc =context.read<SignUpBloc>();
    _bloc.eventSink.add(SignUpEvent(email: 'email', password: 'password', name: 'name', phone: 'phone', address: 'address'));
  }
  @override
  Widget build(BuildContext context) {
    return Text("Sign Up");
  }
}
