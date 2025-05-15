import 'package:ecommerce_assignment/app/assets_path.dart';
import 'package:ecommerce_assignment/features/profile/ui/screens/settings_screen.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../widgets/profile_button_widget.dart';

class UserProfileScreen extends StatelessWidget {
  const UserProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final profilePic = ProfilePictureWidget();
    final userProfile = UserProfile(
      profilePic,
      name: 'John William',
      email: 'name@domain.com',
    );

    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              SizedBox(height: 100),
              userProfile.profilePicture,
              SizedBox(height: 16),
              Text(
                userProfile.name,
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 4),
              Text(
                userProfile.email,
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.grey,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(height: 24),
              ProfileButtonWidget(
                onPressed: () {},
                iconLeft: FontAwesomeIcons.solidUser,
                text: 'Profile',
                text2: '',
              ),
              ProfileButtonWidget(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder:
                          (context) => SettingsScreen(userProfile: userProfile),
                    ),
                  );
                },
                iconLeft: FontAwesomeIcons.gear,
                text: 'Settings',
                text2: '',
              ),
              ProfileButtonWidget(
                onPressed: () {},
                iconLeft: FontAwesomeIcons.solidEnvelope,
                text: 'Contact',
                text2: '',
              ),
              ProfileButtonWidget(
                onPressed: () {},
                iconLeft: FontAwesomeIcons.shareNodes,
                text: 'Share App',
                text2: '',
              ),
              ProfileButtonWidget(
                onPressed: () {},
                iconLeft: FontAwesomeIcons.solidCircleQuestion,
                text: 'Help',
                text2: '',
              ),
              Spacer(),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
                child: Text('Sign Out'),
              ),
              SizedBox(height: 16),
            ],
          ),
        ),
      ),
    );
  }
}

class ProfilePictureWidget extends StatelessWidget {
  const ProfilePictureWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 100,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(
          image: AssetImage(AssetsPath.pImage),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}

class UserProfile {
  final String name;
  final String email;
  final Widget profilePicture;

  UserProfile(this.profilePicture, {required this.name, required this.email});
}
