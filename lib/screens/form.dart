import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../api/api_service_provider.dart';

import '../gram_spy_theme.dart';

class FormPage extends StatefulWidget {
  const FormPage({Key? key}) : super(key: key);

  @override
  State<FormPage> createState() => _FormPageState();
}

class _FormPageState extends State<FormPage> {
  final _usernamecontroller = TextEditingController();
  String? get emptyText {
    final text = _usernamecontroller.value.text;
    if (text.isEmpty) {
      return 'Enter a valid InstaGram username';
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        child: AnimatedBuilder(
            animation: _usernamecontroller,
            builder: (context, _) {
              return Column(
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 100.0),
                    child: Center(
                      child: Text(
                        'GramSpy',
                        style: GramSpyTheme.lightTextTheme.headline2,
                      ),
                    ),
                  ),
                  SizedBox(
                      height: 100,
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        margin: const EdgeInsets.only(
                          left: 30.0,
                          right: 30.0,
                        ),
                        alignment: Alignment.center,
                        child: Row(
                          children: <Widget>[
                            Expanded(
                              child: TextField(
                                decoration: InputDecoration(
                                  errorText: emptyText,
                                  errorStyle:
                                      GramSpyTheme.lightTextTheme.bodyText1,
                                ),
                                autofocus: true,
                                textAlign: TextAlign.center,
                                style: GramSpyTheme.lightTextTheme.headline3,
                                controller: _usernamecontroller,
                              ),
                            ),
                          ],
                        ),
                      )),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    margin: const EdgeInsets.only(
                        left: 30.0, right: 30.0, top: 80.0),
                    alignment: Alignment.center,
                    child: Row(
                      children: [
                        Expanded(
                          child: ElevatedButton(
                            style: OutlinedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30.0)),
                            ),
                            onPressed: emptyText == null
                                ? () {
                                    context.read<APIService>().userRequest(
                                        context, _usernamecontroller.text);
                                    context.read<APIService>().btnLabel =
                                        'SPYING ON USER....';
                                  }
                                : null,
                            child: Text(
                              context.watch<APIService>().btnLabel,
                              textAlign: TextAlign.center,
                              style: const TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w900,
                                  fontSize: 15.0),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                ],
              );
            }),
      ),
    );
  }
}
