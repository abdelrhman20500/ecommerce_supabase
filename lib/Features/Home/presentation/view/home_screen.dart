import 'dart:math';

import 'package:ecommerce_supabase/Core/utilis/app_color.dart';
import 'package:ecommerce_supabase/Features/Home/presentation/view/tabs/fav_tab/view/fav_tab.dart';
import 'package:ecommerce_supabase/Features/Home/presentation/view/tabs/home_tab/view/home_tab.dart';
import 'package:ecommerce_supabase/Features/Home/presentation/view/tabs/profile_tab/view/profile_tab.dart';
import 'package:ecommerce_supabase/Features/Home/presentation/view/tabs/store_tab/view/store_tab.dart';
import 'package:ecommerce_supabase/Features/Home/presentation/view_manger/cubit/nav_bar_cubit.dart';
import 'package:ecommerce_supabase/Features/Home/presentation/view_manger/cubit/nav_bar_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class HomeScreen extends StatelessWidget {
   HomeScreen({super.key});

  final List<Widget> tabs=[
    const HomeTab(),
    const StoreTab(),
    const FavTab(),
    const ProfileTab(),
  ];
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NavBarCubit(),
      child: BlocBuilder<NavBarCubit, NavBarState>(
        builder: (context, state) {
          var cubit = BlocProvider.of<NavBarCubit>(context);
          return Scaffold(
            body: SafeArea(
                child: tabs[cubit.currentIndex]
            ),
            bottomNavigationBar: Container(
              decoration: const BoxDecoration(
                  color: AppColors.kWhiteColor
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 15.0),
                child: GNav(
                    onTabChange: (index) {
                      cubit.changeIndex(index); // Update the index here
                    },
                    rippleColor: AppColors.kPrimaryColor, // tab button ripple color when pressed
                    hoverColor: AppColors.kPrimaryColor, // tab button hover color
                    haptic: true, // haptic feedback
                    tabBorderRadius: 15,
                    duration: const Duration(milliseconds: 200), // tab animation duration
                    gap: 8, // the tab button gap between icon and text
                    color: AppColors.kGreyColor, // unselected icon color
                    activeColor: AppColors.kWhiteColor, // selected icon and text color
                    iconSize: 24, // tab button icon size
                    tabBackgroundColor: AppColors.kPrimaryColor, // selected tab background color
                    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12), // navigation bar padding
                    tabs: const [
                      GButton(icon: Icons.home, text: 'Home',),
                      GButton(icon: Icons.store, text: 'Store',),
                      GButton(icon: Icons.favorite, text: 'Favorite',),
                      GButton(icon: Icons.person, text: 'Profile',),
                    ]
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
