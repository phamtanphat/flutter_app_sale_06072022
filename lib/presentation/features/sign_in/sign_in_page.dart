import 'package:flutter/material.dart';
import 'package:flutter_app_sale_06072022/common/bases/base_widget.dart';
import 'package:flutter_app_sale_06072022/data/datasources/remote/api_request.dart';
import 'package:flutter_app_sale_06072022/data/repositories/sign_in_repository.dart';
import 'package:flutter_app_sale_06072022/presentation/features/sign_in/sign_in_bloc.dart';
import 'package:flutter_app_sale_06072022/presentation/features/sign_in/sign_in_event.dart';
import 'package:provider/provider.dart';
class SignInPage extends StatefulWidget {

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  @override
  Widget build(BuildContext context) {
    return PageContainer(

          appBar: CustomAppBar(),
      providers: [
        Provider(create: (context) => ApiRequest()),
        ProxyProvider<ApiRequest, SignInRepository>(
          update: (context, request, repository){
            repository?.update(request);
            return repository ?? SignInRepository()..update(request);
          },
        ),
        ProxyProvider<SignInRepository, SignInBloc>(
          update: (context, repository, bloc){
            bloc?.updateRepository(repository);
            return bloc ?? SignInBloc()..updateRepository(repository);
          },
        ),
      ],
      child: SignInContainer(),
    );
  }
String? text ;
  AppBar CustomAppBar() {

    return AppBar(
          backgroundColor: Colors.pink.shade400,
        toolbarHeight: 100 ,
          elevation: 14,
          shape: const RoundedRectangleBorder(
              borderRadius:  BorderRadius.only(
                  bottomRight: Radius.circular(70),
                  bottomLeft: Radius.circular(70))
          ),
          actions: [

            Row(

              children: [

                Container(

                  height: 40,width: 40,

                  alignment: Alignment.center,

                  decoration: BoxDecoration(

                      boxShadow: [

                        BoxShadow(blurRadius: 7,spreadRadius: 3,

                            color: Colors.pink

                        )

                      ],

                      shape: BoxShape.circle,

                      color: Colors.pink.shade400

                  ),

                  child: Icon(Icons.search,size: 20,

                  ),

                ),

                SizedBox(width: 10,),

                Container(

                  height: 40,width: 40,

                  alignment: Alignment.center,

                  decoration: BoxDecoration(

                      boxShadow: [

                        BoxShadow(blurRadius: 7,spreadRadius: 3,

                            color: Colors.pink

                        )

                      ],

                      shape: BoxShape.circle,

                      color: Colors.pink.shade400

                  ),

                  child: Icon(Icons.notifications,size: 20,

                  ),

                ),

                SizedBox(width: 10,),  Container(

                  height: 40,width: 40,

                  alignment: Alignment.center,

                  decoration: BoxDecoration(

                      boxShadow: [

                        BoxShadow(blurRadius: 7,spreadRadius: 3,

                            color: Colors.pink

                        )

                      ],

                      shape: BoxShape.circle,

                      color: Colors.pink.shade400

                  ),

                  child: Icon(Icons.logout,size: 20,

                  ),

                ),

                SizedBox(width: 26,)

              ],

            )

          ],
        title: const Center(child: Text("Sign In")),
      );
  }
}

class SignInContainer extends StatefulWidget {
  const SignInContainer({Key? key}) : super(key: key);

  @override
  State<SignInContainer> createState() => _SignInContainerState();
}

class _SignInContainerState extends State<SignInContainer> {
  late SignInBloc _bloc;

  @override
  void initState() {
    super.initState();
    _bloc = context.read<SignInBloc>();
    _bloc.eventSink.add(SignInEvent(email: "hello", password: "123"));
  }
  @override
  Widget build(BuildContext context) {
    return Text("Demo");
  }
}

