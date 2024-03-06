import 'package:flutter/material.dart';

import '../data/data.dart';
import '../models/models.dart';

class PersonProvider with ChangeNotifier{
  List<Person> get person{
    return [...dataPerson];
  }
}