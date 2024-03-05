import 'report_model.dart';

class ReportProgress {
  final String reportProgressId;
  final String title;
  final String description;
  final DateTime createAt;
  final String estimatedProgress;
  final String actualProgress;
  final Report reportId;

  ReportProgress(
    this.reportId, {
    required this.reportProgressId,
    required this.title,
    required this.description,
    required this.createAt,
    required this.estimatedProgress,
    required this.actualProgress,
  });
}
