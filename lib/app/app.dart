import 'package:ecommerce_assignment/app/app_theme_data.dart';
import 'package:ecommerce_assignment/features/auth/ui/screens/splash_screen.dart';
import 'package:flutter/material.dart';

class EcomA extends StatelessWidget {
  const EcomA({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SplashScreen(),
      debugShowCheckedModeBanner: false,
      theme: AppThemeData.lightTheme,
    );
  }
}
