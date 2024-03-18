import 'package:flutter/material.dart';

import '../config/palette.dart';
import 'reports/reports.dart';
import 'screens.dart';

class HomeScreen extends StatelessWidget {
  static const routeName = '/';
  const HomeScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
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
          toolbarHeight: 82,
          backgroundColor: Palette.serviceGreen,
          foregroundColor: Palette.primaryGreen,
          title: const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Report List',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 8,
              ),
              Text(
                'Welcome,',
                style: TextStyle(fontSize: 12),
              ),
            ],
          ),
          actions: [
            IconButton(
              padding: const EdgeInsets.all(10),
              icon: const Icon(Icons.logout),
              onPressed: () {
                Navigator.of(context).pushNamed(
                  LoginScreen.routeName,
                );
              },
            ),
          ],
          bottom: TabBar(
            indicatorSize: TabBarIndicatorSize.tab,
            indicatorColor: Palette.primaryGreen,
            indicatorWeight: 4,
            unselectedLabelColor: Palette.primaryGreen,
            unselectedLabelStyle: const TextStyle(fontSize: 10),
            labelColor: Palette.primaryGreen,
            labelStyle:
                const TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
            tabs: myTabs,
          ),
        ),
        body: const TabBarView(
          children: <Widget>[
            ListReport(),
            ListReport(),
            ListReport(),
            ListReport(),
          ],
        ),
        floatingActionButton: FloatingActionButton(
            onPressed: () {
              Navigator.of(context).pushNamed(
                AddReport.routeName,
              );
            }, child: const Icon(Icons.add)),
      ),
    );
  }
}
