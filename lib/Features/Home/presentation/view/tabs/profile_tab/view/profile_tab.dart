import 'package:flutter/material.dart';
import '../../../../../../../Core/component/custom_row_bottom.dart';
import '../../../../../../../Core/utilis/app_color.dart';

class ProfileTab extends StatelessWidget {
  const ProfileTab({super.key});

  @override
  Widget build(BuildContext context) {
    var height= MediaQuery.of(context).size.height;
    return Center(
      child: SizedBox(
        height: height*0.7,
        child: Card(
          margin: const EdgeInsets.all(24),
          color: AppColors.kWhiteColor,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(16)),
          ),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                const CircleAvatar(
                  radius: 56,
                  backgroundColor: AppColors.kPrimaryColor,
                  foregroundColor: AppColors.kWhiteColor,
                  child: Icon(Icons.person, size: 46,),
                ),
                SizedBox(height: height*0.03,),
                const Text("User Name", style: TextStyle(fontWeight: FontWeight.bold),),
                SizedBox(height: height*0.01,),
                const Text("abdelrhman95@gmail.com"),
                SizedBox(height: height*0.02,),
                CustomRowBottom(onTap: (){} ,iconData: Icons.person,text: "Edit Name",icon: Icons.arrow_forward_ios,),
                SizedBox(height: height*0.026,),
                CustomRowBottom(onTap: (){} ,iconData: Icons.shopping_basket,text: "My Cart",icon: Icons.arrow_forward_ios,),
                SizedBox(height: height*0.026,),
                CustomRowBottom(onTap: (){} ,iconData: Icons.logout,text: "Logout",icon: Icons.arrow_forward_ios,)
              ],
            ),
          ),
        ),
      ),
    );
  }
}

