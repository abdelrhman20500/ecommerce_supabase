import 'package:ecommerce_supabase/Features/Auth/presentation/views/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';
import '../../../../Core/utilis/app_color.dart';

class ForgetPasswordScreen extends StatelessWidget {
  const ForgetPasswordScreen({super.key});

  static const String routeName ="ForgetPasswordScreen";
  @override
  Widget build(BuildContext context) {
    var height= MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: height*0.08,),
              const Padding(
                padding: EdgeInsets.only(left: 8.0),
                child: Text("Enter Your Email To Reset Password", style:  TextStyle(fontSize: 24, fontWeight: FontWeight.bold),),
              ),
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
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(16)
                              ),
                              backgroundColor: AppColors.kPrimaryColor,
                              foregroundColor: AppColors.kWhiteColor
                          ),
                          onPressed:(){}, child: const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 12.0,vertical: 12),
                        child: Text("Send", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                      ))
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
