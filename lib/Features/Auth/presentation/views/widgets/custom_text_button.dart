import 'package:flutter/material.dart';
import '../../../../../Core/utilis/app_color.dart';

class CustomTextButton extends StatelessWidget {
   const CustomTextButton({super.key, required this.text, this.onTab,
  });

  final String text;
  final void Function()? onTab;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap:onTab,
      child: Text(text, style: const TextStyle(
          fontSize: 18, fontWeight: FontWeight.bold, color: AppColors.kPrimaryColor),),
    );
  }
}
