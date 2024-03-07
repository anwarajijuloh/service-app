import 'package:flutter/material.dart';

import '../data/data.dart';
import '../models/models.dart';

class AuthPerson with ChangeNotifier {
  bool _isLogin = false;
  String _errorMessage = '';
  Person? _logged;
  List<Person> _person = [];

  AuthPerson(){
    _person = dataPerson;
  }

  bool get isLogin => _isLogin;
  String get errorMessage => _errorMessage;
  Person? get logged => _logged;
  List<Person> get person => _person;

  void login(String username, String password) {
    _logged = _person.firstWhere((user) => user.username == username && user.password == password);
    if(_logged != null){
      _isLogin = true;
      _errorMessage = '';
      notifyListeners();
    }else{
      _isLogin = false;
      _errorMessage = 'Invalid Username or Password';
      notifyListeners();
    }
  }
  void logout() {
    _isLogin = false;
    _logged = null;
    notifyListeners();
  }

  static bool isLoggedIn(){
    return AuthPerson().isLogin;
  }
}
