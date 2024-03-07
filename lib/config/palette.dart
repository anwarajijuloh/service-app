import 'package:flutter/material.dart';

class Palette{
  static const Color serviceGreen = Color(0xFF3A6344);
  static const Color primaryGreen = Color(0xFFF1FEF4);
}

Color colorStatus(status) {
  if (status == 'open'){
    return Colors.blue;
  }else if(status == 'progress'){
    return Colors.orange;
  }else{
    return Colors.green;
  }
}