import 'controller/on_boarding_one_controller.dart';
import 'package:flutter/material.dart';
import 'package:john_s_application3/core/app_export.dart';
import 'package:john_s_application3/widgets/custom_elevated_button.dart';
import 'package:john_s_application3/widgets/custom_icon_button.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

// ignore_for_file: must_be_immutable
class OnBoardingOneScreen extends GetWidget<OnBoardingOneController> {
  const OnBoardingOneScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: theme.colorScheme.onPrimaryContainer,
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 624.v,
                width: double.maxFinite,
                child: Stack(
                  alignment: Alignment.bottomLeft,
                  children: [
                    Align(
                      alignment: Alignment.center,
                      child: SizedBox(
                        height: 624.v,
                        width: double.maxFinite,
                        child: Stack(
                          alignment: Alignment.centerLeft,
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.imgImage269,
                              height: 624.v,
                              width: 375.h,
                              alignment: Alignment.center,
                            ),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                padding: EdgeInsets.only(left: 32.h),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    CustomIconButton(
                                      height: 66.adaptSize,
                                      width: 66.adaptSize,
                                      padding: EdgeInsets.all(15.h),
                                      child: CustomImageView(
                                        imagePath: ImageConstant.imgLogodi,
                                      ),
                                    ),
                                    SizedBox(height: 312.v),
                                    SizedBox(
                                      width: 258.h,
                                      child: Text(
                                        "msg_24_7_medical_help".tr,
                                        maxLines: 2,
                                        overflow: TextOverflow.ellipsis,
                                        style: theme.textTheme.headlineLarge,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomLeft,
                      child: Container(
                        width: 211.h,
                        margin: EdgeInsets.only(left: 32.h),
                        child: Text(
                          "msg_eating_a_healthy".tr,
                          maxLines: 3,
                          overflow: TextOverflow.ellipsis,
                          style: CustomTextStyles.bodyMediumWhiteA700.copyWith(
                            height: 1.50,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 12.v,
                margin: EdgeInsets.only(
                  left: 32.h,
                  top: 34.v,
                ),
                child: AnimatedSmoothIndicator(
                  activeIndex: 0,
                  count: 3,
                  effect: ScrollingDotsEffect(
                    spacing: 12,
                    activeDotColor: appTheme.whiteA700,
                    dotColor: appTheme.whiteA700.withOpacity(0.46),
                    dotHeight: 12.v,
                    dotWidth: 12.h,
                  ),
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: Padding(
                  padding: EdgeInsets.fromLTRB(32.h, 28.v, 32.h, 5.v),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                          top: 14.v,
                          bottom: 11.v,
                        ),
                        child: Text(
                          "lbl_skip".tr,
                          style: theme.textTheme.titleLarge,
                        ),
                      ),
                      CustomElevatedButton(
                        width: 134.h,
                        text: "lbl_get_started".tr,
                        buttonStyle: CustomButtonStyles.none,
                        decoration:
                            CustomButtonStyles.gradientPrimaryToGreenDecoration,
                        buttonTextStyle: CustomTextStyles.bodyMediumWhiteA700,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
