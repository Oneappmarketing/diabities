import 'controller/splash_three_controller.dart';
import 'package:flutter/material.dart';
import 'package:john_s_application3/core/app_export.dart';
import 'package:john_s_application3/widgets/custom_elevated_button.dart';

// ignore_for_file: must_be_immutable
class SplashThreeScreen extends GetWidget<SplashThreeController> {
  const SplashThreeScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.whiteA700,
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 23.h,
            vertical: 51.v,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 1.h),
                child: Row(
                  children: [
                    CustomImageView(
                      svgPath: ImageConstant.imgIconback,
                      height: 24.adaptSize,
                      width: 24.adaptSize,
                    ),
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.only(
                          left: 20.h,
                          top: 9.v,
                          bottom: 9.v,
                        ),
                        child: Container(
                          height: 6.v,
                          width: 284.h,
                          decoration: BoxDecoration(
                            color: appTheme.blue50,
                            borderRadius: BorderRadius.circular(
                              3.h,
                            ),
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(
                              3.h,
                            ),
                            child: LinearProgressIndicator(
                              value: 0.75,
                              backgroundColor: appTheme.blue50,
                              valueColor: AlwaysStoppedAnimation<Color>(
                                appTheme.red400,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: 248.h,
                margin: EdgeInsets.only(
                  left: 1.h,
                  top: 31.v,
                  right: 79.h,
                ),
                child: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "msg_your_blood_sugar2".tr,
                        style: theme.textTheme.headlineSmall,
                      ),
                      TextSpan(
                        text: "lbl_before_meal".tr,
                        style: CustomTextStyles.headlineSmallPrimary,
                      ),
                    ],
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
              Container(
                margin: EdgeInsets.only(
                  left: 1.h,
                  top: 29.v,
                ),
                padding: EdgeInsets.symmetric(
                  horizontal: 20.h,
                  vertical: 17.v,
                ),
                decoration: AppDecoration.outlineGray.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder10,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                        top: 1.v,
                        bottom: 2.v,
                      ),
                      child: Text(
                        "lbl_lowest_value".tr,
                        style: CustomTextStyles.bodyLargeOnError_1,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 4.v),
                      child: Text(
                        "lbl_mg_dl".tr,
                        style: theme.textTheme.bodyLarge,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(
                  left: 1.h,
                  top: 19.v,
                ),
                padding: EdgeInsets.symmetric(
                  horizontal: 20.h,
                  vertical: 17.v,
                ),
                decoration: AppDecoration.outlineGray.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder10,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                        top: 1.v,
                        bottom: 2.v,
                      ),
                      child: Text(
                        "lbl_lowest_value".tr,
                        style: CustomTextStyles.bodyLargeOnError_1,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 4.v),
                      child: Text(
                        "lbl_mg_dl".tr,
                        style: theme.textTheme.bodyLarge,
                      ),
                    ),
                  ],
                ),
              ),
              Spacer(),
              CustomElevatedButton(
                text: "lbl_next".tr,
                margin: EdgeInsets.only(left: 1.h),
                buttonStyle: CustomButtonStyles.none,
                decoration: CustomButtonStyles.gradientPrimaryToGreenDecoration,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
