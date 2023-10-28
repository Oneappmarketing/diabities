import 'controller/home_menu_controller.dart';
import 'package:flutter/material.dart';
import 'package:john_s_application3/core/app_export.dart';

class HomeMenuDraweritem extends StatelessWidget {
  HomeMenuDraweritem(
    this.controller, {
    Key? key,
  }) : super(
          key: key,
        );

  HomeMenuController controller;

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return Drawer(
      child: Container(
        width: 248.h,
        padding: EdgeInsets.symmetric(
          horizontal: 19.h,
          vertical: 54.v,
        ),
        decoration: AppDecoration.fillWhiteA,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(
                left: 3.h,
                right: 5.h,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "lbl_menu".tr,
                    style: CustomTextStyles.titleLargeOnPrimaryContainer_1,
                  ),
                  CustomImageView(
                    svgPath: ImageConstant.imgIconclose,
                    height: 24.adaptSize,
                    width: 24.adaptSize,
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 5.h,
                top: 30.v,
              ),
              child: Row(
                children: [
                  CustomImageView(
                    svgPath: ImageConstant.imgClockSecondarycontainer,
                    height: 24.adaptSize,
                    width: 24.adaptSize,
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 16.h,
                      top: 2.v,
                    ),
                    child: Text(
                      "lbl_my_report".tr,
                      style: CustomTextStyles.bodyLargeAirbnbCerealApp,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 5.h,
                top: 32.v,
              ),
              child: Row(
                children: [
                  CustomImageView(
                    svgPath: ImageConstant.imgIconnotification,
                    height: 24.adaptSize,
                    width: 24.adaptSize,
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 16.h,
                      bottom: 2.v,
                    ),
                    child: Text(
                      "lbl_reminders".tr,
                      style: CustomTextStyles.bodyLargeAirbnbCerealApp,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 5.h,
                top: 32.v,
              ),
              child: Row(
                children: [
                  CustomImageView(
                    svgPath: ImageConstant.imgIconsave,
                    height: 24.adaptSize,
                    width: 24.adaptSize,
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 16.h,
                      bottom: 2.v,
                    ),
                    child: Text(
                      "lbl_saved_meal".tr,
                      style: CustomTextStyles.bodyLargeAirbnbCerealApp,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 24.v),
              child: SizedBox(
                width: 210.h,
                child: Divider(
                  color: appTheme.gray300,
                  indent: 5.h,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 5.h,
                top: 23.v,
              ),
              child: Row(
                children: [
                  CustomImageView(
                    svgPath: ImageConstant.imgIconsetting,
                    height: 24.adaptSize,
                    width: 24.adaptSize,
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 16.h,
                      top: 2.v,
                    ),
                    child: Text(
                      "lbl_settings".tr,
                      style: CustomTextStyles.bodyLargeAirbnbCerealApp,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 5.h,
                top: 32.v,
              ),
              child: Row(
                children: [
                  CustomImageView(
                    svgPath: ImageConstant.imgIconsupport,
                    height: 24.adaptSize,
                    width: 24.adaptSize,
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 16.h,
                      top: 2.v,
                    ),
                    child: Text(
                      "lbl_help_center".tr,
                      style: CustomTextStyles.bodyLargeAirbnbCerealApp,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 5.h,
                top: 32.v,
                bottom: 32.v,
              ),
              child: Row(
                children: [
                  CustomImageView(
                    svgPath: ImageConstant.imgIconreport,
                    height: 24.adaptSize,
                    width: 24.adaptSize,
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 16.h,
                      bottom: 2.v,
                    ),
                    child: Text(
                      "lbl_about".tr,
                      style: CustomTextStyles.bodyLargeAirbnbCerealApp,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
