import 'package:flutter/material.dart';
import 'package:easy_refresh/easy_refresh.dart';
import 'package:service_app/widgets/skeleton_list_item.dart';

class ListReport extends StatelessWidget {
  const ListReport({super.key});

  @override
  Widget build(BuildContext context) {
    return EasyRefresh(
      onRefresh: () async {
        await Future.delayed(const Duration(seconds: 4));
      },
      child: ListView.builder(
        itemCount: 20,
        padding: const EdgeInsets.symmetric(horizontal: 10),
        itemBuilder: (ctx, i) {
          return SkeletonListItem();
        },
      ),
    );
  }
}
