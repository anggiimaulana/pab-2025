import 'package:flutter/material.dart';

class UserModel extends ChangeNotifier {
  String _userName = "";
  String get userName => _userName;

  void changeUserName({required String newUserName}) {
    _userName = newUserName;
    notifyListeners();
  }
}
