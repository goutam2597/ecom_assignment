import 'package:ecommerce_assignment/app/app_colors.dart';
import 'package:ecommerce_assignment/features/home/ui/screens/home_screen.dart';
import 'package:ecommerce_assignment/features/products/ui/screens/all_products_screen.dart';
import 'package:ecommerce_assignment/features/profile/ui/screens/user_profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  late final List<Widget> _navScreens;

  @override
  void initState() {
    super.initState();
    _navScreens = [
      HomeScreen(onProfileTap: () => _onItemTapped(3)),
      Center(child: Text('Search')),
      AllProductsScreen(),
      UserProfileScreen(),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _navScreens[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: _onItemTapped,
        currentIndex: selectedIndex,
        backgroundColor: Colors.white,
        selectedItemColor: AppColors.themeColor,
        unselectedItemColor: Colors.grey,
        type: BottomNavigationBarType.fixed,
        elevation: 0,
        items: [
          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.house),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.magnifyingGlass),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.shop),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.solidUser),
            label: '',
          ),
        ],
      ),
    );
  }
}
