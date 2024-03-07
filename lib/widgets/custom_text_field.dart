import 'package:flutter/material.dart';

class CustomTextField extends StatefulWidget {
  final TextEditingController mycontroller;
  final String hintText;
  final IconData prefixIcon;

  const CustomTextField({super.key, 
    required this.mycontroller,
    required this.hintText,
    required this.prefixIcon,
  });

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  bool _isObscure = false;
  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: widget.mycontroller,
      obscureText: widget.hintText == "Password" || widget.hintText == "Konfirmasi Password" ? !_isObscure : _isObscure,
      decoration: InputDecoration(
          hintText: widget.hintText,
          prefixIcon: Icon(widget.prefixIcon),
          suffixIcon: widget.hintText == "Password" || widget.hintText == "Konfirmasi Password"
              ? IconButton(
                  onPressed: () {
                    _isObscure = !_isObscure;
                    setState(() {});
                  },
                  icon: Icon(
                      !_isObscure ? Icons.visibility : Icons.visibility_off),
                )
              : null),
    );
  }
}
