import 'package:ecommerce_supabase/Core/utilis/app_color.dart';
import 'package:ecommerce_supabase/Features/layout/presentation/view/layout_screen.dart';
import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Supabase.initialize(
    url: 'https://hydyokxrqrowtiqfdypo.supabase.co',
    anonKey: 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imh5ZHlva3hycXJvd3RpcWZkeXBvIiwicm9sZSI6ImFub24iLCJpYXQiOjE3NjYxNDM3MzQsImV4cCI6MjA4MTcxOTczNH0.2OTvftpCU3dmGvnYw8_YGQUQco4Wgt46fV0ccuw8gBkYOUR_SUPABASE_PUBLISHABLE_KEY',
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(scaffoldBackgroundColor: AppColors.kScaffoldColor),
      home: LayoutScreen(),
      // routes: {
      //   LoginScreen.routeName: (_) => const LoginScreen(),
      //   SignUpScreen.routeName: (_) => const SignUpScreen(),
      //   ForgetPasswordScreen.routeName:(_)=>const ForgetPasswordScreen(),
      // },
      // initialRoute: LoginScreen.routeName,
    );
  }
}
