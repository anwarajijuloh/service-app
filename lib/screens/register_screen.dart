import 'package:flutter/material.dart';

import '../widgets/widgets.dart';

class RegisterScreen extends StatelessWidget {
  static const routeName = '/register';
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController name = TextEditingController();
    final TextEditingController uname = TextEditingController();
    final TextEditingController passw = TextEditingController();
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 34.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Register Page',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            CustomTextField(
              mycontroller: name,
              hintText: 'Name',
              prefixIcon: Icons.person_pin_rounded,
            ),
            const CustomDropdown(),
            CustomTextField(
              mycontroller: uname,
              hintText: 'Username',
              prefixIcon: Icons.person,
            ),
            CustomTextField(
              mycontroller: passw,
              hintText: 'Password',
              prefixIcon: Icons.lock,
            ),
            const SizedBox(height: 20),
            CustomButton(
              name: 'Daftar',
              myfunction: () {},
            ),
            const SizedBox(height: 5),
            CustomButton(
              name: 'Login',
              myfunction: () {},
            ),
          ],
        ),
      ),
    );
  }
}
