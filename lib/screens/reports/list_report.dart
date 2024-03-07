import 'package:flutter/material.dart';
import 'package:easy_refresh/easy_refresh.dart';
import 'package:provider/provider.dart';

import '../../provider/providers.dart';
import '../../models/models.dart';
import '../../widgets/widgets.dart';

class ListReport extends StatelessWidget {
  final String menu;
  const ListReport({super.key, required this.menu});

  @override
  Widget build(BuildContext context) {
    final allreport = Provider.of<ReportProvider>(context).report;
    final personLogin = Provider.of<AuthPerson>(context).logged;
    List<Report> reports = [];
    if (personLogin!.role != 'teknisi') {
      for (Report myreport in allreport) {
        if (myreport.personId.personId == personLogin.personId) {
          if (myreport.status == menu) {
            reports.add(myreport);
          } else if (myreport.status == 'all') {
            reports = allreport;
          }
        }
      }
    } else {
      for (Report myreport in allreport) {
        if (myreport.status == menu) {
          reports.add(myreport);
        }
      }
    }

    return EasyRefresh(
      onRefresh: () async {
        await Future.delayed(const Duration(seconds: 4));
      },
      child: ListView.builder(
        itemCount: reports.length,
        padding: const EdgeInsets.symmetric(horizontal: 10),
        itemBuilder: (ctx, i) {
          return ReportItem(
            id: reports[i].reportId,
            title: reports[i].title,
            subtitle: reports[i].description,
            progress: reports[i].status,
            create: reports[i].createAt.hour.toString(),
          );
        },
      ),
    );
  }
}
