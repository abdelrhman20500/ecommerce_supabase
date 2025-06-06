import 'package:ecommerce_supabase/Core/utilis/app_color.dart';
import 'package:ecommerce_supabase/Features/Auth/presentation/views/forget_password_screen.dart';
import 'package:ecommerce_supabase/Features/Auth/presentation/views/sign_up_screen.dart';
import 'package:ecommerce_supabase/Features/Auth/presentation/views/widgets/custom_row.dart';
import 'package:ecommerce_supabase/Features/Auth/presentation/views/widgets/custom_text_button.dart';
import 'package:ecommerce_supabase/Features/Auth/presentation/views/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  static const String routeName= "LoginScreen";

  @override
  Widget build(BuildContext context) {
    var height= MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: height*0.08,),
              const Text("Welcome To Our Market", style:  TextStyle(fontSize: 24, fontWeight: FontWeight.bold),),
              SizedBox(height: height*0.05,),
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
                      SizedBox(height: height*0.03,),
                      CustomTextField(labelText: "Password",isSecure: true,
                        suffixIcon: IconButton(onPressed: (){}, icon: const Icon(Icons.visibility_off)),),
                      SizedBox(height: height*0.03,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                         CustomTextButton(text: "Forget Password ?", onTab: ()
                         {
                           Navigator.pushNamed(context, ForgetPasswordScreen.routeName);
                         },)
                        ],
                      ),
                      SizedBox(height: height*0.027,),
                      CustomRow(text: "Login",onPressed: (){},),
                      SizedBox(height: height*0.027,),
                      CustomRow(text: "Login with Google",onPressed: (){},),
                      SizedBox(height: height*0.027,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text("I Don't have an Account? ", style:TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold, color: AppColors.kBlackColor),),
                          CustomTextButton(text: "Sign Up",onTab: ()
                          {
                            Navigator.pushNamed(context, SignUpScreen.routeName);
                          },),
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



