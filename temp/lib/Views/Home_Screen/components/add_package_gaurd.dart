// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../Utils/app_images.dart';
import '../../../Widgets/custom_text.dart';
import 'customSwitch.dart';
import 'inner_container_data.dart';

// ignore: use_key_in_widget_constructors
class AddPackageGaurd extends StatelessWidget {
  final List _trailImages = [
    AppImages.greenIcon,
    AppImages.orangeIcon,
    AppImages.redIcon,
    'Ready to Alarm',
  ];
  final List _batteryIcon = [
    AppImages.batteryFull,
    AppImages.batteryLow,
    AppImages.batteryFull,
    AppImages.batteryFull,
  ];
  List titleText = ['Armed', 'Low Battery', 'Alarm', 'Disarmed'];
  List subtitleText = ['Front Door', 'Side Door', 'Back Door', 'Front Door'];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 360.h,
      width: MediaQuery.of(context).size.width,
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        itemCount: _trailImages.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              // Get.to(() => DeviceDetail());
            },
            child: Container(
              margin: EdgeInsets.only(top: 5.h),
              padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 1.h),
              // height: 186.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.r),
                color: Colors.blueGrey.shade100,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ListTile(
                    contentPadding: EdgeInsets.zero,
                    horizontalTitleGap: 10.w,
                    leading: Image.asset(
                      AppImages.packageLogo,
                      height: 48,
                      width: 68,
                    ),
                    title: CustomText(
                      title: titleText[index],
                      fontWeight: FontWeight.w600,
                      fontSize: 13,
                      color: index == 0
                          ? const Color(0xff348D15)
                          : index == 1
                              ? const Color(0xffE09400)
                              : Colors.red,
                    ),
                    subtitle: CustomText(
                      title: subtitleText[index],
                      color: const Color(0xff4E4E4E),
                      fontSize: 9,
                      fontWeight: FontWeight.w400,
                    ),
                    trailing: index == 0 || index == 1 || index == 2
                        ? Image.asset(
                            _trailImages[index],
                            height: 41,
                            width: 41,
                          )
                        : Text(
                            _trailImages[3],
                          ),
                  ),
                  Container(
                    height: 60,
                    width: MediaQuery.of(context).size.width,
                    padding:
                        EdgeInsets.symmetric(horizontal: 10.w, vertical: 9.h),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5.r),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InnerContainerData(
                          img: AppImages.wifiImg,
                          imgHeight: 20,
                          imgWidth: 20,
                          toptext: 'Connected to',
                          btnText: "Micheal's Wifi",
                          tFontWeight: FontWeight.w400,
                          bFontWeight: FontWeight.w700,
                        ),
                        InnerContainerData(
                          img: _batteryIcon[index],
                          imgHeight: 20,
                          imgWidth: 30,
                          toptext: 'Battery',
                          btnText: "90%",
                          tFontWeight: FontWeight.w400,
                          bFontWeight: FontWeight.w700,
                        ),
                        InnerContainerData(
                          img: AppImages.diamondImg,
                          imgHeight: 23,
                          imgWidth: 22,
                          toptext: '2 Packages',
                          btnText: "Waiting",
                          tFontWeight: FontWeight.w700,
                          bFontWeight: FontWeight.w400,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10.h),
                  const CustomSwitch(),
                  SizedBox(height: 10.h),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
