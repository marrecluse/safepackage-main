import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:safepackage/Utils/app_images.dart';
import '../../Utils/app_colors.dart';
import '../../Widgets/custom_appbar.dart';
import '../../Widgets/custom_text.dart';
import '../../Widgets/drawer.dart';
import '../DeviceDetails/device_detail.dart';
import '../User_Notification/user_notification.dart';
import 'components/add_package_gaurd.dart';
import 'components/notification_section.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        drawer: MyDrawer(),
        body: Column(
          children: [
            CustomAppBar(
              image: AppImages.profileImg,
              title: "Charles",
            ),

            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Column(
                children: [
                  GestureDetector(
                      onTap: () {
                        Get.to(() => const UserNotification());
                      },
                      child: NotificationSection()),
                  SizedBox(height: 12.h),
                  GestureDetector(
                    onTap: () {
                      Get.to(() => const DeviceDetails());
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
                          title: "Add Package Guard",
                          fontSize: 13.sp,
                          fontWeight: FontWeight.w500,
                          color: AppColors.btntext,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 10.h),
                  AddPackageGaurd()
                ],
              ),
            )

            // Column(
            //   children: [
            //     GestureDetector(
            //         onTap: () {
            //           // Navigator.push(
            //           //   context,
            //           //   MaterialPageRoute(
            //           //     builder: (context) => (),
            //           //   ),
            //           // );
            //         },
            //         child: NotificationSection()),
            //     // CustomButton(
            //     //   btnText: 'Add Package Guard',
            //     //   onPressed: () {
            //     //     Navigator.push(
            //     //       context,
            //     //       MaterialPageRoute(
            //     //         builder: (context) => DeviceDetail(),
            //     //       ),
            //     //     );
            //     //   },
            //     //   btnColor: AppColors.appBlueColor,
            //     // ),
            //     // AddPackageGaurd(),
            //   ],
            // ),
          ],
        ),
      ),
    );
  }
}
