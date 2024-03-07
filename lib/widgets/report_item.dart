import 'package:flutter/material.dart';

class ReportItem extends StatelessWidget {
  final String title;
  final String subtitle;
  final String progress;
  final String create;
  const ReportItem({super.key, required this.title, required this.subtitle, required this.progress, required this.create});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Icon(Icons.file_present_rounded),
        title: Text(title, style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500, overflow: TextOverflow.ellipsis),),
        subtitle: Text(subtitle, style: TextStyle(fontSize: 10, overflow: TextOverflow.ellipsis),),
        trailing: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              alignment: Alignment.center,
              width: 60,
              height: 20,
              decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.circular(6),
              ),
              child: Text(progress, style: TextStyle(fontSize: 6),),
            ),
            Text(create, style: TextStyle(fontSize: 8),),
          ],
        ),
      ),
    );
  }
}