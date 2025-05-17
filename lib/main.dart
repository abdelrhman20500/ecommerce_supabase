import 'package:ecommerce_supabase/Core/utilis/app_color.dart';
import 'package:ecommerce_supabase/Features/Auth/presentation/views/forget_password_screen.dart';
import 'package:flutter/material.dart';

import 'Features/Auth/presentation/views/login_screen.dart';
import 'Features/Home/presentation/view/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(scaffoldBackgroundColor: AppColors.kScaffoldColor),
      home: const HomeScreen(),
      // routes: {
      //   LoginScreen.routeName: (_) => const LoginScreen(),
      //   SignUpScreen.routeName: (_) => const SignUpScreen(),
      //   ForgetPasswordScreen.routeName:(_)=>const ForgetPasswordScreen(),
      // },
      // initialRoute: LoginScreen.routeName,
    );
  }
}
