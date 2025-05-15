import 'package:ecommerce_assignment/app/assets_path.dart';
import 'package:ecommerce_assignment/features/auth/ui/widgets/social_icon_widget.dart';
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
                iconLeft: FontAwesomeIcons.solidFile,
                text: 'Orders',
                text2: '',
              ),
              ProfileButtonWidget(
                onPressed: () {},
                iconLeft: FontAwesomeIcons.solidHeart,
                text: 'Wishlist',
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
                iconLeft: FontAwesomeIcons.solidCircleQuestion,
                text: 'Help',
                text2: '',
              ),
              Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SocialIconButton(
                    onTap: () {},
                    child: const Icon(FontAwesomeIcons.facebookF),
                  ),
                  const SizedBox(width: 4),
                  SocialIconButton(
                    onTap: () {},
                    child: const Icon(FontAwesomeIcons.google),
                  ),
                  const SizedBox(width: 4),
                  SocialIconButton(
                    onTap: () {},
                    child: const Icon(FontAwesomeIcons.linkedinIn),
                  ),
                ],
              ),
              const SizedBox(height:24),
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
