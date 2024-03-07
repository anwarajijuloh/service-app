import 'package:flutter/material.dart';

import '/data/data.dart';
import '/models/models.dart';

class AuthPerson with ChangeNotifier {
  bool _isLogin = false;
  String _errorMessage = '';
  String _loggedPerson = '';

  bool get isLogin => _isLogin;
  String get errorMessage => _errorMessage;
  String get loggedPerson => _loggedPerson;

  void login(String username, String password) {
    for (Person person in dataPerson) {
      if (person.username == username && person.password == password) {
        _isLogin = true;
        _errorMessage = '';
        _loggedPerson = person.name;
        notifyListeners();
        return;
      }
    }
    _isLogin = false;
    _errorMessage = 'Invalid Username or Password';
    notifyListeners();
  }
}
