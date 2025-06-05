import 'package:flutter/material.dart';
import '../../../../../../../Core/component/product_list.dart';

class FavTab extends StatelessWidget {
  const FavTab({super.key});

  @override
  Widget build(BuildContext context) {
    var height= MediaQuery.of(context).size.height;

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListView(
        children: [
          const Align(
              alignment: Alignment.center,
              child: Text("Your Favorites Products", style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),)),
          SizedBox(height: height*0.02,),
          const ProductList(),
        ],
      ),

    );
  }
}
