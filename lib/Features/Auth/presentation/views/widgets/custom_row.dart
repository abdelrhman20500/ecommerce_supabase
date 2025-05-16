import 'package:flutter/material.dart';

import '../../../../../Core/utilis/app_color.dart';

class CustomRow extends StatelessWidget {
   const CustomRow({
    super.key, required this.text, this.onPressed,
  });

  final String text;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
         Text(text, style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),),
        ElevatedButton(
            style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16)
                ),
                backgroundColor: AppColors.kPrimaryColor,
                foregroundColor: AppColors.kWhiteColor
            ),
            onPressed:onPressed, child: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 12.0,vertical: 12),
          child: Icon(Icons.arrow_forward, size: 26,),
        ))
      ],
    );
  }
}
