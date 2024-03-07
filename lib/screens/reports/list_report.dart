import 'package:flutter/material.dart';
import 'package:easy_refresh/easy_refresh.dart';
import 'package:provider/provider.dart';
import 'package:service_app/data/data.dart';
import 'package:service_app/provider/providers.dart';

import '../../models/models.dart';
import '../../widgets/widgets.dart';

class ListReport extends StatelessWidget {
  const ListReport({super.key});

  @override
  Widget build(BuildContext context) {
    final report = Provider.of<ReportProvider>(context).report;
    const String personId = 'pid_3';
    List<Report> filtered = [];
    for (Report myreport in report) {
      if (myreport.personId.personId == personId) {
        filtered.add(myreport);
      }else{
        filtered.add(myreport);
      }
    }

    return EasyRefresh(
      onRefresh: () async {
        await Future.delayed(const Duration(seconds: 4));
      },
      child: ListView.builder(
        itemCount: filtered.length,
        padding: const EdgeInsets.symmetric(horizontal: 10),
        itemBuilder: (ctx, i) {
          return ReportItem(
            title: filtered[i].title,
            subtitle: filtered[i].description,
            progress: filtered[i].status,
            create: filtered[i].createAt.hour.toString(),
          );
        },
      ),
    );
  }
}
