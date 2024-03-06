import 'package:flutter/material.dart';

import '../data/data.dart';
import '../models/models.dart';

class AuthPerson with ChangeNotifier {
  bool _isLogin = false;
  String _errorMessage = '';
  late Person _loggedIn;

  bool get isLogin => _isLogin;
  String get errorMessage => _errorMessage;
  Person get loggedInUser => _loggedIn;
  List<Person> get person {
    return [...dataPerson];
  }

  List<Report> get report {
    return [...dataReport];
  }

  void login(String uname, String passw) {
    for (Person person in dataPerson) {
      if (person.username == uname && person.password == passw) {
        if (person.roleId.roleId == 0) {
          _isLogin = true;
          _errorMessage = '';
          _loggedIn = person;
          dataPerson;
          dataReport;
        } else {
          List<Report> filteredReport = [];
          for (Report report in dataReport) {
            if (report.personId.personId == person.personId) {
              filteredReport.add(report);
              _isLogin = true;
              _errorMessage = '';
              _loggedIn = person;
            }
          }
        }
      } else {
        _isLogin = false;
        _errorMessage = 'Invalid Username or Password';
      }
      notifyListeners();
    }
  }
}
