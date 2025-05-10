import 'package:ecommerce_assignment/features/auth/ui/screens/login_screen.dart';
import 'package:flutter/material.dart';

import '../../../../app/assets_path.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                SizedBox(height: 64),
                Image.asset(AssetsPath.wLogo, width: 80),
                SizedBox(height: 16),
                Text(
                  'Welcome to your ultimate\nshopping experience!',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 16),
                Text(
                  'Your stylish, smart shopping companion—made\nfor everyone, everywhere 🛍️',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Colors.grey,
                  ),
                ),
                SizedBox(height: 24),
                Image.asset(AssetsPath.wFrame,width: double.infinity),
                SizedBox(height: 32),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(maximumSize: Size(184, 56)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Get Started'),
                      SizedBox(width: 4),
                      Icon(Icons.arrow_forward, size: 24),
                    ],
                  ),
                ),
                SizedBox(height: 32),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Already have an account?'),
                    TextButton(onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder:(context){
                        return LoginScreen();
                      }));
                    }, child: Text('Sign In')),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
