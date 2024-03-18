import 'person_model.dart';

class Report {
  final String reportId;
  final String title;
  final String type;
  final String description;
  final String note;
  final DateTime createAt;
  final String status;
  final String image;
  final Person personId;

  Report(this.personId,
      {required this.reportId,
      required this.title,
      required this.type,
      required this.description,
      required this.note,
      required this.createAt,
      required this.status,
      required this.image});
}
