import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../Utils/app_colors.dart';

// ignore: must_be_immutable
class CustomTextFoamField extends StatelessWidget {
  String? hintText;
  Widget? prefixIcon;
  Widget? suffixIcon;
  String? Function(String?)? validator;
  CustomTextFoamField(
      {this.hintText,
      this.prefixIcon,
      this.suffixIcon,
      this.validator,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 355.w,
      height: 47.h,
      decoration: ShapeDecoration(
        color: AppColors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4).r),
        shadows: [
          BoxShadow(
            color: const Color(0x3F000000),
            blurRadius: 5.r,
            offset: const Offset(0, 0),
            spreadRadius: 0,
          )
        ],
      ),
      child: TextFormField(
        decoration: InputDecoration(
          contentPadding: EdgeInsets.only(left: 12.w, bottom: 3.h, right: 10.w),
          hintText: hintText,
          hintStyle: TextStyle(color: AppColors.grey, fontSize: 13.sp),
          prefixIcon: prefixIcon,
          suffixIcon: suffixIcon,
          border: InputBorder.none,
        ),
        validator: validator,
      ),
    );
  }
}
