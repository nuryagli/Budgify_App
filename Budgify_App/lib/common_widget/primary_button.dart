

import 'package:budgify_app/common/color_extension.dart';
import 'package:flutter/material.dart';

class PrimaryButton extends StatelessWidget {
  final String title;
  final VoidCallback onPressed;
  final double fontSize;
  final FontWeight fontWeight;
  const PrimaryButton({super.key, required this.title, this.fontSize = 14,
    this.fontWeight = FontWeight.w600,required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){},
      child: Container(
        height:50,
        decoration: BoxDecoration(
            image:const DecorationImage(image: AssetImage("assets/img/primary_btn.png"),
            ),
            borderRadius: BorderRadius.circular(30),
            boxShadow:[
              BoxShadow(
                color: TColor.secondary.withOpacity(0.35),
                blurRadius: 5,
                offset: Offset(0, 4),)
            ]),

        alignment: Alignment.center,
        child: Text("Get started",
          style: TextStyle(color: TColor.white,fontSize: fontSize,
              fontWeight: fontWeight),),
      ),
    );
  }
}


