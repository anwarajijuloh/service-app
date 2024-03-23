import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/providers.dart';
import '../config/palette.dart';
import 'reports/reports.dart';

class ReportScreen extends StatelessWidget {
  static const routeName = '/report';
  const ReportScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final reportId = ModalRoute.of(context)!.settings.arguments as String;
    final myReport = Provider.of<ReportProvider>(context).findById(reportId);
    List<Tab> reportTab = [
      const Tab(
        text: 'Detail',
      ),
      const Tab(
        text: 'Progress',
      ),
      const Tab(
        text: 'Pengajuan',
      ),
    ];
    return DefaultTabController(
      initialIndex: 0,
      length: reportTab.length,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Palette.serviceGreen,
          foregroundColor: Palette.primaryGreen,
          title: const Text('Detail Report'),
          bottom: TabBar(
            indicatorSize: TabBarIndicatorSize.tab,
            indicatorColor: Palette.primaryGreen,
            indicatorWeight: 4,
            unselectedLabelColor: Palette.primaryGreen,
            unselectedLabelStyle: const TextStyle(fontSize: 10),
            labelColor: Palette.primaryGreen,
            labelStyle:
                const TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
            tabs: reportTab,
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            DetailReport(myreport: myReport,),
            ProgressReport(myreport: myReport,),
            SubmissionReport(),
          ],
        ),
      ),
    );
  }
}
