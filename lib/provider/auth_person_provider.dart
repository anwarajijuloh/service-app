import 'package:flutter/material.dart';
import 'package:service_app/data/data.dart';
import 'package:service_app/models/model.dart';

class AuthPerson with ChangeNotifier{
  List<Person> get personAuth{
    return [...dataPerson];
  }

  void loginPerson(String username, String password){
    dataPerson.where((person) => person.username == username && person.password == password);
    notifyListeners();
  }
}