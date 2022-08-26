import 'package:flutter/material.dart';
import 'package:flutter_app_sale_06072022/common/bases/base_widget.dart';
import 'package:flutter_app_sale_06072022/presentation/features/cart/cart_event.dart';
import 'package:provider/provider.dart';

import '../../../data/datasources/remote/api_request.dart';
import '../../../data/repositories/card_repository.dart';
import 'cart_bloc.dart';
class CardPage extends StatefulWidget {
  const CardPage({Key? key}) : super(key: key);

  @override
  State<CardPage> createState() => _CardPageState();
}

class _CardPageState extends State<CardPage> {
  @override
  Widget build(BuildContext context) {
    return PageContainer(
      appBar:AppBar(title: const Center(child: Text('Card')),) ,
      child:CardContainer() ,
      providers: [
        Provider(create: (context )=>ApiRequest()),
        ProxyProvider<ApiRequest,CardRepository>(
            update: (context,request,repository){
              repository?.update(request);
              return repository?? CardRepository()..update(request);
            }
        ),
        ProxyProvider<CardRepository,CardBloc>(
            update: (context,repository,bloc){
              bloc?.updateRepository(repository);
              return bloc?? CardBloc()..updateRepository(repository);
            }
        ),
      ],

    );
  }
}
class CardContainer extends StatefulWidget {
  const CardContainer({Key? key}) : super(key: key);

  @override
  State<CardContainer> createState() => _CardContainerState();
}

class _CardContainerState extends State<CardContainer> {
  late CardBloc _bloc;
  @override
  void initState() {
    _bloc =context.read<CardBloc>();
    _bloc.eventSink.add(CardEvent(id: 'id', products: [], price: 0));
  }
  @override
  Widget build(BuildContext context) {
    return Text("Card");
  }
}
