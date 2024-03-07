import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '/provider/auth_person_provider.dart';
import '/widgets/widgets.dart';
import 'screens.dart';

class LoginScreen extends StatelessWidget {
  static const routeName = '/login';
  const LoginScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final authPerson = Provider.of<AuthPerson>(context);

    final TextEditingController uname = TextEditingController();
    final TextEditingController passw = TextEditingController();
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 34.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Login Page',
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
              name: 'Masuk',
              myfunction: () {
                String username = uname.text;
                String password = passw.text;
                authPerson.login(username, password);
                if (authPerson.isLogin) {
                  Navigator.of(context)
                      .pushNamedAndRemoveUntil(HomeScreen.routeName, (route) => false);
                }
              },
            ),
            const SizedBox(height: 5),
            CustomButton(
              name: 'Daftar',
              myfunction: () {
                Navigator.of(context).pushNamedAndRemoveUntil(
                    RegisterScreen.routeName, (route) => false);
              },
            ),
            const SizedBox(height: 25),
            TextButton(
                onPressed: () {
                  Navigator.of(context).pushNamedAndRemoveUntil(
                      ResetPasswordScreen.routeName, (route) => false);
                },
                child: const Text('Lupa Password?'))
          ],
        ),
      ),
    );
  }
}
