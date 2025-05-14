import 'package:flutter/material.dart';

import '../../../../app/assets_path.dart';

class AppBarUserProfileWidget extends StatelessWidget {
  const AppBarUserProfileWidget({
    super.key,
    required this.textTheme,
  });

  final TextTheme textTheme;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 48,
          width: 48,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(
              image: AssetImage(AssetsPath.pImage),
              fit: BoxFit.cover,
            ),
          ),
        ),
        const SizedBox(width: 8),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Hello!',
              style: textTheme.bodySmall!.copyWith(
                fontSize: 12,
                fontWeight: FontWeight.w500,
              ),
            ),
            Text(
              'John William',
              style: textTheme.titleMedium?.copyWith(
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      ],
    );
  }
}