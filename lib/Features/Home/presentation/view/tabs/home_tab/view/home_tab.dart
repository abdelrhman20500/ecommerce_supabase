import 'package:flutter/material.dart';
import '../../../../../../../Core/component/product_card.dart';
import '../../../../../../../Core/component/product_list.dart';
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
          const Text("Recently Products", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
          SizedBox(height: height*0.02,),
          const ProductList(),
        ],
      ),

    );
  }
}







