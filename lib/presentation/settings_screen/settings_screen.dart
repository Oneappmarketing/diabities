import 'controller/settings_controller.dart';
import 'package:flutter/material.dart';
import 'package:john_s_application3/core/app_export.dart';
import 'package:john_s_application3/widgets/app_bar/appbar_image.dart';
import 'package:john_s_application3/widgets/app_bar/appbar_subtitle.dart';
import 'package:john_s_application3/widgets/app_bar/custom_app_bar.dart';
import 'package:john_s_application3/widgets/custom_elevated_button.dart';
import 'package:john_s_application3/widgets/custom_switch.dart';

// ignore_for_file: must_be_immutable
class SettingsScreen extends GetWidget<SettingsController> {
  const SettingsScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        appBar: CustomAppBar(
          leadingWidth: 48.h,
          leading: AppbarImage(
            svgPath: ImageConstant.imgIconback,
            margin: EdgeInsets.only(
              left: 24.h,
              top: 55.v,
              bottom: 29.v,
            ),
          ),
          centerTitle: true,
          title: AppbarSubtitle(
            text: "lbl_settings".tr,
            margin: EdgeInsets.only(
              top: 58.v,
              bottom: 28.v,
            ),
          ),
          styleType: Style.bgFill,
        ),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.all(24.h),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 2.v),
                    child: Text(
                      "lbl_manage_profile".tr,
                      style:
                          CustomTextStyles.bodyLargeAirbnbCerealAppBlack900_1,
                    ),
                  ),
                  CustomImageView(
                    svgPath: ImageConstant.imgArrowright,
                    height: 24.adaptSize,
                    width: 24.adaptSize,
                  ),
                ],
              ),
              SizedBox(height: 32.v),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      top: 4.v,
                      bottom: 6.v,
                    ),
                    child: Text(
                      "lbl_notification".tr,
                      style:
                          CustomTextStyles.bodyLargeAirbnbCerealAppBlack900_1,
                    ),
                  ),
                  Obx(
                    () => CustomSwitch(
                      value: controller.isSelectedSwitch.value,
                      onChange: (value) {
                        controller.isSelectedSwitch.value = value;
                      },
                    ),
                  ),
                ],
              ),
              SizedBox(height: 34.v),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: EdgeInsets.only(bottom: 2.v),
                    child: Text(
                      "lbl_rate_us".tr,
                      style:
                          CustomTextStyles.bodyLargeAirbnbCerealAppBlack900_1,
                    ),
                  ),
                  CustomImageView(
                    svgPath: ImageConstant.imgArrowright,
                    height: 24.adaptSize,
                    width: 24.adaptSize,
                  ),
                ],
              ),
              SizedBox(height: 34.v),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 2.v),
                    child: Text(
                      "msg_privacy_policy".tr,
                      style:
                          CustomTextStyles.bodyLargeAirbnbCerealAppBlack900_1,
                    ),
                  ),
                  CustomImageView(
                    svgPath: ImageConstant.imgArrowright,
                    height: 24.adaptSize,
                    width: 24.adaptSize,
                  ),
                ],
              ),
              SizedBox(height: 33.v),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "lbl_version".tr,
                    style: CustomTextStyles.bodyLargeAirbnbCerealAppBlack900_1,
                  ),
                  Text(
                    "lbl_8_6_1".tr,
                    style: CustomTextStyles.bodyLargeAirbnbCerealAppOnError_1,
                  ),
                ],
              ),
              Spacer(),
              CustomElevatedButton(
                text: "lbl_log_out".tr,
                buttonStyle: CustomButtonStyles.fillGray,
                buttonTextStyle: CustomTextStyles.bodyLargeAirbnbCerealApp,
              ),
              SizedBox(height: 17.v),
              CustomElevatedButton(
                text: "lbl_delete_account".tr,
                buttonStyle: CustomButtonStyles.fillDeepOrange,
                buttonTextStyle:
                    CustomTextStyles.bodyLargeAirbnbCerealAppRed400,
              ),
              SizedBox(height: 8.v),
            ],
          ),
        ),
      ),
    );
  }
}
