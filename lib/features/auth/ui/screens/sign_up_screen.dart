import 'package:ecommerce_assignment/app/assets_path.dart';
import 'package:ecommerce_assignment/features/auth/ui/widgets/text_button_widget.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  bool _isPasswordVisible = true;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final textTheme = Theme.of(context).textTheme;

    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                AssetsPath.appLogo,
                height: 150,
                width: double.infinity,
                fit: BoxFit.contain,
              ),
              const SizedBox(height: 32),
              Center(
                child: Text(
                  'Sign Up For Free',
                  style: textTheme.headlineMedium,
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
                obscureText: true,
                decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.lock_open_sharp),
                  hintText: '********',
                ),
              ),
              const SizedBox(height: 16),

              Text('Confirm Password', style: textTheme.titleMedium),
              const SizedBox(height: 4),
              TextFormField(
                obscureText: _isPasswordVisible,
                decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.lock_open_sharp),
                  suffixIcon: IconButton(
                    onPressed: () {
                      setState(() => _isPasswordVisible = !_isPasswordVisible);
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

              ElevatedButton(onPressed: () {}, child: const Text('Sign Up')),

              SizedBox(height: size.height * 0.15),

              TextButtonWidget(
                onPressed: () {
                  Navigator.pop(context);
                },
                buttonText: 'Sign In',
                labelText: 'Already Have an account?',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
