import 'package:flutter/material.dart';
import 'package:easy_refresh/easy_refresh.dart';
import 'package:provider/provider.dart';

import '../../provider/providers.dart';
import '../../widgets/widgets.dart';

class ListReport extends StatelessWidget {
  final String? query;
  const ListReport({super.key, this.query});

  @override
  Widget build(BuildContext context) {
    final allreport = Provider.of<ReportProvider>(context).report;

    return EasyRefresh(
      onRefresh: () async {
        await Future.delayed(const Duration(seconds: 4));
      },
      child: ListView.builder(
        itemCount: allreport.length,
        padding: const EdgeInsets.symmetric(horizontal: 10),
        itemBuilder: (ctx, i) {
          return ReportItem(
            id: allreport[i].reportId,
            title: allreport[i].title,
            subtitle: allreport[i].description,
            progress: allreport[i].status,
            create: allreport[i].createAt.hour.toString(),
          );
        },
      ),
    );
  }
}
