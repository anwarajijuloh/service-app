import 'package:flutter/material.dart';


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
  
}