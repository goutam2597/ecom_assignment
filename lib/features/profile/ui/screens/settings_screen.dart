import 'package:ecommerce_assignment/features/profile/ui/screens/user_profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../widgets/profile_button_widget.dart';

class SettingsScreen extends StatelessWidget {
  final UserProfile userProfile;
  const SettingsScreen({super.key, required this.userProfile});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Settings')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Account',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 8),
            GestureDetector(
              onTap: (){},
              child: Card(
                color: Colors.grey.shade100,
                child: Padding(
                  padding: const EdgeInsets.all(8),
                  child: Row(
                    children: [
                      SizedBox(
                        height: 64,
                        width: 64,
                        child: userProfile.profilePicture,
                      ),
                      SizedBox(width: 12),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            userProfile.name,
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                              color: Colors.black,
                            ),
                          ),
                          Text(
                            userProfile.email,
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                      Spacer(),
                      Icon(FontAwesomeIcons.chevronRight),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 16),
            Text(
              'Settings',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 8),
            ProfileButtonWidget(
              onPressed: () {},
              iconLeft: FontAwesomeIcons.solidBell,
              text: 'Notifications',
              text2: '',
            ),
            ProfileButtonWidget(
              onPressed: () {},
              iconLeft: FontAwesomeIcons.language,
              text: 'Language',
              text2: 'English',
            ),
            ProfileButtonWidget(
              onPressed: () {},
              iconLeft: FontAwesomeIcons.shieldCat,
              text: 'Privacy',
              text2: '',
            ),
            ProfileButtonWidget(
              onPressed: () {},
              iconLeft: FontAwesomeIcons.solidCircleQuestion,
              text: 'Help',
              text2: '',
            ),
            ProfileButtonWidget(
              onPressed: () {},
              iconLeft: FontAwesomeIcons.circleInfo,
              text: 'About Us',
              text2: '',
            ),
          ],
        ),
      ),
    );
  }
}
