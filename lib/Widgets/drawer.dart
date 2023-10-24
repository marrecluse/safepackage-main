import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:safepackage/Utils/app_colors.dart';
import 'package:safepackage/Utils/app_images.dart';
import 'package:safepackage/Views/AddPackageGuard/add_packgard.dart';
import 'package:safepackage/Views/Home_Screen/home_screen.dart';

import '../Views/AddSafePerson/addsafe_circleperson.dart';
import '../Views/Profile_Page/profile_page.dart';
import '../Views/Safe_Circle_Notification/safe_circle_notification.dart';
import 'custom_text.dart';

class MyDrawer extends StatefulWidget {
  const MyDrawer({super.key});

  @override
  State<MyDrawer> createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            decoration: BoxDecoration(color: AppColors.navyblue),
            child: UserAccountsDrawerHeader(
              decoration: BoxDecoration(color: AppColors.navyblue),
              accountName: CustomText(
                title: "Hammad ",
                fontSize: 16.sp,
                fontWeight: FontWeight.w600,
              ),
              accountEmail: CustomText(
                title: "abczxy@gmail.com",
                fontSize: 14.sp,
                fontWeight: FontWeight.w500,
              ),
              currentAccountPictureSize: Size.square(50),
              currentAccountPicture: CircleAvatar(
                radius: 30.r,
                backgroundImage: AssetImage(AppImages.profile),
              ),
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.person,
              size: 25.sp,
              color: AppColors.grey,
            ),
            title: CustomText(
              title: "My Profile",
              fontSize: 14.sp,
              fontWeight: FontWeight.w500,
            ),
            onTap: () {
              Get.off(() => ProfilePage());
              // Navigator.pop(context);
            },
          ),
          ListTile(
            leading: Icon(
              Icons.home_filled,
              size: 25.sp,
              color: AppColors.grey,
            ),
            title: CustomText(
              title: "Home",
              fontSize: 14.sp,
              fontWeight: FontWeight.w500,
            ),
            onTap: () {
              Get.off(() => HomeScreen());
              // Navigator.pop(context);
            },
          ),
          ListTile(
            leading: Icon(
              Icons.person_add_alt_1,
              size: 25.sp,
              color: AppColors.grey,
            ),
            title: CustomText(
              title: "Add Safe Circle Person",
              fontSize: 14.sp,
              fontWeight: FontWeight.w500,
            ),
            onTap: () {
              Get.off(() => AddSafePerson());
            },
          ),
          ListTile(
            leading: Icon(
              Icons.notifications_on_rounded,
              size: 25.sp,
              color: AppColors.grey,
            ),
            title: CustomText(
              title: "Notification",
              fontSize: 14.sp,
              fontWeight: FontWeight.w500,
            ),
            onTap: () {
              Get.off(() => SafeCircleNotification());
            },
          ),
          ListTile(
            leading: Icon(
              Icons.add_box_rounded,
              size: 25.sp,
              color: AppColors.grey,
            ),
            title: CustomText(
              title: "Add a package guard",
              fontSize: 14.sp,
              fontWeight: FontWeight.w500,
            ),
            onTap: () {
              Get.off(() => AddPackageGuard());
            },
          ),
        ],
      ),
    );
  }
}
