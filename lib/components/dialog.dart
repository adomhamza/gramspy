import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../api/api_service_provider.dart';

import 'package:provider/provider.dart';

Future<void> showAlertDialog({
  required String title,
  required BuildContext context,
  required String content,
}) async {
  return showDialog(
      context: context,
      builder: (context) => AlertDialog(
            title: Text(title),
            content: Text(content),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();

                  context.read<APIService>().btnLabel = 'SEARCH';
                },
                child: const Text('Okay'),
              ),
            ],
          ));
}
