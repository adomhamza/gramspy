import 'dart:convert';

import 'package:flutter/material.dart';
import '../components/dialog.dart';
import '../models/model.dart';

import 'package:http/http.dart' as http;

class APIService with ChangeNotifier {
  String _btnLabel = 'SEARCH';
  String get btnLabel => _btnLabel;
  set btnLabel(String btnLabel) {
    _btnLabel = btnLabel;
    notifyListeners();
  }

  UserRequestModel? userRequestModel;
  Future<UserRequestModel> userRequest(
    BuildContext context,
    String username,
  ) async {
    try {
      final response = await http.get(
          Uri.parse('https://instagram.com/$username/?__a=1'),
          headers: <String, String>{
            'Content-Type': 'application/json; charset=UTF-8',
          });
      if (response.statusCode == 200) {
        final obj = json.decode(response.body);
        userRequestModel = UserRequestModel.fromJson(obj);
      } else {
        showAlertDialog(
          title: 'Ghost Alert!!',
          context: context,
          content: 'Username doesn\'t exist',
        );
      }
    } catch (e) {
      showAlertDialog(
        title: 'Ooops',
        context: context,
        content: e.toString(),
      );
    }
    notifyListeners();
    return userRequestModel!;
  }
}
