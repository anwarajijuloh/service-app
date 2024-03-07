import 'package:flutter/material.dart';
import 'package:service_app/config/palette.dart';
import 'package:provider/provider.dart';

import 'provider/providers.dart';
import 'screens/screens.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => AuthPerson()),
        ChangeNotifierProvider(create: (_) => PersonProvider()),
        ChangeNotifierProvider(create: (_) => ReportProvider()),
        ChangeNotifierProvider(create: (_) => ReportProgressProvider()),
        ChangeNotifierProvider(create: (_) => ServiceCallbackProvider()),
        ChangeNotifierProvider(create: (_) => SubmissionProvider()),
      ],
      child: MaterialApp(
        theme: ThemeData(
          colorSchemeSeed: Palette.serviceGreen,
        ),
        initialRoute: HomeScreen.routeName,
        routes: {
          HomeScreen.routeName: (_) => const HomeScreen(),
          LoginScreen.routeName: (_) => const LoginScreen(),
          RegisterScreen.routeName: (_) => const RegisterScreen(),
          ResetPasswordScreen.routeName: (_) => const ResetPasswordScreen(),
        },
      ),
    );
  }
}
