import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:image_picker/image_picker.dart';
import '../../Utils/app_colors.dart';
import '../../Utils/app_constants.dart';
import '../../Widgets/custom_sized_box.dart';
import '../../Widgets/custom_text.dart';
import '../../Widgets/custom_text_foam_field.dart';
import '../../Widgets/label_text.dart';
import '../../Widgets/myapp_bar.dart';
import '../Login/login.dart';
import 'Component/container_component.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  File? imageFile;

  getFromGallery() async {
    final ImagePicker _picker = ImagePicker();
    final pickedFile = await _picker.pickImage(
      source: ImageSource.gallery,
    );
    if (pickedFile != null) {
      imageFile = File(pickedFile.path);
    }
    setState(() {});
  }

  getFromCamera() async {
    final ImagePicker _picker = ImagePicker();
    final pickedFile = await _picker.pickImage(
      source: ImageSource.camera,
    );
    if (pickedFile != null) {
      imageFile = File(pickedFile.path);
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Column(
        children: [
          const MyAppBar(),
          Expanded(
            child: ListView(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 20.w, right: 20.w),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Center(
                        child: CustomText(
                          title: "Account Creation",
                          fontSize: 20.sp,
                          fontWeight: FontWeight.w700,
                          color: AppColors.textColor,
                        ),
                      ),
                      CustomSizeBox(height: 8.h),

                      const Center(child: ContainerComponent()),
                      LabelText(title: "Name"),
                      CustomSizeBox(height: 5.h),
                      CustomTextFoamField(
                        hintText: "Name",
                      ),
                      CustomSizeBox(height: 10.h),
                      LabelText(title: "Email"),
                      CustomSizeBox(height: 5.h),
                      CustomTextFoamField(
                        hintText: "Email",
                      ),
                      CustomSizeBox(height: 10.h),
                      LabelText(title: "Password"),
                      CustomSizeBox(height: 5.h),
                      CustomTextFoamField(
                        hintText: "Password",
                      ),
                      CustomSizeBox(height: 10.h),
                      LabelText(title: "Confirm Password"),
                      CustomSizeBox(height: 5.h),
                      CustomTextFoamField(
                        hintText: "Confirm Password",
                      ),
                      CustomSizeBox(height: 10.h),
                      LabelText(title: "Cell phone"),
                      CustomSizeBox(height: 5.h),
                      CustomTextFoamField(
                        hintText: "Cell phone",
                      ),
                      CustomSizeBox(height: 10.h),
                      LabelText(title: "Address"),
                      CustomSizeBox(height: 5.h),
                      CustomTextFoamField(
                        hintText: "Address",
                      ),
                      CustomSizeBox(height: 10.h),
                      LabelText(title: "Address 2"),
                      CustomSizeBox(height: 5.h),
                      CustomTextFoamField(
                        hintText: "Address 2",
                      ),
                      CustomSizeBox(height: 10.h),
                      Row(
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                LabelText(title: "City"),
                                CustomSizeBox(height: 5.h),
                                CustomTextFoamField(
                                  hintText: "City",
                                ),
                              ],
                            ),
                          ),
                          CustomSizeBox(width: 15.w),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                               LabelText(title: "State"),
                                CustomSizeBox(height: 5.h),
                                CustomTextFoamField(
                                  hintText: "State",
                                ),
                              ],
                            ),
                          )
                        ],
                      ),

                      CustomSizeBox(height: 10.h),
                      Row(
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                LabelText(title: "Zip Code"),
                                CustomSizeBox(height: 5.h),
                                CustomTextFoamField(
                                  hintText: "Zip Code",
                                ),
                              ],
                            ),
                          ),
                          CustomSizeBox(width: 15.w),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                LabelText(title: "Country"),
                                CustomSizeBox(height: 5.h),
                                CustomTextFoamField(
                                  hintText: "Country",
                                ),
                              ],
                            ),
                          )
                        ],
                      ),

                      // SignUpRowComponent(),
                      CustomSizeBox(height: 10.h),
                      Row(
                        children: [
                          imageFile == null
                              ? GestureDetector(
                                  onTap: () {
                                    showOptionsDialog(context);
                                  },
                                  child: LabelText(title: "Choose Photo"))
                              : Container(
                                  height: 35.h,
                                  width: 80.w,
                                  child: Image.file(
                                    File(imageFile!.path),
                                    fit: BoxFit.fill,
                                  ),
                                ),
                          CustomSizeBox(width: 40.w),
                          GestureDetector(
                            onTap: () {
                              AppConstants.showCustomSnackBar("Image uploaded");
                            },
                            child: Container(
                              height: 35.h,
                              width: 80.w,
                              decoration: BoxDecoration(
                                  color: AppColors.navyblue,
                                  borderRadius: BorderRadius.circular(5.r)),
                              child: Center(
                                child: CustomText(
                                  title: "Upload",
                                  fontSize: 13.sp,
                                  fontWeight: FontWeight.w500,
                                  color: AppColors.btntext,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),

                      CustomSizeBox(height: 20.h),
                      Center(
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                fixedSize: Size(198.w, 40.h),
                                backgroundColor: AppColors.green),
                            onPressed: () {
                              Get.to(() => const SignIn());
                              AppConstants.showCustomSnackBar(
                                  "Registered Successfully!");
                            },
                            child: CustomText(
                              title: "Create Account",
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w500,
                              color: AppColors.btntext,
                            )),
                      ),
                      CustomSizeBox(height: 16.h),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    ));
  }

  Future<void> showOptionsDialog(BuildContext context) {
    return showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          content: SingleChildScrollView(
              child: ListBody(
            children: [
              GestureDetector(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.camera,
                      size: 20.sp,
                      color: Colors.black,
                    ),
                    SizedBox(width: 10.w),
                    Text(
                      "From Camera",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
                onTap: () {
                  getFromCamera();
                  Navigator.pop(context);
                },
              ),
              Padding(padding: EdgeInsets.all(10.h)),
              GestureDetector(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.image,
                      size: 20.sp,
                      color: Colors.black,
                    ),
                    SizedBox(width: 10.w),
                    Text(
                      "From Gallery",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
                onTap: () {
                  getFromGallery();
                  Navigator.pop(context);
                },
              ),
            ],
          )),
        );
      },
    );
  }
}
