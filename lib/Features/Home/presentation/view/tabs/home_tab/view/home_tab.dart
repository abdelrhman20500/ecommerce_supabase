import 'package:ecommerce_supabase/Core/utilis/app_color.dart';
import 'package:ecommerce_supabase/Features/Auth/presentation/views/widgets/custom_text_button.dart';
import 'package:flutter/material.dart';
import '../../../widget/categories_list.dart';
import '../../../widget/custom_search_field.dart';

class HomeTab extends StatelessWidget {
  const HomeTab({super.key});

  @override
  Widget build(BuildContext context) {
    var height= MediaQuery.of(context).size.height;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListView(
        children: [
          const CustomSearchField(),
          SizedBox(height: height*0.03,),
          Image.asset("assets/images/buy.jpg"),
          SizedBox(height: height*0.03,),
          const Text("Popular Categories", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
          SizedBox(height: height*0.03,),
          CategoriesList(height: height),
          SizedBox(height: height*0.03,),
          Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),),
              color: AppColors.kWhiteColor,
            child: Column(
              children: [
                Stack(
                  children: [
                    ClipRRect(
                        borderRadius: const BorderRadius.only(
                          topRight: Radius.circular(12.0),
                          bottomRight:Radius.circular(12.0),
                          bottomLeft: Radius.circular(12.0),
                        ),
                        child: Image.asset("assets/images/buy.jpg")),
                    Positioned(
                        child: Container(
                          alignment: Alignment.center,
                          width: 65,
                          height: 35,
                          decoration: const BoxDecoration(
                            color: AppColors.kPrimaryColor,
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(16),
                              bottomRight: Radius.circular(16),
                            )
                          ),
                          child: const Text("10% Off", style: TextStyle(color: AppColors.kWhiteColor),),
                        )
                    )
                  ],
                ),
                SizedBox(height: height*0.01,),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text("Product Name",style: TextStyle(fontSize: 18,
                          fontWeight: FontWeight.bold),),
                          IconButton(onPressed: (){}, icon: const Icon(Icons.favorite))
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Column(
                            children: [
                              Text("100 LE",style: TextStyle(fontSize: 18,
                                  fontWeight: FontWeight.bold),),
                              Text("120 LE",style: TextStyle(
                                  decoration: TextDecoration.lineThrough,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold, color: AppColors.kGreyColor),)
                            ],
                          ),
                          Container(
                            alignment: Alignment.center,
                            height: 40,
                              width: 100,
                              decoration: BoxDecoration(
                                color: AppColors.kPrimaryColor,
                                borderRadius: BorderRadius.circular(8)
                              ),
                              child: CustomTextButton(text: "Buy Now", color:AppColors.kWhiteColor,onTab: (){},))
                        ],
                      ),
                    ],
                  ),
                )
              ],
            )
          )
        ],
      ),

    );
  }
}

