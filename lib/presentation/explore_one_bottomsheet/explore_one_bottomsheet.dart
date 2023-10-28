import 'controller/explore_one_controller.dart';
import 'package:flutter/material.dart';
import 'package:john_s_application3/core/app_export.dart';
import 'package:john_s_application3/widgets/custom_elevated_button.dart';
import 'package:john_s_application3/widgets/custom_icon_button.dart';

class ExploreOneBottomsheet extends StatelessWidget {
  ExploreOneBottomsheet(
    this.controller, {
    Key? key,
  }) : super(
          key: key,
        );

  ExploreOneController controller;

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: 24.h,
        vertical: 10.v,
      ),
      decoration: AppDecoration.fillWhiteA.copyWith(
        borderRadius: BorderRadiusStyle.customBorderTL20,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Align(
            alignment: Alignment.center,
            child: SizedBox(
              width: 66.h,
              child: Divider(
                color: appTheme.gray30001,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 2.h,
              top: 24.v,
              right: 10.h,
            ),
            child: Row(
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgAvatar1copy132x31,
                  height: 32.v,
                  width: 31.h,
                  radius: BorderRadius.circular(
                    18.h,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 12.h,
                    top: 9.v,
                    bottom: 5.v,
                  ),
                  child: Text(
                    "lbl_jimmy_sullivan2".tr,
                    style: CustomTextStyles.bodyLargeAirbnbCerealApp,
                  ),
                ),
                Spacer(),
                CustomImageView(
                  svgPath: ImageConstant.imgMaximize,
                  height: 16.adaptSize,
                  width: 16.adaptSize,
                  margin: EdgeInsets.symmetric(vertical: 10.v),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 2.h,
              top: 26.v,
            ),
            child: Text(
              "msg_write_your_caption".tr,
              style: CustomTextStyles.bodyMediumOnError,
            ),
          ),
          SizedBox(height: 22.v),
          CustomElevatedButton(
            height: 32.v,
            width: 94.h,
            text: "lbl_share".tr,
            buttonStyle: CustomButtonStyles.fillErrorContainer,
            buttonTextStyle: CustomTextStyles.bodyMediumWhiteA700,
            alignment: Alignment.centerRight,
          ),
          SizedBox(height: 16.v),
          Divider(
            color: appTheme.gray200,
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 1.h,
              top: 15.v,
              bottom: 41.v,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    CustomIconButton(
                      height: 56.adaptSize,
                      width: 56.adaptSize,
                      padding: EdgeInsets.all(16.h),
                      decoration: IconButtonStyleHelper.fillGreen,
                      child: CustomImageView(
                        svgPath: ImageConstant.imgWhatsapp,
                      ),
                    ),
                    SizedBox(height: 9.v),
                    Text(
                      "lbl_whatsapp".tr,
                      style: theme.textTheme.bodySmall,
                    ),
                  ],
                ),
                Column(
                  children: [
                    CustomIconButton(
                      height: 56.adaptSize,
                      width: 56.adaptSize,
                      padding: EdgeInsets.all(16.h),
                      decoration: IconButtonStyleHelper.fillPrimaryContainer,
                      child: CustomImageView(
                        svgPath: ImageConstant.imgFacebook,
                      ),
                    ),
                    SizedBox(height: 8.v),
                    Text(
                      "lbl_facebook".tr,
                      style: theme.textTheme.bodySmall,
                    ),
                  ],
                ),
                Column(
                  children: [
                    CustomIconButton(
                      height: 56.adaptSize,
                      width: 56.adaptSize,
                      padding: EdgeInsets.all(16.h),
                      decoration: IconButtonStyleHelper.fillBlueTL28,
                      child: CustomImageView(
                        svgPath: ImageConstant.imgTwitter,
                      ),
                    ),
                    SizedBox(height: 8.v),
                    Text(
                      "lbl_twitter".tr,
                      style: theme.textTheme.bodySmall,
                    ),
                  ],
                ),
                Column(
                  children: [
                    CustomIconButton(
                      height: 56.adaptSize,
                      width: 56.adaptSize,
                      padding: EdgeInsets.all(16.h),
                      decoration: IconButtonStyleHelper.fillLightGreen,
                      child: CustomImageView(
                        svgPath: ImageConstant.imgGmailoutlined,
                      ),
                    ),
                    SizedBox(height: 10.v),
                    Text(
                      "lbl_message".tr,
                      style: theme.textTheme.bodySmall,
                    ),
                  ],
                ),
                Column(
                  children: [
                    CustomIconButton(
                      height: 56.adaptSize,
                      width: 56.adaptSize,
                      padding: EdgeInsets.all(16.h),
                      decoration: IconButtonStyleHelper.fillGray,
                      child: CustomImageView(
                        svgPath: ImageConstant.imgIconcopylink,
                      ),
                    ),
                    SizedBox(height: 9.v),
                    Text(
                      "lbl_copy_link".tr,
                      style: theme.textTheme.bodySmall,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
