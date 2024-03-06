import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:service_app/provider/auth_person_provider.dart';

import '../config/palette.dart';
import 'reports/reports.dart';

class HomeScreen extends StatelessWidget {
  static const routeName = '/';
  const HomeScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dataReport = Provider.of<AuthPerson>(context);
    final dataPerson = Provider.of<AuthPerson>(context);
    final allReport = dataReport.report;
    final person = dataPerson.person;
    List<Tab> myTabs = [
      const Tab(
        text: 'All',
      ),
      const Tab(
        text: 'Open',
      ),
      const Tab(
        text: 'Progress',
      ),
      const Tab(
        text: 'Done',
      ),
    ];
    return DefaultTabController(
      initialIndex: 0,
      length: myTabs.length,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Palette.serviceGreen,
          foregroundColor: Palette.primaryGreen,
          title: const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Report List',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              Text(
                'Welcome }',
                style: TextStyle(fontSize: 12),
              ),
            ],
          ),
          actions: [
            IconButton(
              padding: const EdgeInsets.all(10),
              icon: const Icon(Icons.logout),
              onPressed: () {
                // Navigator.of(context).pushNamed(
                //   LoginScreen.routeName,
                // );
              },
            ),
          ],
          bottom: TabBar(
            indicatorSize: TabBarIndicatorSize.tab,
            indicatorColor: Palette.primaryGreen,
            indicatorWeight: 4,
            unselectedLabelColor: Palette.primaryGreen,
            unselectedLabelStyle:  const TextStyle(fontSize: 10),
            labelColor: Palette.primaryGreen,
            labelStyle: const TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
            tabs: myTabs,
          ),
        ),
        body: const TabBarView(
          children: <Widget>[
            ListReport(),
            Center(child: Text('Tab2'),),
            Center(child: Text('Tab3'),),
            Center(child: Text('Tab4'),),
          ],
        ),
        floatingActionButton:
            FloatingActionButton(onPressed: () {}, child: const Icon(Icons.add)),
      ),
    );
  }
}
