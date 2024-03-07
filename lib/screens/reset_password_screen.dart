import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:service_app/screens/login_screen.dart';

import '../provider/providers.dart';
import '../widgets/widgets.dart';

class ResetPasswordScreen extends StatelessWidget {
  static const routeName = '/reset';
  const ResetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController username = TextEditingController();
    TextEditingController password = TextEditingController();
    TextEditingController conpassw = TextEditingController();
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 34.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Reset Password',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            Consumer<AuthPerson>(builder: (contex, authPerson, child) {
              return Text(
                authPerson.errorMessage,
                style: const TextStyle(color: Colors.red, fontSize: 10),
              );
            }),
            CustomTextField(
              mycontroller: username,
              hintText: 'Username',
              prefixIcon: Icons.person,
            ),
            CustomTextField(
              mycontroller: password,
              hintText: 'Password',
              prefixIcon: Icons.lock,
            ),
            CustomTextField(
              mycontroller: conpassw,
              hintText: 'Konfirmasi Password',
              prefixIcon: Icons.lock,
            ),
            const SizedBox(height: 20),
            CustomButton(
              name: 'Ganti Password',
              myfunction: () async {
                await Future.delayed(Duration(seconds: 4));
                CircularProgressIndicator();
                Navigator.of(context).pushNamedAndRemoveUntil(
                    LoginScreen.routeName, (route) => false);
              },
            )
          ],
        ),
      ),
    );
  }
}
