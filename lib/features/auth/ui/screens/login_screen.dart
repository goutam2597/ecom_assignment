import 'package:ecommerce_assignment/app/assets_path.dart';
import 'package:ecommerce_assignment/features/auth/ui/screens/sign_up_screen.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../widgets/social_icon_widget.dart';
import '../widgets/text_button_widget.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool _isPasswordVisible = true;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 64),
              Image.asset(
                AssetsPath.appLogo,
                height: 150,
                width: double.infinity,
                fit: BoxFit.contain,
              ),
              const SizedBox(height: 32),
              Center(
                child: Text(
                  'Sign in to your account!',
                  style: textTheme.headlineMedium!.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(height: 24),

              Text('Email', style: textTheme.titleMedium),
              const SizedBox(height: 4),
              TextFormField(
                decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.email_outlined),
                  hintText: 'user@email.com',
                ),
              ),
              const SizedBox(height: 16),

              Text('Password', style: textTheme.titleMedium),
              const SizedBox(height: 4),
              TextFormField(
                obscureText: _isPasswordVisible,
                decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.lock_open_sharp),
                  suffixIcon: IconButton(
                    onPressed: () {
                      setState(() {
                        _isPasswordVisible = !_isPasswordVisible;
                      });
                    },
                    icon: Icon(
                      _isPasswordVisible
                          ? Icons.visibility_off
                          : Icons.visibility,
                    ),
                  ),
                  hintText: '********',
                ),
              ),
              const SizedBox(height: 24),

              ElevatedButton(
                onPressed: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text('Login'),
                    SizedBox(width: 4),
                    Icon(FontAwesomeIcons.arrowRightLong, size: 18),
                  ],
                ),
              ),

              const SizedBox(height: 24),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SocialIconButton(
                    onTap: () {},
                    child: const Icon(FontAwesomeIcons.facebookF),
                  ),
                  const SizedBox(width: 8),
                  SocialIconButton(
                    onTap: () {},
                    child: const Icon(FontAwesomeIcons.google),
                  ),
                  const SizedBox(width: 8),
                  SocialIconButton(
                    onTap: () {},
                    child: const Icon(FontAwesomeIcons.linkedinIn),
                  ),
                ],
              ),

              const SizedBox(height: 24),

              TextButtonWidget(
                labelText: 'Don\'t have an account?',
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const SignUpScreen(),
                    ),
                  );
                },
                buttonText: 'Sign Up',
              ),

              TextButtonWidget(
                onPressed: () {},
                buttonText: 'Forgot Password?',
              ),
              SizedBox(height: size.height * 0.1),
            ],
          ),
        ),
      ),
    );
  }
}
