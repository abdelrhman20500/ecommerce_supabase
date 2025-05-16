import 'package:ecommerce_supabase/Core/utilis/app_color.dart';
import 'package:ecommerce_supabase/Features/Auth/presentation/views/widgets/custom_row.dart';
import 'package:ecommerce_supabase/Features/Auth/presentation/views/widgets/custom_text_button.dart';
import 'package:ecommerce_supabase/Features/Auth/presentation/views/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  static const String routeName= "LoginScreen";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 24,),
              const Text("Welcome To Our Market", style:  TextStyle(fontSize: 24, fontWeight: FontWeight.bold),),
              const SizedBox(height: 24,),
              Card(
                margin: const EdgeInsets.all(24),
                color: AppColors.kWhiteColor,
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(16)),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    children: [
                      const CustomTextField(labelText: "Email",),
                      const SizedBox(height: 20,),
                      CustomTextField(labelText: "Password",isSecure: true,
                        suffixIcon: IconButton(onPressed: (){}, icon: const Icon(Icons.visibility_off)),),
                      const SizedBox(height: 20,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                         CustomTextButton(text: "Forget Password ?", onTab: (){},)
                        ],
                      ),
                      const SizedBox(height: 20,),
                     CustomRow(text: "Login",onPressed: (){},),
                      const SizedBox(height: 20,),
                      CustomRow(text: "Login with Google",onPressed: (){},),
                      const SizedBox(height: 20,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text("Already have an Account? ", style:TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold, color: AppColors.kBlackColor),),
                          CustomTextButton(text: "Sign Up",onTab: (){},),
                        ],
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}



