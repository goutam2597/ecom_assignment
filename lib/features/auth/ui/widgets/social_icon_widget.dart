import 'package:flutter/material.dart';

class SocialIconButton extends StatelessWidget {
  final Widget child;
  final VoidCallback onTap;
  const SocialIconButton({super.key, required this.child, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(100),
      child: Container(
        height: 56,
        width: 56,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(color: Colors.grey.shade400, width: 1.5),
        ),
        child: child,
      ),
    );
  }
}
