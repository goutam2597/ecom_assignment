import 'package:ecommerce_assignment/app/assets_path.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Spacer(),
            Image.asset(AssetsPath.appLogo, width: 150),
            Text(
              'Welcome to your ultimate \n shopping experience',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 18),
            ),
            Spacer(),
            CircularProgressIndicator(),
            SizedBox(height: 50,)
          ],
        ),
      ),
    );
  }
}
