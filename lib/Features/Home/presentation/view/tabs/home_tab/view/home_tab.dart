import 'package:flutter/material.dart';
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
          Image.asset("assets/images/buy.jpg")
        ],
      ),
    );
  }
}

