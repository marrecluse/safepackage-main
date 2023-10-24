import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:safepackage/Utils/app_constants.dart';
import 'package:safepackage/Views/Forgot_Password/forgot_password.dart';
import 'package:safepackage/Views/Register/register.dart';
import '../../Utils/app_colors.dart';
import '../../Widgets/custom_sized_box.dart';
import '../../Widgets/custom_text.dart';
import '../../Widgets/custom_text_foam_field.dart';
import '../../Widgets/label_text.dart';
import '../../Widgets/myapp_bar.dart';
import '../Wifi_Connect/wifi_connect.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Column(children: [
        const MyAppBar(),
        Expanded(
          child: ListView(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: CustomText(
                        title: "Sign In",
                        fontSize: 20.sp,
                        fontWeight: FontWeight.w700,
                        color: AppColors.textColor,
                      ),
                    ),
                    CustomSizeBox(height: 21.h),
                    LabelText(title: "Email"),
                    CustomSizeBox(height: 5.h),
                    
                    CustomTextFoamField(
                      hintText: "Email",
                      validator: (value) {
                        RegExp regex = RegExp(
                            r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$');

                        if (value!.isEmpty) {
                          return 'Please enter your email';
                        } else if (!regex.hasMatch(value)) {
                          return 'please enter valid email';
                        }
                        return null;
                      },
                    ),
                    CustomSizeBox(height: 10.h),
                    LabelText(title: "Password"),
                    CustomSizeBox(height: 5.h),
                    CustomTextFoamField(
                      hintText: "Password",
                    ),
                    CustomSizeBox(height: 12.h),
                    Align(
                      alignment: Alignment.topRight,
                      child: GestureDetector(
                        onTap: () {
                          Get.to(() => const ForgotPassword());
                        },
                        child: CustomText(
                          title: "Forgot Password?",
                          fontSize: 13.sp,
                          fontWeight: FontWeight.w700,
                          color: AppColors.black,
                        ),
                      ),
                    ),
                    CustomSizeBox(height: 29.h),
                    Center(
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              fixedSize: Size(198.w, 40.h),
                              backgroundColor: AppColors.green),
                          onPressed: () {
                            Get.to(() => const WifiConnect());
                            AppConstants.showCustomSnackBar("Welcome Back!");
                          },
                          child: CustomText(
                            title: "Submit",
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w500,
                            color: AppColors.btntext,
                          )),
                    ),
                    CustomSizeBox(height: 10.h),
                    Center(
                        child: CustomText(
                      title: "or",
                      fontSize: 13.sp,
                      fontWeight: FontWeight.w700,
                      color: AppColors.black,
                    )),
                    CustomSizeBox(height: 10.h),
                    GestureDetector(
                      onTap: () {
                        Get.to(() => const SignUp());
                      },
                      child: Center(
                          child: CustomText(
                        title: "Create new account",
                        fontSize: 13.sp,
                        fontWeight: FontWeight.w300,
                        color: AppColors.black,
                        decoration: TextDecoration.underline,
                      )),
                    ),
                  ],
                ),
              ),
            ],
          ),
        )
      ]),
    ));
  }
}
