import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:safepackage/Utils/app_images.dart';
import '../../Utils/app_colors.dart';
import '../../Widgets/custom_appBar.dart';
import '../../Widgets/custom_text.dart';
import '../../Widgets/drawer.dart';
import '../Safe_Circle_Notification/safe_circle_notification.dart';
import 'components/user_notification_data.dart';

class UserNotification extends StatelessWidget {
  const UserNotification({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        drawer: MyDrawer(),
        body: SingleChildScrollView(
          physics: const NeverScrollableScrollPhysics(),
          child: Column(
            children: [
              CustomAppBar(
                image: AppImages.profile,
                title: "Raza",
              ),
              GestureDetector(
                  onTap: () {
                    //  Get.to(() => const SafeCircleNotification());
                  },
                  child: UserNotificationData()),
              SizedBox(height: 20.h),
              GestureDetector(
                onTap: () {
                  Get.to(() => const SafeCircleNotification());
                },
                child: Container(
                  //height: 30.h,
                  padding: EdgeInsets.symmetric(vertical: 15.h),
                  width: 350.w,
                  decoration: BoxDecoration(
                      color: AppColors.navyblue,
                      borderRadius: BorderRadius.circular(8.r)),
                  child: Center(
                    child: CustomText(
                      title: "Safe Circle Notification",
                      fontSize: 13.sp,
                      fontWeight: FontWeight.w500,
                      color: AppColors.btntext,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10.h),
            ],
          ),
        ),
      ),
    );
  }
}
