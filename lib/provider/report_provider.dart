import 'package:flutter/material.dart';

import '/data/data.dart';
import '/models/models.dart';


String statusrand(s){
  switch(s){
    case 0:
    return "open";
    case 1:
    return "progress";
    case 2:
    return "done";
    default:
    return "open";
  }
}

class ReportProvider with ChangeNotifier{
  List<Report> _report = [];

  ReportProvider(){
    _report = dataReport;
  }

  List<Report> get report => _report;
  
}