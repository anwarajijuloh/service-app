import 'package:flutter/material.dart';

import '../data/data.dart';
import '../models/models.dart';

class AuthPerson with ChangeNotifier {
  bool _isLogin = false;
  String _errorMessage = '';
  Person? _logged;
  List<Person> _person = [];

  AuthPerson() {
    _person = dataPerson;
  }

  bool get isLogin => _isLogin;
  String get errorMessage => _errorMessage;
  Person? get logged => _logged;
  List<Person> get person => _person;

  

}
