import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:safepackage/Utils/app_colors.dart';
import 'package:safepackage/Utils/app_images.dart';
import 'package:safepackage/Widgets/custom_appbar.dart';
import 'package:safepackage/Widgets/custom_text.dart';

import '../../Utils/app_constants.dart';
import '../../Widgets/custom_sized_box.dart';
import '../../Widgets/drawer.dart';
import '../AddSafePerson/addsafe_circleperson.dart';

class EditSafeCircle extends StatefulWidget {
  const EditSafeCircle({super.key});

  @override
  State<EditSafeCircle> createState() => _EditSafeCircleState();
}

class _EditSafeCircleState extends State<EditSafeCircle> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      drawer: MyDrawer(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            CustomAppBar(image: AppImages.profile, title: "Hammad"),
            SizedBox(height: 30.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 15.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomText(
                    title: " SAFE CIRCLE",
                    fontSize: 15.sp,
                    fontWeight: FontWeight.w700,
                    color: AppColors.navyblue,
                  ),
                  SizedBox(height: 12.h),
                  SizedBox(
                    height: 456.h,
                    child: ListView.builder(
                      itemCount: 5,
                      itemBuilder: (context, index) {
                        return Container(
                            margin: EdgeInsets.only(bottom: 8.h),
                            width: 358.w,
                            decoration: ShapeDecoration(
                              color: const Color(0x2B15508D),
                              shape: RoundedRectangleBorder(
                                side: BorderSide(
                                    width: 1.w, color: const Color(0x7F15508D)),
                                borderRadius: BorderRadius.circular(9.r),
                              ),
                            ),
                            child: Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 9.w, vertical: 9.h),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset(AppImages.alram),
                                  CustomSizeBox(
                                    width: 10.w,
                                  ),
                                  Column(
                                    children: [
                                      CustomText(
                                        title: 'George Johnson',
                                        fontSize: 11.sp,
                                        fontWeight: FontWeight.w700,
                                        color: AppColors.navyblue,
                                      ),
                                      CustomSizeBox(
                                        height: 3.h,
                                      ),
                                      CustomText(
                                        title: '(214) 555 -1234',
                                        fontSize: 11.sp,
                                        fontWeight: FontWeight.w400,
                                        color: AppColors.grey,
                                      ),
                                    ],
                                  ),
                                  const Spacer(),
                                  Row(
                                    children: [
                                      GestureDetector(
                                        onTap: () {
                                          AppConstants.showCustomSnackBar(
                                              "You can edit now!");
                                        },
                                        child: CircleAvatar(
                                            radius: 14.r,
                                            backgroundColor: AppColors.grey,
                                            child: Icon(
                                              Icons.edit,
                                              color: AppColors.white,
                                              size: 18.sp,
                                            )),
                                      ),
                                      CustomSizeBox(
                                        width: 10.w,
                                      ),
                                      GestureDetector(
                                        onTap: () {
                                          AppConstants.showCustomSnackBar(
                                              "Deleted!");
                                        },
                                        child: CircleAvatar(
                                            radius: 14.r,
                                            backgroundColor: AppColors.mahron,
                                            child: Icon(
                                              Icons.delete,
                                              color: AppColors.white,
                                              size: 18.sp,
                                            )),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ));
                      },
                    ),
                  ),
                  SizedBox(height: 30.h),
                  GestureDetector(
                    onTap: () {
                      Get.to(() => const AddSafePerson());
                    },
                    child: Container(
                      // height: 30.h,
                      padding: EdgeInsets.symmetric(vertical: 15.h),
                      width: 393.w,
                      decoration: BoxDecoration(
                          color: AppColors.navyblue,
                          borderRadius: BorderRadius.circular(8.r)),
                      child: Center(
                        child: CustomText(
                          title: "Add Safe Circle Person",
                          fontSize: 13.sp,
                          fontWeight: FontWeight.w500,
                          color: AppColors.btntext,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    ));
  }
}
