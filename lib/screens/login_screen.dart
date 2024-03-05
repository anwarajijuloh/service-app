import 'package:flutter/material.dart';

import '../widgets/widget.dart';

class LoginScreen extends StatelessWidget {
  
  const LoginScreen({super.key,});

  @override
  Widget build(BuildContext context) {
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
            CustomButton(name: 'Masuk', myfunction: () {
              if (uname.toString() == 'mega' && passw.toString() == '123') {
                AlertDialog(content: Text('berhasil'),);
              }else{
                AlertDialog(content: Text('Gagal'),);
              }
             },),
            const SizedBox(height: 5),
            CustomButton(name: 'Daftar', myfunction: () {  },),
            const SizedBox(height: 25),
            TextButton(onPressed: (){}, child: const Text('Lupa Password?'))
          ],
        ),
      ),
    );
  }
}


