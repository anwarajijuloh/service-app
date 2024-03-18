import 'report_model.dart';

class Submission {
  final String submissionId;
  final String title;
  final String description;
  final DateTime createAt;
  final String status;
  final Report lid;

  Submission(
      {required this.submissionId,
      required this.title,
      required this.description,
      required this.createAt,
      required this.status,
      required this.lid});
}
