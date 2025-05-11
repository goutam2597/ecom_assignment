import 'package:ecommerce_assignment/features/auth/ui/screens/login_screen.dart';
import 'package:ecommerce_assignment/features/auth/ui/widgets/text_button_widget.dart';
import 'package:flutter/material.dart';
import '../../../../app/assets_path.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                const SizedBox(height: 64),
                Image.asset(AssetsPath.wLogo, width: 80),
                const SizedBox(height: 16),
                Text(
                  'Welcome to your ultimate\nshopping experience!',
                  textAlign: TextAlign.center,
                  style: textTheme.headlineMedium,
                ),
                const SizedBox(height: 16),
                Text(
                  'Your stylish, smart shopping companion—made\nfor everyone, everywhere 🛍️',
                  textAlign: TextAlign.center,
                  style: textTheme.bodyLarge,
                ),
                const SizedBox(height: 24),
                Image.asset(AssetsPath.wFrame, width: double.infinity),
                const SizedBox(height: 32),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    maximumSize: const Size(184, 56),
                  ),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Get Started'),
                      SizedBox(width: 4),
                      Icon(Icons.arrow_forward, size: 24),
                    ],
                  ),
                ),
                const SizedBox(height: 32),
                TextButtonWidget(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (_) => const LoginScreen()),
                    );
                  },
                  buttonText: 'Sign In',
                  labelText: 'Have an account?',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
