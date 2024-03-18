import 'package:flutter/material.dart';

class AddReport extends StatelessWidget {
  static const routeName = '/add_report';
  const AddReport({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add Report'),
      ),
    );
  }
}
