import 'package:ecommerce_supabase/Core/utilis/app_color.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
          color: AppColors.kWhiteColor
        ),
        child: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 15.0),
          child: GNav(
              rippleColor: AppColors.kPrimaryColor, // tab button ripple color when pressed
              hoverColor: AppColors.kPrimaryColor, // tab button hover color
              haptic: true, // haptic feedback
              tabBorderRadius: 15,
              duration: Duration(milliseconds: 200), // tab animation duration
              gap: 8, // the tab button gap between icon and text
              color: AppColors.kGreyColor, // unselected icon color
              activeColor: AppColors.kWhiteColor, // selected icon and text color
              iconSize: 24, // tab button icon size
              tabBackgroundColor: AppColors.kPrimaryColor, // selected tab background color
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12), // navigation bar padding
              tabs: [
                GButton(icon: Icons.home, text: 'Home',),
                GButton(icon: Icons.store, text: 'Store',),
                GButton(icon: Icons.favorite, text: 'Favorite',),
                GButton(icon: Icons.person, text: 'Profile',),
              ]
          ),
        ),
      ),
    );
  }
}
