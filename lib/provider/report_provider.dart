import 'package:flutter/material.dart';

import '/data/data.dart';
import '/models/models.dart';

class ReportProvider with ChangeNotifier {
  List<Report> _report = [];

  ReportProvider() {
    _report = dataReport;
  }

  List<Report> get report => _report;

  Report findById(reportId){
    return _report.firstWhere((report) => report.reportId == reportId);
  }


  
}
