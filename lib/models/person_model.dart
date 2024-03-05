import 'role_model.dart';

class Person {
  final String personId;
  final String name;
  final String username;
  final String password;
  final String job;
  final Role roleId;

  Person(this.roleId, {required this.personId, required this.name, required this.username, required this.password, required this.job,});

  
}
