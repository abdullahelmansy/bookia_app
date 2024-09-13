import 'package:bookia_app/core/utils/themes.dart';
import 'package:bookia_app/feature/info/splash_view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const SplashView(),
      theme: AppThemes.lightTheme,
      debugShowCheckedModeBanner: false,
    );
  }
}
