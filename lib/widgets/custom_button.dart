import 'package:flutter/material.dart';

import '../config/palette.dart';

class CustomButton extends StatelessWidget {
  final Function() myfunction;
  final String name;
  const CustomButton({
    super.key,
    required this.myfunction,
    required this.name,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        style: const ButtonStyle(
            foregroundColor: MaterialStatePropertyAll(Palette.primaryGreen),
            backgroundColor: MaterialStatePropertyAll(Palette.serviceGreen)),
        onPressed: myfunction,
        child: Text(name),
      ),
    );
  }
}
