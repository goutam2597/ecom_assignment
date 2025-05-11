import 'package:flutter/material.dart';

class TextButtonWidget extends StatelessWidget {
  final String? labelText;
  final VoidCallback onPressed;
  final String buttonText;
  const TextButtonWidget({
    super.key,
    this.labelText,
    required this.onPressed,
    required this.buttonText,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(labelText ?? '',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500),),
        TextButton(
          onPressed: onPressed,
          child: Text(buttonText),
        ),
      ],
    );
  }
}