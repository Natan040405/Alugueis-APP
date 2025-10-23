import 'package:alugueis_app/pages/login/page.dart';
import 'package:alugueis_app/theme/theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  static final appName = 'Imobilith';
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: appName,
      theme: AppTheme.getTheme(context),
      home: LoginPage(),
    );
  }
}
