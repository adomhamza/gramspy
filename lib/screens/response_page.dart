import 'package:flutter/material.dart';
import '../api/api_service_provider.dart';
import '../route/routes.dart';
import 'package:provider/provider.dart';

class ResponsePage extends StatelessWidget {
  const ResponsePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<APIService>(builder: (context, value, child) {
      final objectResult = value.userRequestModel!.graphql!;
      return Scaffold(
          appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () {
                Navigator.of(context).pushReplacementNamed(
                  RouteManager.homePage,
                );
                context.read<APIService>().btnLabel = 'SEARCH';
              },
              icon: const Icon(
                Icons.logout_rounded,
              ))
        ],
        elevation: 0.0,
        title: Text(objectResult.user!.username),
      ));
    });
  }
}
