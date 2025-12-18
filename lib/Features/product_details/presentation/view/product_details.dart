import 'package:ecommerce_supabase/Core/component/cached_image.dart';
import 'package:ecommerce_supabase/Core/functions/build_app_bar.dart';
import 'package:flutter/material.dart';

class ProductDetails extends StatelessWidget {
  const ProductDetails({super.key});

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:buildAppBar(context, "Product Name"),
      body: ListView(
        children: const [
          CachedImage(url: "https://i.imgur.com/keVCVIa.jpeg"),
        ],
      ),
    );
  }
}
