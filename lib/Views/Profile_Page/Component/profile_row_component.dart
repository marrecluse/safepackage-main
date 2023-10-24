import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../Widgets/custom_container.dart';
import '../../../Widgets/custom_sized_box.dart';
import '../../../Widgets/custom_text_foam_field.dart';
import '../../../Widgets/label_text.dart';

class ProfileRowComponent extends StatelessWidget {
  const ProfileRowComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                LabelText(title: "City"),
                CustomSizeBox(height: 3.h),
                CustomContainer(
                  width: 165.w,
                  height: 70.h,
                  child: CustomTextFoamField(
                    hintText: "City",
                  ),
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                LabelText(title: "State"),
                CustomSizeBox(height: 3.h),
                CustomContainer(
                  width: 165.w,
                  height: 70.h,
                  child: CustomTextFoamField(
                    hintText: "State",
                  ),
                ),
              ],
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                LabelText(title: "Zip code"),
                CustomSizeBox(height: 3.h),
                CustomContainer(
                  width: 165.w,
                  height: 70.h,
                  child: CustomTextFoamField(
                    hintText: "Zip code",
                  ),
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                LabelText(title: "Country"),
                CustomSizeBox(height: 3.h),
                CustomContainer(
                  width: 165.w,
                  height: 70.h,
                  child: CustomTextFoamField(
                    hintText: "Country",
                  ),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
