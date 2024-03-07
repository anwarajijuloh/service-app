import 'package:flutter/material.dart';

import '../data/data.dart';
import '../models/models.dart';

class PersonProvider with ChangeNotifier{
  List<Person> _personData = [];

  PersonProvider(){
    _personData = dataPerson;
  }

  List<Person> get personData => _personData;
}