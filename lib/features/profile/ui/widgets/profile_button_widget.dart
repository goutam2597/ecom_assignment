import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ProfileButtonWidget extends StatelessWidget {
  final VoidCallback onPressed;
  final IconData iconLeft;
  final String text;
  final String? text2;

  const ProfileButtonWidget({
    super.key,
    required this.onPressed,
    required this.iconLeft,
    required this.text, this.text2,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          elevation: 0.5,
          backgroundColor: Colors.grey.shade100,
        ),
        onPressed: onPressed,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: Row(
            children: [
              Icon(iconLeft, size: 24, color: Colors.grey.shade800),
              SizedBox(width: 12),
              Text(text, style: TextStyle(color: Colors.grey.shade800)),
              Spacer(),
              Text(text2!,style: TextStyle(color: Colors.grey.shade800,fontWeight: FontWeight.w400,fontSize: 16)),
              SizedBox(width: 12),
              Icon(
                FontAwesomeIcons.chevronRight,
                size: 24,
                color: Colors.grey.shade800,
              ),
            ],
          ),
        ),
      ),
    );
  }
}