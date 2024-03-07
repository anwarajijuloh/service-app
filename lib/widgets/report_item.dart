import 'package:flutter/material.dart';

import '../screens/screens.dart';
import '../config/palette.dart';

class ReportItem extends StatelessWidget {
  final String id;
  final String title;
  final String subtitle;
  final String progress;
  final String create;
  const ReportItem(
      {super.key,
      required this.title,
      required this.subtitle,
      required this.progress,
      required this.create,
      required this.id});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        onTap: () {
          Navigator.of(context).pushNamed(ReportScreen.routeName, arguments: id);
        },
        leading: const Icon(Icons.file_present_rounded),
        title: Text(
          title,
          style: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w500,
              overflow: TextOverflow.ellipsis),
        ),
        subtitle: Text(
          subtitle,
          style: const TextStyle(fontSize: 10, overflow: TextOverflow.ellipsis),
        ),
        trailing: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              alignment: Alignment.center,
              width: 60,
              height: 20,
              decoration: BoxDecoration(
                color: colorStatus(progress),
                borderRadius: BorderRadius.circular(6),
              ),
              child: Text(
                progress,
                style: const TextStyle(fontSize: 6, color: Colors.white),
              ),
            ),
            Text(
              create,
              style: const TextStyle(fontSize: 8),
            ),
          ],
        ),
      ),
    );
  }
}
