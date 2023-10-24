import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:image_picker/image_picker.dart';
import '../../Utils/app_colors.dart';
import '../../Utils/app_constants.dart';
import '../../Utils/app_images.dart';
import '../../Widgets/custom_appbar.dart';
import '../../Widgets/custom_sized_box.dart';
import '../../Widgets/custom_text.dart';
import '../../Widgets/custom_text_foam_field.dart';
import '../../Widgets/label_text.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

bool onoff = true;

class _ProfilePageState extends State<ProfilePage> {

Future _pickImageFromGallery() async {
  final returnedImage = await ImagePicker().pickImage(source: ImageSource.gallery);

setState(() {
  imageFile =File(returnedImage!.path);
});

}

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
      body: Column(children: [
        CustomAppBar(
          image: AppImages.profile,
          title: "Hammad",
        ),
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
                        title: "User Profile",
                        fontSize: 20.sp,
                        fontWeight: FontWeight.w700,
                        color: AppColors.textColor,
                      ),
                    ),
                    LabelText(title: "Name"),
                    CustomSizeBox(height: 3.h),
                    CustomTextFoamField(
                      hintText: "Name",
                      suffixIcon: Icon(
                        Icons.edit,
                        size: 22.sp,
                        color: AppColors.grey,
                      ),
                    ),
                    CustomSizeBox(height: 10.h),
                    LabelText(title: "Email"),
                    CustomSizeBox(height: 3.h),
                    CustomTextFoamField(
                      hintText: "Email",
                      suffixIcon: Icon(
                        Icons.edit,
                        size: 22.sp,
                        color: AppColors.grey,
                      ),
                    ),
                    CustomSizeBox(height: 10.h),
                    LabelText(title: "Password"),
                    CustomSizeBox(height: 3.h),
                    CustomTextFoamField(
                      hintText: "Password",
                      suffixIcon: Icon(
                        Icons.edit,
                        size: 22.sp,
                        color: AppColors.grey,
                      ),
                    ),
                    CustomSizeBox(height: 10.h),
                    LabelText(title: "Confirm Password"),
                    CustomSizeBox(height: 3.h),
                    CustomTextFoamField(
                      hintText: "Confirm Password",
                      suffixIcon: Icon(
                        Icons.edit,
                        size: 22.sp,
                        color: AppColors.grey,
                      ),
                    ),
                    CustomSizeBox(height: 10.h),
                    LabelText(title: "Cell phone"),
                    CustomSizeBox(height: 3.h),
                    CustomTextFoamField(
                      hintText: "Cell phone",
                      suffixIcon: Icon(
                        Icons.edit,
                        size: 22.sp,
                        color: AppColors.grey,
                      ),
                    ),
                    CustomSizeBox(height: 10.h),
                    LabelText(title: "Address"),
                    CustomSizeBox(height: 3.h),
                    CustomTextFoamField(
                      hintText: "Address",
                      suffixIcon: Icon(
                        Icons.edit,
                        size: 22.sp,
                        color: AppColors.grey,
                      ),
                    ),
                    CustomSizeBox(height: 10.h),
                    LabelText(title: "Address 2"),
                    CustomSizeBox(height: 3.h),
                    CustomTextFoamField(
                      hintText: "Address 2",
                      suffixIcon: Icon(
                        Icons.edit,
                        size: 22.sp,
                        color: AppColors.grey,
                      ),
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
                                suffixIcon: Icon(
                                  Icons.edit,
                                  size: 22.sp,
                                  color: AppColors.grey,
                                ),
                              ),
                            ],
                          ),
                        ),
                        CustomSizeBox(width: 15.w),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              LabelText(title: "State"),
                              CustomSizeBox(height: 5.h),
                              CustomTextFoamField(
                                hintText: "State",
                                suffixIcon: Icon(
                                  Icons.edit,
                                  size: 22.sp,
                                  color: AppColors.grey,
                                ),
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
                                suffixIcon: Icon(
                                  Icons.edit,
                                  size: 22.sp,
                                  color: AppColors.grey,
                                ),
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
                                suffixIcon: Icon(
                                  Icons.edit,
                                  size: 22.sp,
                                  color: AppColors.grey,
                                ),
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
                            _pickImageFromGallery;
                            // AppConstants.showCustomSnackBar("Image uploaded");
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

                    CustomSizeBox(height: 10.h),
                    Row(
                      children: [
                        CustomText(
                          title: "Enable text message",
                          fontSize: 13.sp,
                          fontWeight: FontWeight.w700,
                          color: AppColors.black,
                        ),
                        const Spacer(),
                        Switch(
                          activeColor: AppColors.green,
                          value: onoff,
                          onChanged: (value) {
                            setState(() {
                              onoff = false;
                            });
                          },
                        )
                      ],
                    ),
                    const Divider(thickness: 2),
                    Row(
                      children: [
                        CustomText(
                          title: "Enable push notification",
                          fontSize: 13.sp,
                          fontWeight: FontWeight.w700,
                          color: AppColors.black,
                        ),
                        const Spacer(),
                        Switch(
                          activeColor: AppColors.green,
                          value: onoff,
                          onChanged: (value) {
                            value = onoff;
                          },
                        )
                      ],
                    ),
                    const Divider(thickness: 2),
                    Row(
                      children: [
                        CustomText(
                          title: "Enable email notification",
                          fontSize: 13.sp,
                          fontWeight: FontWeight.w700,
                          color: AppColors.black,
                        ),
                        const Spacer(),
                        Switch(
                          activeColor: AppColors.green,
                          value: true,
                          onChanged: (value) {
                            setState(() {
                              value = !false;
                            });
                          },
                        )
                      ],
                    ),
                    CustomSizeBox(height: 30.h),
                    Center(
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              fixedSize: Size(198.w, 40.h),
                              backgroundColor: AppColors.green),
                          onPressed: () {
                            AppConstants.showCustomSnackBar("Profile Saved!");
                          },
                          child: CustomText(
                            title: "Save",
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w500,
                            color: AppColors.btntext,
                          )),
                    ),
                    CustomSizeBox(height: 10.h),
                  ],
                ),
              ),
            ],
          ),
        ),
      ]),
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
