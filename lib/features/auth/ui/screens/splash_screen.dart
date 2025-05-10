import 'package:ecommerce_assignment/app/assets_path.dart';
import 'package:ecommerce_assignment/features/auth/ui/screens/welcome_screen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    _moveToWelcomeScreen();
    super.initState();
  }

  Future<void> _moveToWelcomeScreen() async {
    await Future.delayed(Duration(seconds: 2));
    if (mounted) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) {
            return WelcomeScreen();
          },
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Spacer(),
            Image.asset(AssetsPath.appLogo, width: 250),
            SizedBox(height: 16),
            Text(
              'Welcome to your ultimate \n shopping experience',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
            ),
            Spacer(),
            CircularProgressIndicator(),
            SizedBox(height: 50),
          ],
        ),
      ),
    );
  }
}
