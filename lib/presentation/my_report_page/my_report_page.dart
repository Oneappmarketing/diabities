import 'controller/my_report_controller.dart';
import 'models/my_report_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:john_s_application3/core/app_export.dart';

class MyReportPage extends StatelessWidget {
  MyReportPage({Key? key})
      : super(
          key: key,
        );

  MyReportController controller =
      Get.put(MyReportController(MyReportModel().obs));

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: mediaQueryData.size.width,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    left: 24.h,
                    top: 18.v,
                    right: 24.h,
                  ),
                  child: Column(
                    children: [
                      Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 92.h,
                          vertical: 27.v,
                        ),
                        decoration: AppDecoration.outlineGray3001.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder18,
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(height: 2.v),
                            Text(
                              "msg_avg_blood_glucose".tr,
                              style:
                                  CustomTextStyles.bodyMediumOnPrimaryContainer,
                            ),
                            SizedBox(height: 8.v),
                            RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: "lbl_100".tr,
                                    style: CustomTextStyles
                                        .headlineLargeAirbnbCerealAppPrimary,
                                  ),
                                  TextSpan(
                                    text: "lbl_mg_dl2".tr,
                                    style: CustomTextStyles.bodyLargePrimary,
                                  ),
                                ],
                              ),
                              textAlign: TextAlign.left,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 18.v),
                      Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 14.h,
                          vertical: 16.v,
                        ),
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: fs.Svg(
                              ImageConstant.imgCard7,
                            ),
                            fit: BoxFit.cover,
                          ),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(
                                    top: 3.v,
                                    bottom: 1.v,
                                  ),
                                  child: Text(
                                    "msg_glucose_week_avg".tr,
                                    style: CustomTextStyles
                                        .bodyMediumOnPrimaryContainer,
                                  ),
                                ),
                                CustomImageView(
                                  svgPath:
                                      ImageConstant.imgClockSecondarycontainer,
                                  height: 24.adaptSize,
                                  width: 24.adaptSize,
                                ),
                              ],
                            ),
                            SizedBox(height: 24.v),
                            SizedBox(
                              height: 180.v,
                              width: 298.h,
                              child: Stack(
                                alignment: Alignment.topLeft,
                                children: [
                                  Align(
                                    alignment: Alignment.bottomLeft,
                                    child: Padding(
                                      padding: EdgeInsets.only(left: 24.h),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.end,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsets.only(right: 3.h),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.end,
                                              children: [
                                                Container(
                                                  height: 5.v,
                                                  width: 1.h,
                                                  decoration: BoxDecoration(
                                                    color: appTheme.gray500,
                                                  ),
                                                ),
                                                Container(
                                                  height: 5.v,
                                                  width: 1.h,
                                                  margin: EdgeInsets.only(
                                                      left: 25.h),
                                                  decoration: BoxDecoration(
                                                    color: appTheme.gray500,
                                                  ),
                                                ),
                                                Container(
                                                  height: 5.v,
                                                  width: 1.h,
                                                  margin: EdgeInsets.only(
                                                      left: 36.h),
                                                  decoration: BoxDecoration(
                                                    color: appTheme.gray500,
                                                  ),
                                                ),
                                                Container(
                                                  height: 5.v,
                                                  width: 1.h,
                                                  margin: EdgeInsets.only(
                                                      left: 36.h),
                                                  decoration: BoxDecoration(
                                                    color: appTheme.gray500,
                                                  ),
                                                ),
                                                Container(
                                                  height: 5.v,
                                                  width: 1.h,
                                                  margin: EdgeInsets.only(
                                                      left: 36.h),
                                                  decoration: BoxDecoration(
                                                    color: appTheme.gray500,
                                                  ),
                                                ),
                                                Container(
                                                  height: 5.v,
                                                  width: 1.h,
                                                  margin: EdgeInsets.only(
                                                      left: 36.h),
                                                  decoration: BoxDecoration(
                                                    color: appTheme.gray500,
                                                  ),
                                                ),
                                                Container(
                                                  height: 5.v,
                                                  width: 1.h,
                                                  margin: EdgeInsets.only(
                                                      left: 36.h),
                                                  decoration: BoxDecoration(
                                                    color: appTheme.gray500,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(
                                              left: 19.h,
                                              top: 22.v,
                                            ),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.end,
                                              children: [
                                                Text(
                                                  "lbl_m".tr,
                                                  style: theme
                                                      .textTheme.bodyMedium,
                                                ),
                                                Padding(
                                                  padding: EdgeInsets.only(
                                                      left: 26.h),
                                                  child: Text(
                                                    "lbl_t".tr,
                                                    style: theme
                                                        .textTheme.bodyMedium,
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsets.only(
                                                      left: 25.h),
                                                  child: Text(
                                                    "lbl_w".tr,
                                                    style: theme
                                                        .textTheme.bodyMedium,
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsets.only(
                                                      left: 20.h),
                                                  child: Text(
                                                    "lbl_th".tr,
                                                    style: theme
                                                        .textTheme.bodyMedium,
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsets.only(
                                                      left: 24.h),
                                                  child: Text(
                                                    "lbl_f".tr,
                                                    style: theme
                                                        .textTheme.bodyMedium,
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsets.only(
                                                      left: 29.h),
                                                  child: Text(
                                                    "lbl_s".tr,
                                                    style: theme
                                                        .textTheme.bodyMedium,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.topLeft,
                                    child: Row(
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.only(
                                            top: 4.v,
                                            bottom: 6.v,
                                          ),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.end,
                                            children: [
                                              Align(
                                                alignment: Alignment.center,
                                                child: Text(
                                                  "lbl_15".tr,
                                                  style: theme
                                                      .textTheme.bodyMedium,
                                                ),
                                              ),
                                              SizedBox(height: 19.v),
                                              Text(
                                                "lbl_10".tr,
                                                style:
                                                    theme.textTheme.bodyMedium,
                                              ),
                                              Padding(
                                                padding: EdgeInsets.only(
                                                  top: 19.v,
                                                  right: 1.h,
                                                ),
                                                child: Text(
                                                  "lbl_5".tr,
                                                  style: theme
                                                      .textTheme.bodyMedium,
                                                ),
                                              ),
                                              SizedBox(height: 19.v),
                                              Text(
                                                "lbl_0".tr,
                                                style:
                                                    theme.textTheme.bodyMedium,
                                              ),
                                            ],
                                          ),
                                        ),
                                        Container(
                                          height: 146.v,
                                          width: 6.h,
                                          margin: EdgeInsets.only(left: 3.h),
                                          child: Stack(
                                            alignment: Alignment.bottomCenter,
                                            children: [
                                              Align(
                                                alignment:
                                                    Alignment.bottomCenter,
                                                child: Container(
                                                  height: 1.v,
                                                  width: 6.h,
                                                  margin: EdgeInsets.only(
                                                      bottom: 10.v),
                                                  decoration: BoxDecoration(
                                                    color: appTheme.gray500,
                                                  ),
                                                ),
                                              ),
                                              Align(
                                                alignment:
                                                    Alignment.bottomCenter,
                                                child: Container(
                                                  height: 1.v,
                                                  width: 6.h,
                                                  margin: EdgeInsets.only(
                                                      bottom: 49.v),
                                                  decoration: BoxDecoration(
                                                    color: appTheme.gray500,
                                                  ),
                                                ),
                                              ),
                                              Align(
                                                alignment: Alignment.topCenter,
                                                child: Container(
                                                  height: 1.v,
                                                  width: 6.h,
                                                  margin: EdgeInsets.only(
                                                      top: 56.v),
                                                  decoration: BoxDecoration(
                                                    color: appTheme.gray500,
                                                  ),
                                                ),
                                              ),
                                              Align(
                                                alignment: Alignment.topCenter,
                                                child: Container(
                                                  height: 1.v,
                                                  width: 6.h,
                                                  margin: EdgeInsets.only(
                                                      top: 17.v),
                                                  decoration: BoxDecoration(
                                                    color: appTheme.gray500,
                                                  ),
                                                ),
                                              ),
                                              Align(
                                                alignment:
                                                    Alignment.centerRight,
                                                child: SizedBox(
                                                  height: 146.v,
                                                  child: VerticalDivider(
                                                    width: 1.h,
                                                    thickness: 1.v,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.bottomRight,
                                    child: Padding(
                                      padding: EdgeInsets.only(right: 13.h),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          CustomImageView(
                                            svgPath: ImageConstant.imgSignal,
                                            height: 79.v,
                                            width: 21.h,
                                          ),
                                          Align(
                                            alignment: Alignment.centerRight,
                                            child: Container(
                                              height: 5.v,
                                              width: 1.h,
                                              margin: EdgeInsets.only(
                                                top: 1.v,
                                                right: 8.h,
                                              ),
                                              decoration: BoxDecoration(
                                                color: appTheme.gray500,
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(
                                              left: 1.h,
                                              top: 21.v,
                                            ),
                                            child: Text(
                                              "lbl_su".tr,
                                              style: theme.textTheme.bodyMedium,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.topLeft,
                                    child: Padding(
                                      padding: EdgeInsets.only(
                                        left: 38.h,
                                        top: 20.v,
                                      ),
                                      child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.end,
                                        children: [
                                          CustomImageView(
                                            svgPath: ImageConstant.imgSignal,
                                            height: 75.v,
                                            width: 21.h,
                                            margin: EdgeInsets.only(top: 37.v),
                                          ),
                                          CustomImageView(
                                            svgPath: ImageConstant.imgChart2,
                                            height: 113.v,
                                            width: 20.h,
                                            margin: EdgeInsets.only(left: 18.h),
                                          ),
                                          CustomImageView(
                                            svgPath: ImageConstant.imgSignal,
                                            height: 50.v,
                                            width: 21.h,
                                            margin: EdgeInsets.only(
                                              left: 17.h,
                                              top: 62.v,
                                            ),
                                          ),
                                          CustomImageView(
                                            svgPath: ImageConstant.imgSignal,
                                            height: 73.v,
                                            width: 21.h,
                                            margin: EdgeInsets.only(
                                              left: 16.h,
                                              top: 37.v,
                                            ),
                                          ),
                                          Container(
                                            height: 100.v,
                                            width: 21.h,
                                            margin: EdgeInsets.only(
                                              left: 16.h,
                                              top: 13.v,
                                            ),
                                            decoration: BoxDecoration(
                                              color: appTheme.blue50,
                                              borderRadius:
                                                  BorderRadius.vertical(
                                                top: Radius.circular(6.h),
                                              ),
                                              border: Border.all(
                                                color: appTheme.whiteA700,
                                                width: 1.h,
                                                strokeAlign: strokeAlignOutside,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.bottomRight,
                                    child: Padding(
                                      padding: EdgeInsets.only(bottom: 45.v),
                                      child: SizedBox(
                                        width: 280.h,
                                        child: Divider(),
                                      ),
                                    ),
                                  ),
                                  CustomImageView(
                                    svgPath:
                                        ImageConstant.imgSignalErrorcontainer,
                                    height: 57.v,
                                    width: 21.h,
                                    alignment: Alignment.bottomRight,
                                    margin: EdgeInsets.only(
                                      right: 50.h,
                                      bottom: 45.v,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 18.v),
                      Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 14.h,
                          vertical: 16.v,
                        ),
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: fs.Svg(
                              ImageConstant.imgCard7,
                            ),
                            fit: BoxFit.cover,
                          ),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(
                                    top: 3.v,
                                    bottom: 1.v,
                                  ),
                                  child: Text(
                                    "lbl_pills_week_avg".tr,
                                    style: CustomTextStyles
                                        .bodyMediumOnPrimaryContainer,
                                  ),
                                ),
                                CustomImageView(
                                  svgPath:
                                      ImageConstant.imgClockSecondarycontainer,
                                  height: 24.adaptSize,
                                  width: 24.adaptSize,
                                ),
                              ],
                            ),
                            SizedBox(height: 24.v),
                            SizedBox(
                              height: 180.v,
                              width: 298.h,
                              child: Stack(
                                alignment: Alignment.topLeft,
                                children: [
                                  Align(
                                    alignment: Alignment.bottomLeft,
                                    child: Padding(
                                      padding: EdgeInsets.only(left: 24.h),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.end,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsets.only(right: 3.h),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.end,
                                              children: [
                                                Container(
                                                  height: 5.v,
                                                  width: 1.h,
                                                  decoration: BoxDecoration(
                                                    color: appTheme.gray500,
                                                  ),
                                                ),
                                                Container(
                                                  height: 5.v,
                                                  width: 1.h,
                                                  margin: EdgeInsets.only(
                                                      left: 25.h),
                                                  decoration: BoxDecoration(
                                                    color: appTheme.gray500,
                                                  ),
                                                ),
                                                Container(
                                                  height: 5.v,
                                                  width: 1.h,
                                                  margin: EdgeInsets.only(
                                                      left: 36.h),
                                                  decoration: BoxDecoration(
                                                    color: appTheme.gray500,
                                                  ),
                                                ),
                                                Container(
                                                  height: 5.v,
                                                  width: 1.h,
                                                  margin: EdgeInsets.only(
                                                      left: 36.h),
                                                  decoration: BoxDecoration(
                                                    color: appTheme.gray500,
                                                  ),
                                                ),
                                                Container(
                                                  height: 5.v,
                                                  width: 1.h,
                                                  margin: EdgeInsets.only(
                                                      left: 36.h),
                                                  decoration: BoxDecoration(
                                                    color: appTheme.gray500,
                                                  ),
                                                ),
                                                Container(
                                                  height: 5.v,
                                                  width: 1.h,
                                                  margin: EdgeInsets.only(
                                                      left: 36.h),
                                                  decoration: BoxDecoration(
                                                    color: appTheme.gray500,
                                                  ),
                                                ),
                                                Container(
                                                  height: 5.v,
                                                  width: 1.h,
                                                  margin: EdgeInsets.only(
                                                      left: 36.h),
                                                  decoration: BoxDecoration(
                                                    color: appTheme.gray500,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(
                                              left: 19.h,
                                              top: 20.v,
                                            ),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.end,
                                              children: [
                                                Text(
                                                  "lbl_m".tr,
                                                  textAlign: TextAlign.center,
                                                  style: theme
                                                      .textTheme.bodyMedium,
                                                ),
                                                Padding(
                                                  padding: EdgeInsets.only(
                                                      left: 26.h),
                                                  child: Text(
                                                    "lbl_t".tr,
                                                    textAlign: TextAlign.center,
                                                    style: theme
                                                        .textTheme.bodyMedium,
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsets.only(
                                                      left: 25.h),
                                                  child: Text(
                                                    "lbl_w".tr,
                                                    textAlign: TextAlign.center,
                                                    style: theme
                                                        .textTheme.bodyMedium,
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsets.only(
                                                      left: 20.h),
                                                  child: Text(
                                                    "lbl_th".tr,
                                                    textAlign: TextAlign.center,
                                                    style: theme
                                                        .textTheme.bodyMedium,
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsets.only(
                                                      left: 24.h),
                                                  child: Text(
                                                    "lbl_f".tr,
                                                    textAlign: TextAlign.center,
                                                    style: theme
                                                        .textTheme.bodyMedium,
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsets.only(
                                                      left: 29.h),
                                                  child: Text(
                                                    "lbl_s".tr,
                                                    textAlign: TextAlign.center,
                                                    style: theme
                                                        .textTheme.bodyMedium,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.topLeft,
                                    child: Row(
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.only(
                                            top: 4.v,
                                            bottom: 6.v,
                                          ),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.end,
                                            children: [
                                              Align(
                                                alignment: Alignment.center,
                                                child: Text(
                                                  "lbl_15".tr,
                                                  style: theme
                                                      .textTheme.bodyMedium,
                                                ),
                                              ),
                                              SizedBox(height: 19.v),
                                              Text(
                                                "lbl_10".tr,
                                                style:
                                                    theme.textTheme.bodyMedium,
                                              ),
                                              Padding(
                                                padding: EdgeInsets.only(
                                                  top: 15.v,
                                                  right: 1.h,
                                                ),
                                                child: Text(
                                                  "lbl_5".tr,
                                                  textAlign: TextAlign.center,
                                                  style: theme
                                                      .textTheme.bodyMedium,
                                                ),
                                              ),
                                              SizedBox(height: 22.v),
                                              Text(
                                                "lbl_0".tr,
                                                textAlign: TextAlign.center,
                                                style:
                                                    theme.textTheme.bodyMedium,
                                              ),
                                            ],
                                          ),
                                        ),
                                        Container(
                                          height: 146.v,
                                          width: 6.h,
                                          margin: EdgeInsets.only(left: 3.h),
                                          child: Stack(
                                            alignment: Alignment.bottomCenter,
                                            children: [
                                              Align(
                                                alignment:
                                                    Alignment.bottomCenter,
                                                child: Container(
                                                  height: 1.v,
                                                  width: 6.h,
                                                  margin: EdgeInsets.only(
                                                      bottom: 10.v),
                                                  decoration: BoxDecoration(
                                                    color: appTheme.gray500,
                                                  ),
                                                ),
                                              ),
                                              Align(
                                                alignment:
                                                    Alignment.bottomCenter,
                                                child: Container(
                                                  height: 1.v,
                                                  width: 6.h,
                                                  margin: EdgeInsets.only(
                                                      bottom: 49.v),
                                                  decoration: BoxDecoration(
                                                    color: appTheme.gray500,
                                                  ),
                                                ),
                                              ),
                                              Align(
                                                alignment: Alignment.topCenter,
                                                child: Container(
                                                  height: 1.v,
                                                  width: 6.h,
                                                  margin: EdgeInsets.only(
                                                      top: 56.v),
                                                  decoration: BoxDecoration(
                                                    color: appTheme.gray500,
                                                  ),
                                                ),
                                              ),
                                              Align(
                                                alignment: Alignment.topCenter,
                                                child: Container(
                                                  height: 1.v,
                                                  width: 6.h,
                                                  margin: EdgeInsets.only(
                                                      top: 17.v),
                                                  decoration: BoxDecoration(
                                                    color: appTheme.gray500,
                                                  ),
                                                ),
                                              ),
                                              Align(
                                                alignment:
                                                    Alignment.centerRight,
                                                child: SizedBox(
                                                  height: 146.v,
                                                  child: VerticalDivider(
                                                    width: 1.h,
                                                    thickness: 1.v,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.bottomRight,
                                    child: Padding(
                                      padding: EdgeInsets.only(right: 13.h),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          CustomImageView(
                                            svgPath: ImageConstant
                                                .imgSignalDeepPurple50,
                                            height: 79.v,
                                            width: 21.h,
                                          ),
                                          Align(
                                            alignment: Alignment.centerRight,
                                            child: Container(
                                              height: 5.v,
                                              width: 1.h,
                                              margin: EdgeInsets.only(
                                                top: 1.v,
                                                right: 8.h,
                                              ),
                                              decoration: BoxDecoration(
                                                color: appTheme.gray500,
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(
                                              left: 1.h,
                                              top: 20.v,
                                            ),
                                            child: Text(
                                              "lbl_su".tr,
                                              textAlign: TextAlign.center,
                                              style: theme.textTheme.bodyMedium,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.topLeft,
                                    child: Padding(
                                      padding: EdgeInsets.only(
                                        left: 38.h,
                                        top: 20.v,
                                      ),
                                      child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.end,
                                        children: [
                                          CustomImageView(
                                            svgPath: ImageConstant
                                                .imgSignalDeepPurple50,
                                            height: 75.v,
                                            width: 21.h,
                                            margin: EdgeInsets.only(top: 37.v),
                                          ),
                                          CustomImageView(
                                            svgPath: ImageConstant
                                                .imgChart2DeepPurple50,
                                            height: 113.v,
                                            width: 20.h,
                                            margin: EdgeInsets.only(left: 18.h),
                                          ),
                                          CustomImageView(
                                            svgPath: ImageConstant
                                                .imgSignalDeepPurple50,
                                            height: 50.v,
                                            width: 21.h,
                                            margin: EdgeInsets.only(
                                              left: 17.h,
                                              top: 62.v,
                                            ),
                                          ),
                                          CustomImageView(
                                            svgPath: ImageConstant
                                                .imgSignalDeepPurple50,
                                            height: 73.v,
                                            width: 21.h,
                                            margin: EdgeInsets.only(
                                              left: 16.h,
                                              top: 37.v,
                                            ),
                                          ),
                                          Container(
                                            height: 100.v,
                                            width: 21.h,
                                            margin: EdgeInsets.only(
                                              left: 16.h,
                                              top: 13.v,
                                            ),
                                            decoration: BoxDecoration(
                                              color: appTheme.deepPurple50,
                                              borderRadius:
                                                  BorderRadius.vertical(
                                                top: Radius.circular(6.h),
                                              ),
                                              border: Border.all(
                                                color: appTheme.whiteA700,
                                                width: 1.h,
                                                strokeAlign: strokeAlignOutside,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.bottomRight,
                                    child: Padding(
                                      padding: EdgeInsets.only(bottom: 45.v),
                                      child: SizedBox(
                                        width: 280.h,
                                        child: Divider(),
                                      ),
                                    ),
                                  ),
                                  CustomImageView(
                                    svgPath:
                                        ImageConstant.imgSignalDeepPurpleA100,
                                    height: 57.v,
                                    width: 21.h,
                                    alignment: Alignment.bottomRight,
                                    margin: EdgeInsets.only(
                                      right: 50.h,
                                      bottom: 45.v,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
