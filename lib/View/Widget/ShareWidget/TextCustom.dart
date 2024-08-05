import 'package:flutter/material.dart';
import 'package:point_of_sell/View/Colors/Colors.dart';
import 'package:sizer/sizer.dart';

class TextCustom extends StatelessWidget {
  TextCustom({this.width, this.text,this.onSecondaryTap, super.key});
  String? text;
  double? width;
   GestureTapCallback? onSecondaryTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 1.0.w,
        vertical: 1.0.w,
      ),
      child: Container(
        // width: width ?? 20.w,
        // height: 3.5.h,
        decoration: BoxDecoration(
          color: ColorUsed.whitesoft,
          borderRadius: const BorderRadius.vertical(
            bottom: Radius.circular(4),
            top: Radius.circular(
              4,
            ),
          ),
        ),
        child: Text(
          text!,
          style: TextStyle(
            color: Colors.black,
            fontSize: 6.sp,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}


