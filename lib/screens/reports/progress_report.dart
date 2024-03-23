import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../models/models.dart';
import '../../core.dart';
import '../../widgets/timeline_progress.dart';

class ProgressReport extends StatelessWidget {
  final Report myreport;
  const ProgressReport({super.key, required this.myreport});

  @override
  Widget build(BuildContext context) {
    final myprogress = Provider.of<ReportProgressProvider>(context).filterProgressById(myreport.reportId);
    return Column(
      children: [
        ProgressCard(
          title: myreport.title, 
          imageUrl: myreport.image, 
          timeStamp: myreport.createAt.toString(),
        ),
        Expanded(
          child: ListView.builder(
            itemCount: myprogress.length,
            itemBuilder: (context, index) {
              return TimelineProgress(
                isFirst: index == 0 ? false : false,
                isLast: index +1 == myprogress.length ? true : false,
                title: myprogress[index].title,
                timeStamp: '28 Feb\n${(index+3)*2}.00',
                description: myprogress[index].description,
                id: (index + 1).toString(),
                estimated: '${myprogress[index].estimatedProgress} ${myprogress[index].actualProgress}',
              );
            },
          ),
        ),
      ],
    );
  }
}

class ProgressCard extends StatelessWidget {
  final String title;
  final String imageUrl;
  final String timeStamp;
  const ProgressCard({
    super.key, required this.title, required this.imageUrl, required this.timeStamp,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: ListTile(
        contentPadding: const EdgeInsets.symmetric(vertical: 6, horizontal: 18),
        leading: SizedBox(
          width: 80,
          height: 80,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.network(imageUrl, fit: BoxFit.cover,),
          ),
        ),
        title: Text(
          title,
          style: const TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.bold,
          ),
        ),
        subtitle: Row(
          children: [
            const Text(
              'Diterima pada : ',
              style: TextStyle(fontSize: 8),
            ),
            Text(
              timeStamp,
              style: TextStyle(
                fontSize: 8,
                fontWeight: FontWeight.bold,
                color: Theme.of(context).primaryColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
