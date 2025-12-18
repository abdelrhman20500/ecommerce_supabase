import 'package:ecommerce_supabase/Core/component/product_list.dart';
import 'package:ecommerce_supabase/Core/functions/build_app_bar.dart';
import 'package:flutter/material.dart';

class MyOrderScreen extends StatelessWidget {
  const MyOrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context, "MyOrders"),
      body: const Padding(
        padding: EdgeInsets.all(12.0),
        child: ProductList(
          physics: BouncingScrollPhysics(),
          shrinkWrap: false,
        ),
      ),
    );
  }
}
