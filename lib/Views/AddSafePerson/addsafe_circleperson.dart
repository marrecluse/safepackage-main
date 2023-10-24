import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:safepackage/Utils/app_colors.dart';
import 'package:safepackage/Utils/app_images.dart';
import 'package:safepackage/Widgets/custom_appbar.dart';
import 'package:velocity_x/velocity_x.dart';
import '../../Utils/app_constants.dart';
import '../../Widgets/custom_sized_box.dart';
import '../../Widgets/custom_text.dart';
import '../../Widgets/custom_text_foam_field.dart';
import '../../Widgets/drawer.dart';
import '../AddPackageGuard/add_packgard.dart';

class AddSafePerson extends StatefulWidget {
  const AddSafePerson({super.key});

  @override
  State<AddSafePerson> createState() => _AddSafePersonState();
}

class _AddSafePersonState extends State<AddSafePerson> {
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
      drawer: MyDrawer(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            CustomAppBar(image: AppImages.profile, title: "Raza"),
            Container(
              width: 358.w,
              //  height: 336.h,
              decoration: ShapeDecoration(
                color: const Color(0x2B15508D),
                shape: RoundedRectangleBorder(
                  side: BorderSide(width: 1.w, color: const Color(0x7F15508D)),
                  borderRadius: BorderRadius.circular(9.r),
                ),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 15.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomText(
                      title: 'Safe Circle',
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w700,
                      color: AppColors.navyblue,
                    ),
                    CustomSizeBox(height: 20.h),
                    Row(
                      children: [
                        CustomSizeBox(width: 20.w),
                        Image.asset(
                          AppImages.vector,
                          height: 120.h,
                        ),
                        CustomText(
                          title:
                              'Join your neighbor’s Safe Circle\nand have them join yours. The\nwhole street then becomes\npackage guardians.',
                          fontSize: 10.sp,
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                        )
                      ],
                    ),
                    CustomSizeBox(
                      height: 15.h,
                    ),
                    Column(
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            CustomText(
                                title: 'Name',
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w700,
                                color: AppColors.navyblue),
                            CustomSizeBox(
                              width: 15.w,
                            ),
                            2.widthBox,
                            Expanded(child: CustomTextFoamField()),
                          ],
                        ),
                        CustomSizeBox(height: 10.w),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            CustomText(
                                title: 'Phone',
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w700,
                                color: AppColors.navyblue),
                            CustomSizeBox(
                              width: 15.w,
                            ),
                            Expanded(child: CustomTextFoamField()),
                          ],
                        ),
                        CustomSizeBox(height: 10.w),
                        Row(
                          children: [
                            imageFile == null
                                ? GestureDetector(
                                    onTap: () {
                                      showOptionsDialog(context);
                                    },
                                    child: CustomText(
                                        title: 'Choose Photo',
                                        fontSize: 12.sp,
                                        fontWeight: FontWeight.w700,
                                        color: AppColors.navyblue),
                                  )
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
                                AppConstants.showCustomSnackBar(
                                    "Image uploaded");
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
                        Align(
                          alignment: Alignment.topRight,
                          child: GestureDetector(
                            onTap: () {
                              AppConstants.showCustomSnackBar(
                                  "Safe Circle Person added!");
                            },
                            child: Container(
                              height: 30.h,
                              width: 80.w,
                              decoration: BoxDecoration(
                                  color: AppColors.green,
                                  borderRadius: BorderRadius.circular(8.r)),
                              child: Center(
                                child: CustomText(
                                  title: "Add",
                                  fontSize: 13.sp,
                                  fontWeight: FontWeight.w500,
                                  color: AppColors.white,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            CustomSizeBox(height: 80.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: GestureDetector(
                onTap: () {
                  Get.to(() => const AddPackageGuard());
                },
                child: Container(
                  // height: 30.h,
                  padding: EdgeInsets.symmetric(vertical: 15.h),
                  width: 390.w,
                  decoration: BoxDecoration(
                      color: AppColors.navyblue,
                      borderRadius: BorderRadius.circular(8.r)),
                  child: Center(
                    child: CustomText(
                      title: "Access Phone Contact",
                      fontSize: 13.sp,
                      fontWeight: FontWeight.w500,
                      color: AppColors.white,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
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
