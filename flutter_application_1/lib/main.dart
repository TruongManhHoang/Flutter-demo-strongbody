import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/configs/theme/app_theme.dart';
import 'package:flutter_application_1/presentation/pages/new_models/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppTheme.lighTheme,
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
