import 'package:flutter/material.dart';
import 'package:service_app/data/data.dart';
import 'package:service_app/models/models.dart';

class ReportProgressProvider with ChangeNotifier {
  List<ReportProgress> _progress = [];

  ReportProgressProvider() {
    _progress = dataReportProgress;
  }

  List<ReportProgress> get progress => _progress;

  ReportProgress findById(progressId) {
    return _progress.firstWhere((progress) => progress.reportId == progressId);
  }


  List<ReportProgress> filterProgressById(reportId) {
    return progress.where((prog) => prog.reportId.reportId == reportId).toList();
  }
}
