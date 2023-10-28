import 'controller/splash_four_controller.dart';
import 'package:flutter/material.dart';
import 'package:john_s_application3/core/app_export.dart';
import 'package:john_s_application3/widgets/custom_elevated_button.dart';

// ignore_for_file: must_be_immutable
class SplashFourScreen extends GetWidget<SplashFourController> {
  const SplashFourScreen({Key? key})
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
                    Container(
                      height: 6.v,
                      width: 284.h,
                      margin: EdgeInsets.only(
                        left: 20.h,
                        top: 9.v,
                        bottom: 9.v,
                      ),
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          Align(
                            alignment: Alignment.center,
                            child: SizedBox(
                              width: 284.h,
                              child: Divider(
                                color: appTheme.blue50,
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.center,
                            child: SizedBox(
                              width: 284.h,
                              child: Divider(
                                color: appTheme.red400,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: 254.h,
                margin: EdgeInsets.only(
                  left: 1.h,
                  top: 31.v,
                  right: 73.h,
                ),
                child: Text(
                  "msg_when_do_you_measure".tr,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: theme.textTheme.headlineSmall!.copyWith(
                    height: 1.50,
                  ),
                ),
              ),
              Container(
                width: 283.h,
                margin: EdgeInsets.only(
                  left: 1.h,
                  top: 4.v,
                  right: 44.h,
                ),
                child: Text(
                  "msg_di_will_remind_you".tr,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: CustomTextStyles.bodyMediumOnError,
                ),
              ),
              CustomElevatedButton(
                height: 60.v,
                text: "msg_add_a_reminder".tr,
                margin: EdgeInsets.only(
                  left: 1.h,
                  top: 37.v,
                ),
                buttonStyle: CustomButtonStyles.fillGray,
                buttonTextStyle: theme.textTheme.bodyLarge!,
              ),
              CustomElevatedButton(
                height: 60.v,
                text: "lbl_10_00_pm".tr,
                margin: EdgeInsets.only(
                  left: 1.h,
                  top: 20.v,
                  bottom: 5.v,
                ),
                buttonStyle: CustomButtonStyles.fillGrayTL10,
                buttonTextStyle: theme.textTheme.bodyLarge!,
              ),
            ],
          ),
        ),
        bottomNavigationBar: CustomElevatedButton(
          text: "lbl_get_started".tr,
          margin: EdgeInsets.only(
            left: 24.h,
            right: 24.h,
            bottom: 32.v,
          ),
          buttonStyle: CustomButtonStyles.none,
          decoration: CustomButtonStyles.gradientPrimaryToGreenDecoration,
        ),
      ),
    );
  }
}
