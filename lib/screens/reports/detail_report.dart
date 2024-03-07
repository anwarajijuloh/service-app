import 'package:flutter/material.dart';
import 'package:service_app/widgets/widgets.dart';

class DetailReport extends StatelessWidget {
  const DetailReport({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: Column(
        children: [
          CustomButton(myfunction: (){}, name: 'Preview Image'),
        ],
      ),
    );
  }
}