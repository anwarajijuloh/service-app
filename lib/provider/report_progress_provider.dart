import 'package:flutter/material.dart';
import 'package:service_app/data/data.dart';
import 'package:service_app/models/models.dart';

class ReportProgressProvider with ChangeNotifier{
  List<ReportProgress> _progress = [];

  ReportProgressProvider(){
    _progress = dataReportProgress;
  }

  List<ReportProgress> get progress => _progress;
}