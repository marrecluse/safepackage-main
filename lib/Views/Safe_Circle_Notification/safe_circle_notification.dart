import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:safepackage/Utils/app_images.dart';
import '../../Utils/app_colors.dart';
import '../../Widgets/custom_appbar.dart';
import '../../Widgets/custom_text.dart';
import '../../Widgets/drawer.dart';
import 'components/safe_notification_alerts.dart';

class SafeCircleNotification extends StatelessWidget {
  const SafeCircleNotification({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        drawer: MyDrawer(),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomAppBar(
                image: AppImages.profile,
                title: "Hammad",
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 15.h),
                child: CustomText(
                  title: 'Safe Circle Notification',
                  fontSize: 13.sp,
                  fontWeight: FontWeight.w700,
                  color: AppColors.navyblue,
                ),
              ),
              SizedBox(
                height: 580.h,
                width: MediaQuery.of(context).size.width,
                child: ListView.builder(
                  physics: const BouncingScrollPhysics(),
                  itemCount: 4,
                  itemBuilder: (context, index) {
                    return const SafeNotificationAlerts();
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
